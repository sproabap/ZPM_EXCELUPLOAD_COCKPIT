CLASS lhc_ZI_EquipmentExcel DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR ZI_EquipmentExcel RESULT result.
    METHODS ExcelUpload FOR MODIFY
      IMPORTING keys FOR ACTION ZI_EquipmentExcel~ExcelUpload RESULT result.

    METHODS date_excel_to_abap
      IMPORTING excel_date       TYPE i
      RETURNING VALUE(abap_date) TYPE datum.
ENDCLASS.


CLASS lhc_ZI_EquipmentExcel IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD ExcelUpload.
    TYPES : BEGIN OF ty_sheet_data,
              Equipment                TYPE ZI_EquipmentExcel-Equipment,
              EquipmentText            TYPE ZI_EquipmentExcel-EquipmentText,
              MaintenancePlannerGroup  TYPE ZC_EquipmentExcel000-MaintenancePlannerGroup,
              MaintenancePlanningPlant TYPE ZC_EquipmentExcel000-MaintenancePlanningPlant,
              MainWorkCenter           TYPE ZC_EquipmentExcel000-MainWorkCenter,
              MainWorkCenterPlant      TYPE ZC_EquipmentExcel000-MainWorkCenterPlant,
              CatalogProfile           TYPE ZC_EquipmentExcel000-CatalogProfile,
              CompanyCode              TYPE ZC_EquipmentExcel000-CompanyCode,
              ControllingArea          TYPE ZC_EquipmentExcel000-ControllingArea,
              BusinessArea             TYPE ZC_EquipmentExcel000-BusinessArea,
              CostCenter               TYPE ZC_EquipmentExcel000-CostCenter,
              WBSElementExternalID     TYPE ZC_EquipmentExcel000-WBSElementExternalID,
              SettlementOrder          TYPE ZC_EquipmentExcel000-SettlementOrder,
              MasterFixedAsset         TYPE ZC_EquipmentExcel000-MasterFixedAsset,
              AirCondition             TYPE ZI_EquipmentExcel-AirCondition,
              AirConditionNo           TYPE ZI_EquipmentExcel-AirConditionNo,
              AirconditioningTL        TYPE ZI_EquipmentExcel-AirconditioningTL,
              ATPEndDate               TYPE ZI_EquipmentExcel-ATPEndDate,
              Brand                    TYPE ZI_EquipmentExcel-Brand,
              CaseNo                   TYPE ZI_EquipmentExcel-CaseNo,
              CaseTL                   TYPE ZI_EquipmentExcel-CaseTL,
              Category                 TYPE ZI_EquipmentExcel-Category,
              ChassisNo                TYPE ZI_EquipmentExcel-ChassisNo,
              Color                    TYPE ZI_EquipmentExcel-Color,
              Company                  TYPE ZI_EquipmentExcel-Company,
              DeviceName               TYPE ZI_EquipmentExcel-DeviceName,
              DocumentSerialNo         TYPE ZI_EquipmentExcel-DocumentSerialNo,
              EngineNo                 TYPE ZI_EquipmentExcel-EngineNo,
              ExhaustInspEndDate       TYPE ZI_EquipmentExcel-ExhaustInspEndDate,
              FileNumber               TYPE ZI_EquipmentExcel-FileNumber,
              HGSBalance               TYPE ZI_EquipmentExcel-HGSBalance,
              HGSNo                    TYPE ZI_EquipmentExcel-HGSNo,
              InspectionEnd            TYPE ZI_EquipmentExcel-InspectionEnd,
              InspectionStart          TYPE ZI_EquipmentExcel-InspectionStart,
              InsuranceAgency          TYPE ZI_EquipmentExcel-InsuranceAgency,
              InsuranceEndDate         TYPE ZI_EquipmentExcel-InsuranceEndDate,
              InsurancePlcyComp        TYPE ZI_EquipmentExcel-InsurancePlcyComp,
              InsuranceStartDate       TYPE ZI_EquipmentExcel-InsuranceStartDate,
              IssuedPlace              TYPE ZI_EquipmentExcel-IssuedPlace,
              K1No                     TYPE ZI_EquipmentExcel-K1No,
              L1No                     TYPE ZI_EquipmentExcel-L1No,
              Lift                     TYPE ZI_EquipmentExcel-Lift,
              LiftNo                   TYPE ZI_EquipmentExcel-LiftNo,
              LiftTL                   TYPE ZI_EquipmentExcel-LiftTL,
              Logo                     TYPE ZI_EquipmentExcel-Logo,
              MaintenanceInterval      TYPE ZI_EquipmentExcel-MaintenanceInterval,
              Model                    TYPE ZI_EquipmentExcel-Model,
              ModelYear                TYPE ZI_EquipmentExcel-ModelYear,
              PalletNumber             TYPE ZI_EquipmentExcel-PalletNumber,
              PayloadCapacity          TYPE ZI_EquipmentExcel-PayloadCapacity,
              PersAccidentEndDat       TYPE ZI_EquipmentExcel-PersAccidentEndDat,
              PrAccidentPlcyCmp        TYPE ZI_EquipmentExcel-PrAccidentPlcyCmp,
              PersAccidentStartD       TYPE ZI_EquipmentExcel-PersAccidentStartD,
              PledgeCompany            TYPE ZI_EquipmentExcel-PledgeCompany,
              PledgeInfo               TYPE ZI_EquipmentExcel-PledgeInfo,
              PosternDoor              TYPE ZI_EquipmentExcel-PosternDoor,
              PersAccidentInsAgc       TYPE ZI_EquipmentExcel-PersAccidentInsAgc,
              Region                   TYPE ZI_EquipmentExcel-Region,
              RegistrationDate         TYPE ZI_EquipmentExcel-RegistrationDate,
              Separator                TYPE ZI_EquipmentExcel-Separator,
              SequenceNo               TYPE ZI_EquipmentExcel-SequenceNo,
              StandingOrder            TYPE ZC_EquipmentExcel000-StandingOrder,
              Stepne                   TYPE ZI_EquipmentExcel-Stepne,
              FixedAsset               TYPE ZC_EquipmentExcel000-FixedAsset,
              TachographClbDate        TYPE ZI_EquipmentExcel-TachographClbDate,
              TensionBelt              TYPE ZI_EquipmentExcel-TensionBelt,
              TrafficEndDate           TYPE ZI_EquipmentExcel-TrafficEndDate,
              TrafficInsuranceAg       TYPE ZI_EquipmentExcel-TrafficInsuranceAg,
              TrafficPlcyComp          TYPE ZI_EquipmentExcel-TrafficPlcyComp,
              TrafficStartDate         TYPE ZI_EquipmentExcel-TrafficStartDate,
              UserAllocatedPersn       TYPE ZI_EquipmentExcel-UserAllocatedPersn,
              VehicleBodyType          TYPE ZI_EquipmentExcel-VehicleBodyType,
              VehicleClass             TYPE ZI_EquipmentExcel-VehicleClass,
              VehicleDocType           TYPE ZI_EquipmentExcel-VehicleDocType,
              VehicleStatForEqui       TYPE ZI_EquipmentExcel-VehicleStatForEqui,
              VehicleType              TYPE ZI_EquipmentExcel-VehicleType,
            END OF ty_sheet_data.

    DATA lv_file_content   TYPE xstring.
    DATA lt_sheet_data     TYPE STANDARD TABLE OF ty_sheet_data.
    DATA lt_listing_create TYPE STANDARD TABLE OF ZC_EquipmentExcel000.
    " TODO: variable is never used (ABAP cleaner)
    DATA lv_url            TYPE string.
    " TODO: variable is never used (ABAP cleaner)
    DATA lv_json           TYPE string.

    lv_file_content = VALUE #( keys[ 1 ]-%param-_attachment-Attachment OPTIONAL ).

    " Error handling in case file content is initial

    FINAL(lo_document) = xco_cp_xlsx=>document->for_file_content( lv_file_content )->read_access( ).

    FINAL(lo_worksheet) = lo_document->get_workbook( )->worksheet->at_position( 1 ).

    FINAL(o_sel_pattern) = xco_cp_xlsx_selection=>pattern_builder->simple_from_to(
      )->from_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'A' )  " Start reading from Column A
      )->to_column( xco_cp_xlsx=>coordinate->for_alphabetic_value( 'BX' )   " End reading at Column N
      )->from_row( xco_cp_xlsx=>coordinate->for_numeric_value( 2 )    " *** Start reading from ROW 2 to skip the header ***
      )->get_pattern( ).

