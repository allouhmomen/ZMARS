CLASS zmars_cl_ve_cuscondgroup DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_sadl_exit.
    INTERFACES if_sadl_exit_calc_element_read.
    INTERFACES if_sadl_exit_filter_transform.
ENDCLASS.


CLASS zmars_cl_ve_cuscondgroup IMPLEMENTATION.
  METHOD if_sadl_exit_calc_element_read~calculate.
    CHECK it_original_data IS NOT INITIAL.

    DATA lt_calculated_data TYPE STANDARD TABLE OF C_SalesOrderManage WITH DEFAULT KEY.
    MOVE-CORRESPONDING it_original_data TO lt_calculated_data.

    LOOP AT lt_calculated_data ASSIGNING FIELD-SYMBOL(<ls_calculated_data>).

      SELECT SINGLE FROM I_SalesDocument
        FIELDS CustomerConditionGroup1, CustomerConditionGroup2, CustomerConditionGroup3
        WHERE SalesDocument = @<ls_calculated_data>-SalesOrder
        INTO @DATA(ls_condition_groups).

      <ls_calculated_data>-ZCusCondGroup1 = ls_condition_groups-CustomerConditionGroup1.
      <ls_calculated_data>-ZCusCondGroup2 = ls_condition_groups-CustomerConditionGroup2.
      <ls_calculated_data>-ZCusCondGroup3 = ls_condition_groups-CustomerConditionGroup3.

      SELECT SINGLE FROM I_CustCndnGroupValueHelpText
        FIELDS CustomerConditionGroupText
        WHERE CustomerConditionGroup = @<ls_calculated_data>-ZCusCondGroup1
        INTO @<ls_calculated_data>-ZCusCondGroupTxt1.

      SELECT SINGLE FROM I_CustCndnGroupValueHelpText
        FIELDS CustomerConditionGroupText
        WHERE CustomerConditionGroup = @<ls_calculated_data>-ZCusCondGroup2
        INTO @<ls_calculated_data>-ZCusCondGroupTxt2.

      SELECT SINGLE FROM I_CustCndnGroupValueHelpText
        FIELDS CustomerConditionGroupText
        WHERE CustomerConditionGroup = @<ls_calculated_data>-ZCusCondGroup3
        INTO @<ls_calculated_data>-ZCusCondGroupTxt3.

    ENDLOOP.

    MOVE-CORRESPONDING lt_calculated_data TO ct_calculated_data.
  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
    IF iv_entity <> 'C_SalesOrderManage'.
      " RAISE EXCEPTION TYPE zcx_calc_exit EXPORTING textid = zcx_calc_exit=>entity_not_known.
    ENDIF.
    IF line_exists( it_requested_calc_elements[ table_line = 'SALESORDER' ] ).
      APPEND 'SALESORDER' TO et_requested_orig_elements.
    ENDIF.
  ENDMETHOD.

  METHOD if_sadl_exit_filter_transform~map_atom.
    IF iv_element <> 'ZCUSCONDGROUP1' OR iv_element <> 'ZCUSCONDGROUP2' OR iv_element <> 'ZCUSCONDGROUP3'.
      " RAISE EXCEPTION TYPE zcx_filter_exit EXPORTING textid = zcx_filter_exit=>element_not_expected.
    ENDIF.

    DATA(lo_cfac) = cl_sadl_cond_prov_factory_pub=>create_simple_cond_factory( ).
    DATA(salesorder) = lo_cfac->element( 'SALESORDER' ).

    CASE iv_operator.

      WHEN if_sadl_exit_filter_transform~co_operator-equals.

        IF iv_element = 'ZCUSCONDGROUP1'.

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup1 = @iv_value
            INTO TABLE @DATA(lt_results).

        ELSEIF iv_element = 'ZCUSCONDGROUP2'.

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup2 = @iv_value
            INTO TABLE @lt_results.

        ELSEIF iv_element = 'ZCUSCONDGROUP3'.

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup3 = @iv_value
            INTO TABLE @lt_results.

        ENDIF.

      WHEN if_sadl_exit_filter_transform~co_operator-less_than.

      " not coded yet

      WHEN if_sadl_exit_filter_transform~co_operator-greater_than.
        " not coded yet

      WHEN if_sadl_exit_filter_transform~co_operator-is_null.

        IF iv_element = 'ZCUSCONDGROUP1'.

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup1 IS NULL
            INTO TABLE @lt_results.

        ELSEIF iv_element = 'ZCUSCONDGROUP2'.

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup2 IS NULL
            INTO TABLE @lt_results.

        ELSEIF iv_element = 'ZCUSCONDGROUP3'.

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup3 IS NULL
            INTO TABLE @lt_results.

        ENDIF.

      WHEN if_sadl_exit_filter_transform~co_operator-covers_pattern.

        DATA lr_conditiongroup1 TYPE RANGE OF kdkg1.
        DATA lr_conditiongroup2 TYPE RANGE OF kdkg2.
        DATA lr_conditiongroup3 TYPE RANGE OF kdkg3.

        IF iv_element = 'ZCUSCONDGROUP1'.

          lr_conditiongroup1 = VALUE #( ( sign = 'I' option = 'CP' low = iv_value ) ).

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup1 IN @lr_conditiongroup1
            INTO TABLE @lt_results.

        ELSEIF iv_element = 'ZCUSCONDGROUP2'.

          lr_conditiongroup2 = VALUE #( ( sign = 'I' option = 'CP' low = iv_value ) ).

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup2 IN @lr_conditiongroup2
            INTO TABLE @lt_results.

        ELSEIF iv_element = 'ZCUSCONDGROUP3'.

          lr_conditiongroup3 = VALUE #( ( sign = 'I' option = 'CP' low = iv_value ) ).

          SELECT FROM I_salesdocument
            FIELDS SalesDocument
            WHERE CustomerConditionGroup3 IN @lr_conditiongroup3
            INTO TABLE @lt_results.

        ENDIF.

    ENDCASE.

    " loop at results SalesOrders to filter entity by it.

    LOOP AT lt_results INTO DATA(ls_result).
      IF sy-tabix = 1.
        ro_condition = salesorder->equals( ls_result-SalesDocument ).
      ELSE.
        ro_condition = ro_condition->or( salesorder->equals( ls_result-SalesDocument )  ).
      ENDIF.

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
