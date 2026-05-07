CLASS zcl_equipmentdata_scm DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES tt_data TYPE STANDARD TABLE OF zc_equipmentexcel000.
    TYPES tt_msg  TYPE TABLE OF bapiret2.
    TYPES : BEGIN OF ty_numeric_field,
            field_name TYPE string,
            value      TYPE string,
            END OF ty_numeric_field.
    DATA lt_numeric_check TYPE STANDARD TABLE OF ty_numeric_field.
    TYPES: BEGIN OF ty_equipment,
             equipment TYPE zpm_scm_equipmentdata_1=>tys_yy_1_equipmentdata_1_type-equipment,
           END OF ty_equipment,
           tt_equipment TYPE TABLE OF ty_equipment.

    METHODS get_data
      IMPORTING equipments     TYPE tt_equipment
      RETURNING VALUE(rt_data) TYPE zpm_scm_equipmentdata_1=>tyt_yy_1_equipmentdata_1_type.

    METHODS update_data
      IMPORTING VALUE(lt_data) TYPE tt_data
      EXPORTING lt_msg         TYPE tt_msg.
ENDCLASS.



CLASS ZCL_EQUIPMENTDATA_SCM IMPLEMENTATION.


  METHOD update_data.
    DATA lo_http_client   TYPE REF TO if_web_http_client.
    DATA lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA ls_entity_key    TYPE zpm_scm_equipmentdataupd=>tys_equipment_type.
    DATA ls_business_data TYPE zpm_scm_equipmentdataupd=>tys_equipment_type.
    DATA lo_resource      TYPE REF TO /iwbep/if_cp_resource_entity.
    DATA lo_read_response TYPE REF TO /iwbep/if_cp_response_read.
    DATA lo_request       TYPE REF TO /iwbep/if_cp_request_update.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    DATA lo_response      TYPE REF TO /iwbep/if_cp_response_update.

    LOOP AT lt_data ASSIGNING FIELD-SYMBOL(<fs_data>).
      TRY.
          " Create http client
          TRY.
              FINAL(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                          comm_scenario = 'ZPM_CS_EQUIPMENTDATAUPDATE'
*                                          comm_system_id = '<Comm System Id>'
                                          service_id    = 'ZPM_API_EQUIPMENTUPDATE_REST' ).
             ##NO_HANDLER
            CATCH cx_http_dest_provider_error.
          ENDTRY.
          lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).
          lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                                is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                    proxy_model_id      = 'ZPM_SCM_EQUIPMENTDATAUPD2'
                                                                    proxy_model_version = '0001' )
                                io_http_client           = lo_http_client
                                iv_relative_service_root = '' ).

          ASSERT lo_http_client IS BOUND.

          " Set entity key
          ls_entity_key = VALUE #( equipment         = <fs_data>-Equipment
                                   validity_end_date = '99991231' ).


          " Prepare the business data
          ls_business_data = VALUE #( equipment                  = |{  <fs_data>-Equipment ALPHA = IN  }|
                                      validity_end_date          = '99991231'
                                      company_code               = <fs_data>-CompanyCode
                                      business_area              = <fs_data>-BusinessArea
                                      master_fixed_asset         = <fs_data>-MasterFixedAsset
                                      fixed_asset                = <fs_data>-FixedAsset
                                      cost_center                = <fs_data>-CostCenter
                                      controlling_area           = <fs_data>-ControllingArea
                                      wbselement_external_id     = <fs_data>-WBSElementExternalID
                                      settlement_order           = <fs_data>-SettlementOrder
                                      maintenance_planning_plant = <fs_data>-MaintenancePlanningPlant
                                      maintenance_planner_group  = <fs_data>-MaintenancePlannerGroup
                                      main_work_center           = <fs_data>-MainWorkCenter
                                      main_work_center_plant     = <fs_data>-MainWorkCenterPlant
                                      catalog_profile            = <fs_data>-CatalogProfile
                                      yy_1_vehicle_stat_for_equi = <fs_data>-VehicleStatForEqui
                                      yy_1_insurance_start_date  = <fs_data>-InsuranceStartDate
                                      yy_1_insurance_end_date_ie = <fs_data>-InsuranceEndDate
                                      yy_1_file_number_ieq       = <fs_data>-FileNumber
                                      yy_1_user_allocated_persn  = <fs_data>-UserAllocatedPersn
                                      yy_1_lift_no_txt_ieq       = <fs_data>-LiftNo
                                      yy_1_case_no_txt_ieq       = <fs_data>-CaseNo
                                      yy_1_air_condition_no_txt  = <fs_data>-AirConditionNo
                                      yy_1_sequence_no_txt_ieq   = <fs_data>-SequenceNo
                                      yy_1_airconditioning_tl_ie = <fs_data>-AirconditioningTL
                                      yy_1_lift_tl_ieq           = <fs_data>-LiftTL
                                      yy_1_hgsbalance_ieq        = <fs_data>-HGSBalance
                                      yy_1_region_ieq            = <fs_data>-Region
                                      yy_1_l_1_no_ieq            = <fs_data>-L1No
                                      yy_1_k_1_no_ieq            = <fs_data>-K1No
                                      yy_1_engine_no_ieq         = <fs_data>-EngineNo
                                      yy_1_device_name_ieq       = <fs_data>-DeviceName
                                      yy_1_color_ieq             = <fs_data>-Color
                                      yy_1_brand_ieq             = <fs_data>-Brand
                                      yy_1_logo_1_ieq            = <fs_data>-Logo
                                      yy_1_maintenance_intrvl_ie = <fs_data>-MaintenanceInterval
                                      yy_1_atpend_date_ieq       = <fs_data>-ATPEndDate
                                      yy_1_separator_1_ieq       = <fs_data>-Separator
                                      yy_1_lift_1_ieq            = <fs_data>-Lift
                                      yy_1_vehicle_doc_type_ieq  = <fs_data>-VehicleDocTypeDesc
                                      yy_1_pledge_info_ieq       = <fs_data>-PledgeInfo
                                      yy_1_pmmodel_year_ieq      = <fs_data>-ModelYear
                                      yy_1_pmvehicle_type_ieq    = <fs_data>-VehicleType
                                      yy_1_insurance_plcy_comp_i = <fs_data>-InsurancePlcyComp
                                      yy_1_insurance_agency_ieq  = <fs_data>-InsuranceAgency
                                      yy_1_traffic_plcy_comp_ieq = <fs_data>-TrafficPlcyComp
                                      yy_1_traffic_start_date_ie = <fs_data>-TrafficStartDate
                                      yy_1_traffic_end_date_ieq  = <fs_data>-TrafficEndDate
                                      yy_1_traffic_insurance_ag  = <fs_data>-TrafficInsuranceAg
                                      yy_1_pr_accident_plcy_cmp  = <fs_data>-PrAccidentPlcyCmp
                                      yy_1_pers_accident_start_d = <fs_data>-PersAccidentStartD
                                      yy_1_pers_accident_end_dat = <fs_data>-PersAccidentEndDat
                                      yy_1_pers_accident_ins_agc = <fs_data>-PersAccidentInsAgc
                                      yy_1_case_tl_ieq           = <fs_data>-CaseTL
                                      yy_1_inspection_start_ieq  = <fs_data>-InspectionStart
                                      yy_1_inspection_end_ieq    = <fs_data>-InspectionEnd
                                      yy_1_hgsno_ieq             = <fs_data>-HGSNo
                                      yy_1_registration_date_ieq = <fs_data>-RegistrationDate
                                      yy_1_issued_place_ieq      = <fs_data>-IssuedPlace
                                      yy_1_payload_capacity_ieq  = <fs_data>-PayloadCapacity
                                      yy_1_document_serial_no_ie = <fs_data>-DocumentSerialNo
                                      yy_1_chassis_no_ieq        = <fs_data>-ChassisNo
                                      yy_1_category_ieq          = <fs_data>-Category
                                      yy_1_tension_belt_ieq      = <fs_data>-TensionBelt
                                      yy_1_stepne_1_ieq          = <fs_data>-Stepne
                                      yy_1_tachograph_clb_date_i = <fs_data>-TachographClbDate
                                      yy_1_exhaust_insp_end_date = <fs_data>-ExhaustInspEndDate
                                      yy_1_postern_door_info_ieq = <fs_data>-PosternDoor
                                      yy_1_air_cndtn_ieq         = <fs_data>-AirCondition
                                      yy_1_pledge_company_ieq    = <fs_data>-PledgeCompany
                                      yy_1_pallet_number_ieq     = <fs_data>-PalletNumber
                                      yy_1_company_ieq           = <fs_data>-Company
                                      yy_1_pmvehicle_body_type_i = <fs_data>-VehicleBodyType
                                      yy_1_type_ieq              = <fs_data>-Model
                                      yy_1_vehicle_class_ieq     = <fs_data>-VehicleClass ).

          " Navigate to the resource and create a request for the update operation
          lo_resource = lo_client_proxy->create_resource_for_entity_set( 'EQUIPMENT' )->navigate_with_key( ls_entity_key ).

          lo_read_response = lo_resource->create_request_for_read( )->execute( ).

          FINAL(lv_etag) = lo_read_response->get_etag( ).
