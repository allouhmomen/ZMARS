CLASS zmars_cl_so_customercondgroup DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_abap_parallel.

    TYPES: BEGIN OF ty_input_SO_condition_groups,
             salesorder TYPE zmars_if_sochange=>bapisdkey-doc_number,
             cstcndgrp1 TYPE zmars_if_sochange=>bapisdh1-cstcndgrp1,
             cstcndgrp2 TYPE zmars_if_sochange=>bapisdh1-cstcndgrp2,
             cstcndgrp3 TYPE zmars_if_sochange=>bapisdh1-cstcndgrp3,
           END OF ty_input_SO_condition_groups.

    TYPES: BEGIN OF ty_result_SO_condition_groups,
             salesorder    TYPE zmars_if_sochange=>bapisdkey-doc_number,
             change_status TYPE c length 1, " fill it with S for success or E for Error
             return_msg    TYPE string,
           END OF ty_result_SO_condition_groups.

    DATA input  TYPE ty_input_SO_condition_groups.

    DATA result TYPE ty_result_SO_condition_groups.

    METHODS constructor IMPORTING p_input TYPE ty_input_SO_condition_groups.
ENDCLASS.


CLASS zmars_cl_so_customercondgroup IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    input = p_input.
  ENDMETHOD.

  METHOD if_abap_parallel~do.
    " Change one sales order customer condition groups
    " and return result

    DATA dest              TYPE rfcdest.
    DATA bapi_returns      TYPE bapirettab.
    DATA returned_messages TYPE string.

    DATA SalesOrder        TYPE zmars_if_sochange=>bapisdkey-doc_number.
    DATA order_header_in   TYPE zmars_if_sochange=>bapisdh1.
    DATA order_header_inx  TYPE zmars_if_sochange=>bapisdh1x.

    DATA(so_change_class) = zmars_clf_sochange=>create_instance( ).

    dest = 'NONE'.
    SalesOrder = input-salesorder.
    order_header_in = VALUE #( cstcndgrp1 = input-cstcndgrp1
                               cstcndgrp2 = input-cstcndgrp2
                               cstcndgrp3 = input-cstcndgrp3 ).
    order_header_inx = VALUE #( updateflag = 'U'
                                cstcndgrp1 = 'X'
                                cstcndgrp2 = 'X'
                                cstcndgrp3 = 'X' ).

    TRY.

        so_change_class->bapi_salesorder_change( EXPORTING _dest_           = dest
                                                           salesdocument    = SalesOrder
                                                           order_header_in  = order_header_in
                                                           order_header_inx = order_header_inx
                                                 CHANGING  return           = bapi_returns ).

      CATCH cx_aco_application_exception
            cx_aco_communication_failure
            cx_aco_system_failure INTO DATA(call_wrapper_exception).
        " handle exception

        result = VALUE #( salesorder    = input-salesorder
                          change_status = 'E'
                          return_msg    = call_wrapper_exception->get_text( ) ).

        RETURN.
    ENDTRY.

    LOOP AT bapi_returns INTO DATA(ls_bapi_returns).
      returned_messages = |{ returned_messages }{ ls_bapi_returns-message }/n\n|.
    ENDLOOP.

    IF line_exists( bapi_returns[ type = 'E' ] ).
      " error
      result = VALUE #( salesorder    = input-salesorder
                        change_status = 'E'
                        return_msg    = returned_messages ).
      RETURN.

    ELSE.
      " success
      result = VALUE #( salesorder    = input-salesorder
                        change_status = 'S'
                        return_msg    = returned_messages ).
    ENDIF.

    DATA commit_return TYPE bapiret2.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT' DESTINATION dest
      EXPORTING wait   = 'X'
      IMPORTING return = commit_return.

    IF commit_return IS NOT INITIAL AND commit_return-type = 'E'.
      result = VALUE #( salesorder    = input-salesorder
                        change_status = 'E'
                        return_msg    = |Error commiting the change to VBKD.| ).
    ELSE.

      " commit success

    ENDIF.
  ENDMETHOD.
ENDCLASS.
