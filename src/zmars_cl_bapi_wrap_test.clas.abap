CLASS zmars_cl_bapi_wrap_test DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zmars_cl_bapi_wrap_test IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA dest             TYPE rfcdest.

    DATA bapi_returns     TYPE bapirettab.

    DATA SalesOrder       TYPE zmars_if_sochange=>bapisdkey-doc_number.
    DATA order_header_in  TYPE zmars_if_sochange=>bapisdh1.
    DATA order_header_inx TYPE zmars_if_sochange=>bapisdh1x.

    DATA(so_change_class) = zmars_clf_sochange=>create_instance( ).

    dest = 'NONE'.

    SalesOrder = '0200000001'.
    order_header_in = VALUE #( cstcndgrp2 = '01' ).
    order_header_inx = VALUE #( updateflag = 'U'
                                cstcndgrp2 = 'X' ).

    TRY.

        so_change_class->bapi_salesorder_change( EXPORTING _dest_           = dest
                                                           salesdocument    = SalesOrder
                                                           order_header_in  = order_header_in
                                                           order_header_inx = order_header_inx
                                                 CHANGING  return           = bapi_returns ).

        out->write( |Sales Order ( { SalesOrder } ) customer condition group changes successfully.| ).
        out->write( |\n\n| ).
        out->write( bapi_returns ).

        DATA commit_return TYPE bapiret2.
        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT' DESTINATION dest
          EXPORTING
            wait   = 'X'
          IMPORTING
            return = commit_return.

        IF commit_return IS NOT INITIAL.
          out->write( |\n\n| ).
          out->write( commit_return ).
        ENDIF.

      CATCH cx_aco_application_exception
            cx_aco_communication_failure
            cx_aco_system_failure INTO DATA(call_wrapper_exception).
        " handle exception
        out->write( |Exception : { call_wrapper_exception->get_text( ) }| ).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