*CLEAR ls_business_data.

*lo_response->get_business_data( importing es_business_data = ls_business_data ).

          FINAL(lt_provided_property) = VALUE /iwbep/if_cp_runtime_types=>ty_t_property_path(
                                                  ( `COMPANY_CODE` )
                                                  ( `BUSINESS_AREA` )
                                                  ( `MASTER_FIXED_ASSET` )
                                                  ( `FIXED_ASSET` )
                                                  ( `COST_CENTER` )
                                                  ( `CONTROLLING_AREA` )
                                                  ( `WBSELEMENT_EXTERNAL_ID` )
                                                  ( `SETTLEMENT_ORDER` )
                                                  ( `MAINTENANCE_PLANNING_PLANT` )
                                                  ( `MAINTENANCE_PLANNER_GROUP` )
                                                  ( `MAIN_WORK_CENTER` )
                                                  ( `MAIN_WORK_CENTER_PLANT` )
                                                  ( `CATALOG_PROFILE` )
                                                  ( `YY_1_VEHICLE_STAT_FOR_EQUI` )
                                                  ( `YY_1_INSURANCE_START_DATE` )
                                                  ( `YY_1_INSURANCE_END_DATE_IE` )
                                                  ( `YY_1_FILE_NUMBER_IEQ` )
                                                  ( `YY_1_USER_ALLOCATED_PERSN` )
                                                  ( `YY_1_LIFT_NO_TXT_IEQ` )
                                                  ( `YY_1_CASE_NO_TXT_IEQ` )
                                                  ( `YY_1_AIR_CONDITION_NO_TXT` )
                                                  ( `YY_1_SEQUENCE_NO_TXT_IEQ` )
                                                  ( `YY_1_AIRCONDITIONING_TL_IE` )
                                                  ( `YY_1_LIFT_TL_IEQ` )
                                                  ( `YY_1_HGSBALANCE_IEQ` )
                                                  ( `YY_1_REGION_IEQ` )
                                                  ( `YY_1_L_1_NO_IEQ` )
                                                  ( `YY_1_K_1_NO_IEQ` )
                                                  ( `YY_1_ENGINE_NO_IEQ` )
                                                  ( `YY_1_DEVICE_NAME_IEQ` )
                                                  ( `YY_1_COLOR_IEQ` )
                                                  ( `YY_1_BRAND_IEQ` )
                                                  ( `YY_1_LOGO_1_IEQ` )
                                                  ( `YY_1_MAINTENANCE_INTRVL_IE` )
                                                  ( `YY_1_ATPEND_DATE_IEQ` )
                                                  ( `YY_1_SEPARATOR_1_IEQ` )
                                                  ( `YY_1_LIFT_1_IEQ` )
                                                  ( `YY_1_VEHICLE_DOC_TYPE_IEQ` )
                                                  ( `YY_1_PLEDGE_INFO_IEQ` )
                                                  ( `YY_1_PMMODEL_YEAR_IEQ` )
                                                  ( `YY_1_PMVEHICLE_TYPE_IEQ` )
                                                  ( `YY_1_INSURANCE_PLCY_COMP_I` )
                                                  ( `YY_1_INSURANCE_AGENCY_IEQ` )
                                                  ( `YY_1_TRAFFIC_PLCY_COMP_IEQ` )
                                                  ( `YY_1_TRAFFIC_START_DATE_IE` )
                                                  ( `YY_1_TRAFFIC_END_DATE_IEQ` )
                                                  ( `YY_1_TRAFFIC_INSURANCE_AG` )
                                                  ( `YY_1_PR_ACCIDENT_PLCY_CMP` )
                                                  ( `YY_1_PERS_ACCIDENT_START_D` )
                                                  ( `YY_1_PERS_ACCIDENT_END_DAT` )
                                                  ( `YY_1_PERS_ACCIDENT_INS_AGC` )
                                                  ( `YY_1_CASE_TL_IEQ` )
                                                  ( `YY_1_INSPECTION_START_IEQ` )
                                                  ( `YY_1_INSPECTION_END_IEQ` )
                                                  ( `YY_1_HGSNO_IEQ` )
                                                  ( `YY_1_REGISTRATION_DATE_IEQ` )
                                                  ( `YY_1_ISSUED_PLACE_IEQ` )
                                                  ( `YY_1_PAYLOAD_CAPACITY_IEQ` )
                                                  ( `YY_1_DOCUMENT_SERIAL_NO_IE` )
                                                  ( `YY_1_CHASSIS_NO_IEQ` )
                                                  ( `YY_1_CATEGORY_IEQ` )
                                                  ( `YY_1_TENSION_BELT_IEQ` )
                                                  ( `YY_1_STEPNE_1_IEQ` )
                                                  ( `YY_1_TACHOGRAPH_CLB_DATE_I` )
                                                  ( `YY_1_EXHAUST_INSP_END_DATE` )
                                                  ( `YY_1_POSTERN_DOOR_INFO_IEQ` )
                                                  ( `YY_1_AIR_CNDTN_IEQ` )
                                                  ( `YY_1_PLEDGE_COMPANY_IEQ` )
                                                  ( `YY_1_PALLET_NUMBER_IEQ` )
                                                  ( `YY_1_COMPANY_IEQ` )
                                                  ( `YY_1_PMVEHICLE_BODY_TYPE_I` )
                                                  ( `YY_1_TYPE_IEQ` )
                                                  ( `YY_1_VEHICLE_CLASS_IEQ` ) ).

          lo_request = lo_resource->create_request_for_update( /iwbep/if_cp_request_update=>gcs_update_semantic-patch ).
