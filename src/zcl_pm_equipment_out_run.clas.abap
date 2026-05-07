CLASS zcl_pm_equipment_out_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_PM_EQUIPMENT_OUT_RUN IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES: BEGIN OF ty_equipment,
             equipment TYPE string,
           END OF ty_equipment.

    TYPES: ty_t_equipment TYPE STANDARD TABLE OF ty_equipment WITH EMPTY KEY.

    TYPES: BEGIN OF ty_request,
             equipment_list TYPE ty_t_equipment,
           END OF ty_request.
    DATA: ls_request   TYPE ty_request,
          ls_equipment TYPE ty_equipment.

    DATA: BEGIN OF node_info,
            node_type TYPE string,
            name      TYPE string,
            value     TYPE string,
          END OF node_info,
          nodes_tab LIKE TABLE OF node_info.
    DATA nodes_info LIKE LINE OF nodes_tab.

    ls_equipment-equipment = '000000000010000008'.
    APPEND ls_equipment TO ls_request-equipment_list.

    ls_equipment-equipment = '000000000010000077'.
    APPEND ls_equipment TO ls_request-equipment_list.

    data(json) = /ui2/cl_json=>serialize( data             = ls_request
                                           compress         = abap_false
                                           pretty_name      = /ui2/cl_json=>pretty_mode-pascal_case
                                           "name_mappings    = lt_mappings->*
                                           "assoc_arrays     = abap_true
                                           "assoc_arrays_opt = abap_true
                                           "format_output    = abap_true
                                            ).

    TRY.
        data(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                    comm_scenario = 'ZPM_CS_EQUIPMENT_OUT'
                                    service_id    = 'ZPM_API_EQUIPMENT_OUT_REST' ).
        data(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination(
                                    i_destination = lo_destination ).

        data(lo_request) = lo_http_client->get_http_request( ).
        lo_request->set_text( i_text = json ).
        lo_request->set_header_field( i_name  = 'Content-type'
                                      i_value = 'application/json; charset=UTF-8' ).

        data(lo_response) = lo_http_client->execute( i_method = if_web_http_client=>post ).
        data(lv_xml_results) = lo_response->get_text( ).
        data(lv_status) = lo_response->get_status( ).
*        CATCH cx_web_message_error.
      CATCH cx_root INTO FINAL(lx_exception) ##NO_HANDLER. " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
        data(lv_response) = lx_exception->get_text( ).
    ENDTRY.

*    result = VALUE #( FOR bt_line IN bt_payments
*                      ( %tky   = bt_line-%tky
*                        %param = bt_line ) ).

    TRY.
        DATA(xml_to_parse) = cl_abap_conv_codepage=>create_out( )->convert( lv_xml_results ).
      CATCH cx_sy_conversion_codepage ##NO_HANDLER.
    ENDTRY.
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(reader) = cl_sxml_string_reader=>create( xml_to_parse ).

    CLEAR nodes_tab.
    DATA(reader_oo) = cl_sxml_string_reader=>create( xml_to_parse ).
    TRY.
*        DO.
*          DATA(node_oo) = reader_oo->read_next_node( ).
*          IF node_oo IS INITIAL.
*            EXIT.
*          ENDIF.
*
*          " Getting the node type
*          DATA(n_type) = node_oo->type.
*
*          CASE n_type.
*            WHEN if_sxml_node=>co_nt_element_open.
*              DATA(open_element) = CAST if_sxml_open_element( node_oo ).
*
*              APPEND VALUE #( node_type = `open element`
*                              name      = open_element->qname-name )
*                     TO nodes_tab.
*
*              DATA(attributes) = open_element->get_attributes( ).
*
*              LOOP AT attributes INTO DATA(attribute).
*                APPEND VALUE #( node_type = `attribute`
*                                name      = attribute->qname-name
*                                value     = SWITCH #( attribute->value_type
*                                                      WHEN if_sxml_value=>co_vt_text
*                                                      THEN attribute->get_value( ) ) )
*                       TO nodes_tab.
*              ENDLOOP.
*
*            WHEN if_sxml_node=>co_nt_element_close.
*              DATA(close_element) = CAST if_sxml_close_element( node_oo ).
*
*              APPEND VALUE #( node_type = `close element`
*                              name      = close_element->qname-name )
*                     TO nodes_tab.
*
*            WHEN if_sxml_node=>co_nt_value.
*              DATA(value_node_oo) = CAST if_sxml_value_node( node_oo ).
*
*              APPEND VALUE #( node_type = `value`
*                              value     = SWITCH #( value_node_oo->value_type
*                                                    WHEN if_sxml_value=>co_vt_text
*                                                    THEN value_node_oo->get_value( ) ) )
*                     TO nodes_tab.
*
*            WHEN OTHERS.
*              APPEND VALUE #( node_type = `Error` ) TO nodes_tab.
*          ENDCASE.
*        ENDDO.
      CATCH cx_sxml_state_error INTO DATA(error_parse_oo).
        " TODO: variable is assigned but never used (ABAP cleaner)
        DATA(error_parse_oo_text) = error_parse_oo->get_text( ).
    ENDTRY.

*    READ TABLE nodes_tab INTO nodes_info WITH KEY node_type = `value`.
*    IF sy-subrc = 0.
*      msg = nodes_info-value.
*    ENDIF.
*
*    IF msg CS 'Hata'.
*      reported-btall = VALUE #( ( %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
*                                                                text     = msg ) ) ).
*    ELSE.
*      payment_id_update = bt_payment-%key-Paymentid.
*    ENDIF.


  ENDMETHOD.
ENDCLASS.