*    lo_worksheet->select( o_sel_pattern
*                                     )->row_stream(
*                                     )->operation->write_to( REF #( lt_sheet_data )
*                                     )->set_value_transformation(
*                                         xco_cp_xlsx_read_access=>value_transformation->string_value
*                                     )->execute( ).


    DATA(text1) =  lo_worksheet->select( o_sel_pattern ).
    DATA(tes2) = text1->row_stream(  ).
    DATA(test3) = tes2->operation->write_to( REF #( lt_sheet_data ) ).

    TRY.
        test3->set_value_transformation( xco_cp_xlsx_read_access=>value_transformation->string_value ).
      CATCH cx_root INTO DATA(lx_roott).
        DATA(txt) = lx_roott->get_longtext( ).
    ENDTRY.
    TRY.

        test3->execute(  ).
      CATCH cx_root INTO DATA(lx_root52).
      DATA(txt1) = lx_root52->get_longtext( ).
      DATA(lv_prev) = lx_root52->previous.
      DATA(lv_Value) = lv_prev->get_longtext( ).
       APPEND VALUE #( ) TO failed-zi_equipmentexcel.
          reported-zi_equipmentexcel = VALUE #( BASE reported-zi_equipmentexcel
                                                ( %msg               = new_message(
                                                                           id       = 'ZPM_EXCELUPL_COCKPIT'
                                                                           number   = '004'
                                                                           severity = if_abap_behv_message=>severity-error
                                                                           v1       = lv_Value )
                                                  %element-equipment = if_abap_behv=>mk-on ) ).
     RETURN.
    ENDTRY.