*          REPLACE ALL OCCURRENCES OF `'` IN lv_etag WITH space.
*          CONDENSE lv_etag NO-GAPS.
          TRY.
              " You need to retrieve etag and then set it here
              lo_request->set_if_match( iv_etag = lv_etag ).
            ##NO_HANDLER
            CATCH cx_sy_ref_is_initial INTO FINAL(ref).

          ENDTRY.
*          lo_request->

          lo_request->set_business_data( is_business_data     = ls_business_data
                                         it_provided_property = lt_provided_property ).

          " Execute the request and retrieve the business data
          lo_response = lo_request->execute( ).

        " Get updated entity

        CATCH /iwbep/cx_cp_remote INTO FINAL(lx_remote).

          APPEND INITIAL LINE TO lt_msg ASSIGNING FIELD-SYMBOL(<fs_msg>).
          <fs_msg>-message_v1 = lx_remote->get_longtext( ).
          <fs_msg>-id         = 'ZPM_EXCELUPL_COCKPIT'.
          <fs_msg>-number     = '000'.
          <fs_msg>-type       = 'E'.

        CATCH /iwbep/cx_gateway INTO FINAL(lx_gateway).
          APPEND INITIAL LINE TO lt_msg ASSIGNING FIELD-SYMBOL(<fs_msg1>).
          <fs_msg1>-message_v1 = lx_gateway->get_longtext( ).
          <fs_msg1>-id         = 'ZPM_EXCELUPL_COCKPIT'.
          <fs_msg1>-number     = '000'.
          <fs_msg1>-type       = 'E'.

        CATCH cx_web_http_client_error INTO FINAL(lx_web_http_client_error).
          APPEND INITIAL LINE TO lt_msg ASSIGNING FIELD-SYMBOL(<fs_msg2>).
          <fs_msg2>-message_v1 = lx_web_http_client_error->get_longtext( ).
          <fs_msg2>-id         = 'ZPM_EXCELUPL_COCKPIT'.
          <fs_msg2>-number     = '000'.
          <fs_msg2>-type       = 'E'.
        CATCH cx_http_dest_provider_error INTO FINAL(lx_http_dest_provider_error).
          APPEND INITIAL LINE TO lt_msg ASSIGNING FIELD-SYMBOL(<fs_msg3>).
          <fs_msg3>-message_v1 = lx_http_dest_provider_error->get_longtext( ).
          <fs_msg3>-id         = 'ZPM_EXCELUPL_COCKPIT'.
          <fs_msg3>-number     = '000'.
          <fs_msg3>-type       = 'E'.
