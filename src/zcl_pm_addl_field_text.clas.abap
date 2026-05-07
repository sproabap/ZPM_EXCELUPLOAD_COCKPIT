CLASS zcl_pm_addl_field_text DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_sadl_exit_calc_element_read.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS ZCL_PM_ADDL_FIELD_TEXT IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.
    TYPES: BEGIN OF ty_field,
             equipment              TYPE zc_equipmentexcel000-Equipment,
             VehicleBodyType        TYPE zpm_vehiclebodytyp,
             VehicleBodyTypeDesc    TYPE zpm_vehiclebodytypedescr,
             VehicleStatForEqui     TYPE zpm_vehiclestatforequi,
             VehicleStatForEquiDesc TYPE zpm_vehiclestatforequidesc,
             VehicleDocType         TYPE zpm_vehicledoctype,
             VehicleDocTypeDesc     TYPE zpm_vehicledoctypedesc,
             ModelYear              TYPE zpm_modelyear,
             ModelYearDesc          TYPE zpm_modelyeardesc,
             VehicleType            TYPE zpm_vehicletyp,
             VehicleTypeDesc        TYPE zpm_vehicletypedescr,
             InsuranceAgency        TYPE zpm_insuranceagency,
             InsuranceAgencyDesc    TYPE zpm_insuranceagencydesc,
             TrafficInsuranceAg     TYPE zpm_trafficinsuranceag,
             TrafficInsuranceAgDesc TYPE zpm_trafficinsuranceagdesc,
             PersAccidentInsAgc     TYPE zpm_persaccidentinsag,
             PersAccidentInsAgcDesc TYPE zpm_trafficinsuranceagdesc,
             TensionBelt            TYPE zpm_tensionbelt,
             TensionBeltDesc        TYPE zpm_tensionbeltdesc,
             PalletNumber           TYPE zpm_palletnumber,
             PalletNumberDesc       TYPE zpm_palletnumberdesc,
             AirCondition           TYPE zpm_aircndtn,
             AirConditionDesc       TYPE zpm_aircndtndesc,
             Company                TYPE zpm_company,
             CompanyDesc            TYPE zpm_companydesc,
             Lift                   TYPE zpm_lift,
             LiftDesc               TYPE zpm_liftdesc,
             Logo                   TYPE zpm_logo,
             LogoDesc               TYPE zpm_logodesc,
             PledgeInfo             TYPE zpm_pledgeinfo,
             PledgeInfoDesc         TYPE zpm_pledgeinfodesc,
             PosternDoor            TYPE zpm_posterndoor,
             PosternDoorDesc        TYPE zpm_posterndoordesc,
             Seperator              TYPE zpm_seperator,
             SeperatorDesc          TYPE zpm_seperatordesc,
             Stepne                 TYPE zpm_stepne,
             StepneDesc             TYPE zpm_stepnedesc,
             StandingOrder          TYPE zpm_standingorder,
           END OF ty_field,
           tt_field TYPE TABLE OF ty_field.

    DATA lt_field TYPE tt_field.

    lt_field = CORRESPONDING #( it_original_data ).

    FINAL(lo_svc) = NEW zcl_equipmentdata_scm( ).
    FINAL(lt_data) = lo_svc->get_data( VALUE #( FOR ls_field IN lt_field
                                                ( equipment = ls_field-equipment ) ) ).

    LOOP AT lt_field ASSIGNING FIELD-SYMBOL(<fs_calculated_data>).
      ASSIGN COMPONENT 'VEHICLEBODYTYPE' OF STRUCTURE <fs_calculated_data> TO FIELD-SYMBOL(<fs_data>).
      ASSIGN COMPONENT 'VEHICLEBODYTYPEDESC' OF STRUCTURE <fs_calculated_data> TO FIELD-SYMBOL(<fs_text>).
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_pmvehicle_body_type_i = <fs_data> ]-description_vehicle_body_t OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'VEHICLESTATFOREQUI' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'VEHICLESTATFOREQUIDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_vehicle_stat_for_equi = <fs_data> ]-description_vehicle_stat_f OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'VEHICLEDOCTYPE' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'VEHICLEDOCTYPEDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_vehicle_doc_type_ieq = <fs_data> ]-description_vehicle_doc_ty OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'MODELYEAR' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'MODELYEARDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_pmmodel_year_ieq = <fs_data> ]-description_model_year OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'VEHICLETYPE' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'VEHICLETYPEDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_pmvehicle_type_ieq = <fs_data> ]-description_vehicle_type OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'INSURANCEAGENCY' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'INSURANCEAGENCYDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_insurance_agency_ieq = <fs_data> ]-description_insurance_agen OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'TRAFFICINSURANCEAG' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'TRAFFICINSURANCEAGDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_traffic_insurance_ag = <fs_data> ]-description_traffic_insura OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'PERSACCIDENTINSAG' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'PERSACCIDENTINSAGDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_pers_accident_ins_agc = <fs_data> ]-description_pers_accident OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'TENSIONBELT' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'TENSIONBELTDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_tension_belt_ieq = <fs_data> ]-description_tension_belt OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'PALLETNUMBER' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'PALLETNUMBERDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_pallet_number_ieq = <fs_data> ]-description_pallet_number OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'AIRCONDITION' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'AIRCONDITIONDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_air_cndtn_ieq = <fs_data> ]-description_air_condition OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'COMPANY' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'COMPANYDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_company_ieq = <fs_data> ]-description_company OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'LIFT' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'LIFTDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_lift_1_ieq = <fs_data> ]-description_lift OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'LOGO' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'LOGODESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_logo_1_ieq = <fs_data> ]-description_logo OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'PLEDGEINFO' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'PLEDGEINFODESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_pledge_info_ieq = <fs_data> ]-description_pledge_info OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'POSTERNDOOR' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'POSTERNDOORDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_postern_door_info_ieq = <fs_data> ]-description_postern_door OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'SEPERATOR' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'SEPERATORDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_separator_1_ieq = <fs_data> ]-description_separator OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'STEPNE' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      ASSIGN COMPONENT 'STEPNEDESC' OF STRUCTURE <fs_calculated_data> TO <fs_text>.
      IF <fs_data> IS ASSIGNED AND <fs_text> IS ASSIGNED.
        <fs_text> = VALUE #( lt_data[ yy_1_stepne_1_ieq = <fs_data> ]-description_stepne OPTIONAL ).
      ENDIF.
      UNASSIGN : <fs_data>, <fs_text>.
      ASSIGN COMPONENT 'STANDINGORDER' OF STRUCTURE <fs_calculated_data> TO <fs_data>.
      IF <fs_data> IS ASSIGNED.
        <fs_data> = VALUE #( lt_data[ standing_order_number = <fs_data> ]-standing_order_number OPTIONAL ).
      ENDIF.

    ENDLOOP.

    MOVE-CORRESPONDING lt_field TO ct_calculated_data.
  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
*    FINAL(lo_svc) = NEW zcl_equipmentdata_scm( ).
*    FINAL(lt_data) = lo_svc->get_data( ).
  ENDMETHOD.
ENDCLASS.