*    lo_worksheet->select( o_sel_pattern
*      )->row_stream(
*      )->operation->write_to( REF #( lt_sheet_data[] )
*      )->if_xco_xlsx_ra_operation~execute( ).


    lt_listing_create = CORRESPONDING #( lt_sheet_data ).

    LOOP AT lt_listing_create ASSIGNING FIELD-SYMBOL(<listing_create>).
      IF <listing_create>-Equipment IS INITIAL.
        DELETE lt_listing_create INDEX sy-tabix.
        CONTINUE.
      ENDIF.
      TRY.
          <listing_create>-PersAccidentEndDat = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-PersAccidentEndDat ) ) ) ).
          <listing_create>-TachographClbDate  = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-TachographClbDate ) ) ) ).

          <listing_create>-InsuranceStartDate = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-InsuranceStartDate ) ) ) ).
          <listing_create>-InspectionEnd      = date_excel_to_abap(
                                                    excel_date = CONV #( CONV string( condense( <listing_create>-InspectionEnd ) ) ) ).

          <listing_create>-ATPEndDate         = date_excel_to_abap(
                                                    excel_date = CONV #( CONV string( condense( <listing_create>-ATPEndDate ) ) ) ).

          <listing_create>-PersAccidentStartD = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-PersAccidentStartD ) ) ) ).
          <listing_create>-InsuranceEndDate   = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-InsuranceEndDate ) ) ) ).
          <listing_create>-TrafficEndDate     = date_excel_to_abap(
                                                    excel_date = CONV #( CONV string( condense( <listing_create>-TrafficEndDate ) ) ) ).
          <listing_create>-TrafficStartDate   = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-TrafficStartDate ) ) ) ).
          <listing_create>-InspectionStart    = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-InspectionStart ) ) ) ).
          <listing_create>-ExhaustInspEndDate = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense(  <listing_create>-ExhaustInspEndDate ) ) ) ).
          <listing_create>-RegistrationDate   = date_excel_to_abap(
              excel_date = CONV #( CONV string( condense( <listing_create>-RegistrationDate ) ) ) ).

        CATCH cx_root INTO FINAL(lx_root11).
          APPEND VALUE #( ) TO failed-zi_equipmentexcel.
          reported-zi_equipmentexcel = VALUE #( BASE reported-zi_equipmentexcel
                                                ( %msg               = new_message(
                                                                           id       = 'ZPM_EXCELUPL_COCKPIT'
                                                                           number   = '003'
                                                                           severity = if_abap_behv_message=>severity-error
                                                                           v1       = <listing_create>-Equipment
                                                                           v2       = lx_root11->get_longtext( ) )
                                                  %element-equipment = if_abap_behv=>mk-on ) ).
      ENDTRY.
    ENDLOOP.
    IF failed IS NOT INITIAL.
      RETURN.
    ENDIF.
    FINAL(lo_svc) = NEW zcl_equipmentdata_scm( ).

    lo_svc->update_data( EXPORTING
                           lt_data = lt_listing_create
                         IMPORTING
                           lt_msg  = FINAL(msg) ).

    IF msg IS INITIAL.
      reported-zi_equipmentexcel = VALUE #( BASE reported-zi_equipmentexcel
                                            ( %msg               = new_message(
                                                  id       = 'ZPM_EXCELUPL_COCKPIT'
                                                  number   = '001'
                                                  severity = if_abap_behv_message=>severity-success )
                                              %element-equipment = if_abap_behv=>mk-on ) ).

