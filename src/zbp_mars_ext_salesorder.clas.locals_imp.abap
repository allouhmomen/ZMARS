CLASS lhc_SalesOrder DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR SalesOrder RESULT result.
    METHODS changecuscondgroups FOR MODIFY
      IMPORTING keys FOR ACTION salesorder~changecuscondgroups RESULT result.

ENDCLASS.


CLASS lhc_SalesOrder IMPLEMENTATION.
  METHOD get_instance_features.
    READ ENTITIES OF I_SalesOrderTP
         ENTITY SalesOrder
         FIELDS ( SalesOrder )
         WITH CORRESPONDING #( keys )
         RESULT DATA(lt_so_customer_results).

    result = VALUE #( FOR ls_result IN lt_so_customer_results
                      ( %tky                                  = ls_result-%tky
                        %features-%action-ChangeCusCondGroups = COND #( WHEN ls_result IS INITIAL
                                                                        THEN if_abap_behv=>fc-o-disabled
                                                                        ELSE if_abap_behv=>fc-o-enabled  ) ) ).
  ENDMETHOD.

  METHOD ChangeCusCondGroups.
    DATA l_inst   TYPE REF TO zmars_cl_so_customercondgroup.
    DATA l_in_tab TYPE cl_abap_parallel=>t_in_inst_tab.

    " Collect list of tasks to be executed in ABAP Parallel
    LOOP AT keys INTO DATA(ls_input).
      APPEND NEW zmars_cl_so_customercondgroup( VALUE #( salesorder = ls_input-SalesOrder
                                                         cstcndgrp1 = ls_input-%param-CustomerConditionGroup1
                                                         cstcndgrp2 = ls_input-%param-CustomerConditionGroup2
                                                         cstcndgrp3 = ls_input-%param-CustomerConditionGroup3 ) ) TO l_in_tab.
    ENDLOOP.

    " Run ABAP Parallel for all the change task instances
    DATA(l_ref) = NEW cl_abap_parallel( ).
    l_ref->run_inst( EXPORTING p_in_tab  = l_in_tab
                     IMPORTING p_out_tab = DATA(l_out_tab) ).

    " Map the return results to action reported
    LOOP AT l_out_tab ASSIGNING FIELD-SYMBOL(<l_out>) WHERE inst IS NOT INITIAL.
      l_inst ?= <l_out>-inst.
      " use result in L_INST->RESULT.
      DATA(change_result) = l_inst->result.

      IF line_exists( keys[ SalesOrder = change_result-salesorder ]  ).
        DATA(proccessed_key) = keys[ SalesOrder = change_result-salesorder ].
      ENDIF.

      IF proccessed_key IS INITIAL.
        CONTINUE.
      ENDIF.

      IF change_result-change_status = 'E'. " when Error change condition group

        APPEND VALUE #( %tky                        = CORRESPONDING #( proccessed_key )
                        %action-ChangeCusCondGroups = if_abap_behv=>mk-on ) TO failed-salesorder.

        APPEND VALUE #(
            %tky                        = CORRESPONDING #( proccessed_key )
            %action-ChangeCusCondGroups = if_abap_behv=>mk-on
            %state_area                 = 'SACusCondGroups'
            %msg                        = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                 text     = change_result-return_msg ) ) TO reported-salesorder.

      ELSEIF change_result-change_status = 'S'. " When success change condition group

        APPEND VALUE #(
            %tky                        = CORRESPONDING #( proccessed_key )
            %action-ChangeCusCondGroups = if_abap_behv=>mk-on
            %state_area                 = 'SACusCondGroups'
            %msg                        = new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                                 text     = change_result-return_msg ) ) TO reported-salesorder.

      ENDIF.

    ENDLOOP.

    " Fill self result to refresh
    READ ENTITIES OF R_SalesOrderTP IN LOCAL MODE
         ENTITY salesorder
         ALL FIELDS WITH
         CORRESPONDING #( keys )
         RESULT DATA(lt_salesorder).

    result = VALUE #( FOR salesorder IN lt_salesorder
                      ( %tky   = salesorder-%tky
                        %param = CORRESPONDING #( salesorder ) ) ).
  ENDMETHOD.
ENDCLASS.


CLASS lsc_R_SALESORDERTP DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.
    METHODS cleanup_finalize REDEFINITION.

    METHODS map_messages     REDEFINITION.

ENDCLASS.


CLASS lsc_R_SALESORDERTP IMPLEMENTATION.
  METHOD cleanup_finalize.
  ENDMETHOD.

  METHOD map_messages.
  ENDMETHOD.
ENDCLASS.
