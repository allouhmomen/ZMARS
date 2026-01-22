CLASS zmars_cl_sochange DEFINITION
  PUBLIC
  CREATE PRIVATE

  GLOBAL FRIENDS zmars_clf_sochange .

  PUBLIC SECTION.

    INTERFACES if_aco_proxy .
    INTERFACES zmars_if_sochange .
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS call_bapi_salesorder_change
      IMPORTING
        !behave_when_error     TYPE zmars_if_sochange~char1 DEFAULT space
        !int_number_assignment TYPE zmars_if_sochange~char1 DEFAULT space
        !logic_switch          TYPE zmars_if_sochange~bapisdls OPTIONAL
        !no_dequeue_all        TYPE zmars_if_sochange~char1 DEFAULT space
        !no_status_buf_init    TYPE zmars_if_sochange~char1 DEFAULT space
        !order_header_in       TYPE zmars_if_sochange~bapisdh1 OPTIONAL
        !order_header_inx      TYPE zmars_if_sochange~bapisdh1x
        !salesdocument         TYPE vbeln_va
        !simulation            TYPE zmars_if_sochange~char1 OPTIONAL
        !_dest_                TYPE rfcdest DEFAULT 'NONE'
      CHANGING
        !conditions_in         TYPE zmars_if_sochange~_bapicond OPTIONAL
        !conditions_inx        TYPE zmars_if_sochange~_bapicondx OPTIONAL
        !extensionex           TYPE zmars_if_sochange~_bapiparex OPTIONAL
        !extensionin           TYPE zmars_if_sochange~_bapiparex OPTIONAL
        !nfmetallitms          TYPE zmars_if_sochange~_/nfm/bapidocitm OPTIONAL
        !order_cfgs_blob       TYPE zmars_if_sochange~_bapicublb OPTIONAL
        !order_cfgs_inst       TYPE zmars_if_sochange~_bapicuins OPTIONAL
        !order_cfgs_part_of    TYPE zmars_if_sochange~_bapicuprt OPTIONAL
        !order_cfgs_ref        TYPE zmars_if_sochange~_bapicucfg OPTIONAL
        !order_cfgs_refinst    TYPE zmars_if_sochange~_bapicuref OPTIONAL
        !order_cfgs_value      TYPE zmars_if_sochange~_bapicuval OPTIONAL
        !order_cfgs_vk         TYPE zmars_if_sochange~_bapicuvk OPTIONAL
        !order_item_in         TYPE zmars_if_sochange~_bapisditm OPTIONAL
        !order_item_inx        TYPE zmars_if_sochange~_bapisditmx OPTIONAL
        !order_keys            TYPE zmars_if_sochange~_bapisdkey OPTIONAL
        !order_text            TYPE zmars_if_sochange~_bapisdtext OPTIONAL
        !partneraddresses      TYPE zmars_if_sochange~_bapiaddr1 OPTIONAL
        !partnerchanges        TYPE zmars_if_sochange~_bapiparnrc OPTIONAL
        !partners              TYPE zmars_if_sochange~_bapiparnr OPTIONAL
        !return                TYPE zmars_if_sochange~_bapiret2
        !schedule_lines        TYPE zmars_if_sochange~_bapischdl OPTIONAL
        !schedule_linesx       TYPE zmars_if_sochange~_bapischdlx OPTIONAL
      RAISING
        cx_aco_application_exception
        cx_aco_communication_failure
        cx_aco_system_failure .
ENDCLASS.