*                                              result = vaLUE #( for listing_create IN lt_listing_create
*                                                                (  )
    ELSE.
      LOOP AT msg ASSIGNING FIELD-SYMBOL(<fs_msg>).
*      IF <fs_msg>-message_v2 IS NOT INITIAL and <fs_msg>-message_v3 IS NOT INITIAL.
*         APPEND VALUE #( ) TO failed-zi_equipmentexcel.
*        reported-zi_equipmentexcel = VALUE #( BASE reported-zi_equipmentexcel
*                                              ( %msg               = new_message(
*                                                                         id       = <fs_msg>-id
*                                                                         number   = <fs_msg>-number
*                                                                         severity = if_abap_behv_message=>severity-error
**                                                                         v1       = <fs_msg>-message_v1
*                                                                         v1       = <fs_msg>-message_v2
*                                                                         v2       = <fs_msg>-message_v3 )
*                                                %element-equipment = if_abap_behv=>mk-on ) ).
*      ENDIF.
        APPEND VALUE #( ) TO failed-zi_equipmentexcel.
        reported-zi_equipmentexcel = VALUE #( BASE reported-zi_equipmentexcel
                                              ( %msg               = new_message(
                                                                         id       = <fs_msg>-id
                                                                         number   = <fs_msg>-number
                                                                         severity = if_abap_behv_message=>severity-error
                                                                         v1       = <fs_msg>-message_v1 )
                                                %element-equipment = if_abap_behv=>mk-on ) ).
      ENDLOOP.


    ENDIF.
  ENDMETHOD.

  METHOD date_excel_to_abap.
    CONSTANTS excel_base_date TYPE datum VALUE '18991230'.

    IF excel_date IS NOT INITIAL.
      abap_date = excel_base_date + excel_date.
    ELSE.
      abap_date = '00000000'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.


CLASS lsc_ZI_EQUIPMENTEXCEL DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.
    METHODS save_modified    REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.


CLASS lsc_ZI_EQUIPMENTEXCEL IMPLEMENTATION.
  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.
ENDCLASS.