*        CATCH cx_sy_conversion_no_number INTO FINAL(lx_conv).
*              APPEND INITIAL LINE TO lt_msg ASSIGNING FIELD-SYMBOL(<fs_msg4>).
**              <fs_msg4>-message_v1 = lx_conv->get_longtext( ).
**             <fs_msg4>-message_v2 = <fs_data>-Equipment.
*              <fs_msg4>-message_v1 = ls_check-field_name.
*              <fs_msg4>-id         = 'ZPM_EXCELUPL_COCKPIT'.
*              <fs_msg4>-number     = '002'.
*              <fs_msg4>-type       = 'E'.
      ENDTRY.
    ENDLOOP.

  ENDMETHOD. "#EC CI_VALPAR


  METHOD get_data.
    DATA lo_http_client           TYPE REF TO if_web_http_client.
    DATA lo_client_proxy          TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA lo_request               TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA lo_filter_factory        TYPE REF TO /iwbep/if_cp_filter_factory.
    DATA lr_range_equipment       TYPE RANGE OF ty_equipment-equipment.
    " TODO: variable is assigned but never used (ABAP cleaner)
*    DATA ls_entity_key            TYPE zpm_scm_equipmentdata_1=>tys_yy_1_equipmentdata_1_type.
    DATA lo_filter_node_equipment TYPE REF TO /iwbep/if_cp_filter_node.
    DATA lt_range_LANGUAGE        TYPE RANGE OF string.
    DATA lo_response              TYPE REF TO /iwbep/if_cp_response_read_lst.
    DATA lt_business_data         TYPE TABLE OF zpm_scm_equipmentdata_1=>tys_yy_1_equipmentdata_1_type.