CLASS zmars_cl_sochange IMPLEMENTATION.


  METHOD call_bapi_salesorder_change.
    DATA: _rfc_message_ TYPE aco_proxy_msg_type.
    CALL FUNCTION 'BAPI_SALESORDER_CHANGE' DESTINATION _dest_
      EXPORTING
        behave_when_error     = behave_when_error
        int_number_assignment = int_number_assignment
        logic_switch          = logic_switch
        no_dequeue_all        = no_dequeue_all
        no_status_buf_init    = no_status_buf_init
        order_header_in       = order_header_in
        order_header_inx      = order_header_inx
        salesdocument         = salesdocument
        simulation            = simulation
      TABLES
        conditions_in         = conditions_in
        conditions_inx        = conditions_inx
        extensionex           = extensionex
        extensionin           = extensionin
        nfmetallitms          = nfmetallitms
        order_cfgs_blob       = order_cfgs_blob
        order_cfgs_inst       = order_cfgs_inst
        order_cfgs_part_of    = order_cfgs_part_of
        order_cfgs_ref        = order_cfgs_ref
        order_cfgs_refinst    = order_cfgs_refinst
        order_cfgs_value      = order_cfgs_value
        order_cfgs_vk         = order_cfgs_vk
        order_item_in         = order_item_in
        order_item_inx        = order_item_inx
        order_keys            = order_keys
        order_text            = order_text
        partneraddresses      = partneraddresses
        partnerchanges        = partnerchanges
        partners              = partners
        return                = return
        schedule_lines        = schedule_lines
        schedule_linesx       = schedule_linesx
      EXCEPTIONS
        communication_failure = 1 MESSAGE _rfc_message_
        system_failure        = 2 MESSAGE _rfc_message_
        OTHERS                = 3.
    IF sy-subrc NE 0.
      DATA __sysubrc TYPE sy-subrc.
      DATA __textid TYPE aco_proxy_textid_type.
      __sysubrc = sy-subrc.
      __textid-msgid = sy-msgid.
      __textid-msgno = sy-msgno.
      __textid-attr1 = sy-msgv1.
      __textid-attr2 = sy-msgv2.
      __textid-attr3 = sy-msgv3.
      __textid-attr4 = sy-msgv4.
      CASE __sysubrc.
        WHEN 1 .
          RAISE EXCEPTION TYPE cx_aco_communication_failure
            EXPORTING
              rfc_msg = _rfc_message_.
        WHEN 2 .
          RAISE EXCEPTION TYPE cx_aco_system_failure
            EXPORTING
              rfc_msg = _rfc_message_.
        WHEN 3 .
          RAISE EXCEPTION TYPE cx_aco_application_exception
            EXPORTING
              exception_id = 'OTHERS'
              textid       = __textid.
      ENDCASE.
    ENDIF.

  ENDMETHOD.


  METHOD zmars_if_sochange~bapi_salesorder_change.
    TRY.
        me->call_bapi_salesorder_change(
         EXPORTING
          _dest_ = _dest_
          behave_when_error = behave_when_error
          int_number_assignment = int_number_assignment
          logic_switch = logic_switch
          no_dequeue_all = no_dequeue_all
          no_status_buf_init = no_status_buf_init
          order_header_in = order_header_in
          order_header_inx = order_header_inx
          salesdocument = salesdocument
          simulation = simulation
         CHANGING
          schedule_linesx = schedule_linesx
          schedule_lines = schedule_lines
          return = return
          partners = partners
          partnerchanges = partnerchanges
          partneraddresses = partneraddresses
          order_text = order_text
          order_keys = order_keys
          order_item_inx = order_item_inx
          order_item_in = order_item_in
          order_cfgs_vk = order_cfgs_vk
          order_cfgs_value = order_cfgs_value
          order_cfgs_refinst = order_cfgs_refinst
          order_cfgs_ref = order_cfgs_ref
          order_cfgs_part_of = order_cfgs_part_of
          order_cfgs_inst = order_cfgs_inst
          order_cfgs_blob = order_cfgs_blob
          nfmetallitms = nfmetallitms
          extensionin = extensionin
          extensionex = extensionex
          conditions_inx = conditions_inx
          conditions_in = conditions_in
       ).
      CATCH cx_aco_communication_failure INTO DATA(lx_aco_communication_failure).
        RAISE EXCEPTION lx_aco_communication_failure.
      CATCH cx_aco_system_failure INTO DATA(lx_aco_system_failure).
        RAISE EXCEPTION lx_aco_system_failure.
      CATCH cx_aco_application_exception INTO DATA(lx_aco_application_exception).
        RAISE EXCEPTION lx_aco_application_exception.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