*    DATA lo_filter_node_1         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_2         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_3         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_4         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_5         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_6         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_7         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_8         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_9         TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_10        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_11        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_12        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_13        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_14        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_15        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_16        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_17        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_18        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_19        TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_root      TYPE REF TO /iwbep/if_cp_filter_node.
*    DATA lo_filter_node_root_2    TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_20        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_21        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_22        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_23        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_24        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_25        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_26        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_27        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_28        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_29        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_30        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_31        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_32        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_33        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_34        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_35        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_36        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_37        TYPE REF TO /iwbep/if_cp_filter_node.
    " TODO: variable is assigned but only used in commented-out code (ABAP cleaner)
    " TODO: variable is never used (ABAP cleaner)
    DATA lo_filter_node_38        TYPE REF TO /iwbep/if_cp_filter_node.

    TRY.
        " Create http client
        TRY.
            FINAL(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                        comm_scenario = 'ZPM_CS_EQUIPMENTDATAORG'
*                                        comm_system_id = '<Comm System Id>'
                                        service_id    = 'ZPM_API_EQUIPMENTDATAORG_REST' ).
           ##NO_HANDLER
          CATCH cx_http_dest_provider_error.

        ENDTRY.
        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).
        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                  proxy_model_id      = 'ZPM_SCM_EQUIPMENTDATA_1'
                                                                  proxy_model_version = '0001' )
                              io_http_client           = lo_http_client
                              iv_relative_service_root = '' ).

        ASSERT lo_http_client IS BOUND.

        " Set entity key
*        ls_entity_key = VALUE #( equipment = 'Equipment' ).
        " Navigate to the resource and create a request for the read operation
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'YY_1_EQUIPMENTDATA_1' )->create_request_for_read( ).

        " Create the filter tree

        lo_filter_factory = lo_request->create_filter_factory( ).

        lr_range_equipment = VALUE #( FOR equipment IN equipments
                                      sign   = 'I'
                                      option = 'EQ'
                                      ( low = equipment-equipment ) ).

        lo_filter_node_equipment = lo_filter_factory->create_by_range( iv_property_path = 'EQUIPMENT'
                                                                       it_range         = lr_range_equipment ).

        SELECT SINGLE FROM I_Language
          FIELDS LanguageISOCode
          WHERE Language = @sy-langu
          INTO @FINAL(language_iso_code).

        lt_range_language = VALUE #( option = 'EQ'
                                     sign   = 'I'
                                     ( low = '' )
                                     ( low = language_iso_code ) ).

*        lo_filter_node_1 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_AIR_CONDITION'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_2 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_COMPANY'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_3 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_INSURANCE_AGENCY'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_4 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_LIFT'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_5 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_LOGO'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_6 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_MODEL_YEAR'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_7 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_PALLET_NUMBER'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_8 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_PERS_ACCIDENT_INS'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_9 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_PLEDGE_INFO'
*                                                               it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_10 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_POSTERN_DOOR'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_11 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_SEPARATOR'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_12 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_STEPNE'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_13 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_TENSION_BELT'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_14 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_TRAFFIC_INSURANCE'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_15 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_VEHICLE_BODY_TYPE'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_16 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_VEHICLE_DOC_TYPE'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_17 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_VEHICLE_STAT_FOR'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_18 = lo_filter_factory->create_by_range( iv_property_path = 'LANGUAGE_VEHICLE_TYPE'
*                                                                it_range         = lt_range_LANGUAGE ).
*        lo_filter_node_19 = lo_filter_factory->create_by_range( iv_property_path = 'STANDING_ORDER_NUMBER'
*                                                                it_range         = lt_range_LANGUAGE ).

*        lo_filter_node_root = lo_filter_node_1->or( lo_filter_node_2 )->or( lo_filter_node_3 )->or( lo_filter_node_4 )->or(
*            lo_filter_node_5 )->or( lo_filter_node_6 )->or( lo_filter_node_7
*         )->or( lo_filter_node_8 )->or( lo_filter_node_9 )->or( lo_filter_node_10 )->or( lo_filter_node_11 )->or(
*             lo_filter_node_12 )->or( lo_filter_node_13 )->or( lo_filter_node_14 )->or( lo_filter_node_15
*         )->or( lo_filter_node_16 )->or( lo_filter_node_17 )->or( lo_filter_node_18 )->or( lo_filter_node_19 ).

*        lo_filter_node_root_2 = lo_filter_node_root->and( lo_filter_node_equipment ).

*        lo_request->set_filter( lo_filter_node_root_2 ).
        lo_request->set_filter( lo_filter_node_equipment ).

        " Execute the request and retrieve the business data
        lo_response = lo_request->execute( ).
        lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

        DELETE lt_business_data WHERE language_air_condition NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_company NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_lift NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_logo NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_model_year NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_pallet_number NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_pers_accident_ins NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_postern_door NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_pledge_info NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_separator NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_tension_belt NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_pledge_info NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_traffic_insurance NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_vehicle_body_type NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_vehicle_doc_type NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_vehicle_stat_for NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_vehicle_type NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_traffic_insurance NOT IN lt_range_language.
        DELETE lt_business_data WHERE language_insurance_agency NOT IN lt_range_language.
        DELETE lt_business_data WHERE standing_order_number NOT IN lt_range_language.

        SORT lt_business_data.
        DELETE ADJACENT DUPLICATES FROM lt_business_data COMPARING ALL FIELDS.

        rt_data = lt_business_data.
        ##NO_HANDLER
      CATCH /iwbep/cx_cp_remote INTO FINAL(lx_remote).


*        TRY.
*                  l_log->add_item(
*                      item = cl_bali_free_text_setter=>create( severity = if_bali_constants=>c_severity_error
*                                                               text     = CONV #( lx_remote->get_longtext( ) ) ) ).
*                CATCH cx_bali_runtime ##NO_HANDLER.
*              ENDTRY.
      ##NO_HANDLER
      CATCH /iwbep/cx_gateway INTO FINAL(lx_gateway).
        " Handle Exception
*        TRY.
*                  l_log->add_item(
*                      item = cl_bali_free_text_setter=>create( severity = if_bali_constants=>c_severity_error
*                                                               text     = CONV #( lx_gateway->get_longtext( ) ) ) ).
*                CATCH cx_bali_runtime ##NO_HANDLER.
*              ENDTRY.
      ##NO_HANDLER
      CATCH cx_web_http_client_error INTO FINAL(lx_web_http_client_error).
        " Handle Exception
*        TRY.
*                  l_log->add_item( item = cl_bali_free_text_setter=>create(
*                                              severity = if_bali_constants=>c_severity_error
*                                              text     = CONV #( lx_web_http_client_error->get_longtext( ) ) ) ).
*                CATCH cx_bali_runtime ##NO_HANDLER.
*              ENDTRY.
      ##NO_HANDLER
      CATCH cx_http_dest_provider_error INTO FINAL(lx_http_dest_provider_error).
*              TRY.
*                  l_log->add_item( item = cl_bali_free_text_setter=>create(
*                                              severity = if_bali_constants=>c_severity_error
*                                              text     = CONV #( lx_http_dest_provider_error->get_longtext( ) ) ) ).
*                CATCH cx_bali_runtime ##NO_HANDLER.
*              ENDTRY.
    ENDTRY.

*    TRY.
*        cl_bali_log_db=>get_instance( )->save_log( log                        = l_log
*                                                   assign_to_current_appl_job = abap_true ).
*      CATCH cx_bali_runtime ##NO_HANDLER.
*    ENDTRY.
*    COMMIT WORK.
  ENDMETHOD.
ENDCLASS.
