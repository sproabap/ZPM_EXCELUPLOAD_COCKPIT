"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>YY1_EQUIPMENTDATA_1_CDS</em>
CLASS zpm_scm_equipmentdata_1 DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">YY1_AIRCNDTN_VType</p>
      BEGIN OF tys_yy_1_aircndtn_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 2,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_aircndtn_vtype,
      "! <p class="shorttext synchronized">List of YY1_AIRCNDTN_VType</p>
      tyt_yy_1_aircndtn_vtype TYPE STANDARD TABLE OF tys_yy_1_aircndtn_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_COMPANY_VType</p>
      BEGIN OF tys_yy_1_company_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 4,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_company_vtype,
      "! <p class="shorttext synchronized">List of YY1_COMPANY_VType</p>
      tyt_yy_1_company_vtype TYPE STANDARD TABLE OF tys_yy_1_company_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_EQUIPMENTDATA_1Type</p>
      BEGIN OF tys_yy_1_equipmentdata_1_type,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! YY1_VehicleStatForEqui_IEQ
        yy_1_vehicle_stat_for_equi TYPE c LENGTH 3,
        "! Language_VehicleStatForEqui
        language_vehicle_stat_for  TYPE c LENGTH 2,
        "! Description_VehicleStatForEqui
        description_vehicle_stat_f TYPE c LENGTH 60,
        "! YY1_AirCndtn_IEQ
        yy_1_air_cndtn_ieq         TYPE c LENGTH 2,
        "! Language_AirCondition
        language_air_condition     TYPE c LENGTH 2,
        "! Description_AirCondition
        description_air_condition  TYPE c LENGTH 60,
        "! YY1_Company_IEQ
        yy_1_company_ieq           TYPE c LENGTH 4,
        "! Language_Company
        language_company           TYPE c LENGTH 2,
        "! Description_Company
        description_company        TYPE c LENGTH 60,
        "! YY1_InsuranceAgency_IEQ
        yy_1_insurance_agency_ieq  TYPE c LENGTH 3,
        "! Language_InsuranceAgency
        language_insurance_agency  TYPE c LENGTH 2,
        "! Description_InsuranceAgency
        description_insurance_agen TYPE c LENGTH 60,
        "! YY1_Lift1_IEQ
        yy_1_lift_1_ieq            TYPE c LENGTH 1,
        "! Description_Lift
        description_lift           TYPE c LENGTH 60,
        "! Language_Lift
        language_lift              TYPE c LENGTH 2,
        "! YY1_Logo1_IEQ
        yy_1_logo_1_ieq            TYPE c LENGTH 1,
        "! Language_Logo
        language_logo              TYPE c LENGTH 2,
        "! Description_Logo
        description_logo           TYPE c LENGTH 60,
        "! YY1_PalletNumber_IEQ
        yy_1_pallet_number_ieq     TYPE c LENGTH 20,
        "! Description_PalletNumber
        description_pallet_number  TYPE c LENGTH 60,
        "! Language_PalletNumber
        language_pallet_number     TYPE c LENGTH 2,
        "! YY1_PersAccidentInsAgc_IEQ
        yy_1_pers_accident_ins_agc TYPE c LENGTH 3,
        "! Language_PersAccidentInsAg
        language_pers_accident_ins TYPE c LENGTH 2,
        "! Description_PersAccidentInsAg
        description_pers_accident  TYPE c LENGTH 60,
        "! YY1_PledgeInfo_IEQ
        yy_1_pledge_info_ieq       TYPE c LENGTH 1,
        "! Language_PledgeInfo
        language_pledge_info       TYPE c LENGTH 2,
        "! Description_PledgeInfo
        description_pledge_info    TYPE c LENGTH 60,
        "! YY1_PMModelYear_IEQ
        yy_1_pmmodel_year_ieq      TYPE c LENGTH 3,
        "! Language_ModelYear
        language_model_year        TYPE c LENGTH 2,
        "! Description_ModelYear
        description_model_year     TYPE c LENGTH 60,
        "! YY1_PMVehicleType_IEQ
        yy_1_pmvehicle_type_ieq    TYPE c LENGTH 3,
        "! Description_VehicleType
        description_vehicle_type   TYPE c LENGTH 60,
        "! Language_VehicleType
        language_vehicle_type      TYPE c LENGTH 2,
        "! YY1_PMVehicleBodyType_IEQ
        yy_1_pmvehicle_body_type_i TYPE c LENGTH 3,
        "! Language_VehicleBodyType
        language_vehicle_body_type TYPE c LENGTH 2,
        "! Description_VehicleBodyType
        description_vehicle_body_t TYPE c LENGTH 60,
        "! YY1_PosternDoorInfo_IEQ
        yy_1_postern_door_info_ieq TYPE c LENGTH 1,
        "! Language_PosternDoor
        language_postern_door      TYPE c LENGTH 2,
        "! Description_PosternDoor
        description_postern_door   TYPE c LENGTH 60,
        "! YY1_Separator1_IEQ
        yy_1_separator_1_ieq       TYPE c LENGTH 1,
        "! Language_Separator
        language_separator         TYPE c LENGTH 2,
        "! Description_Separator
        description_separator      TYPE c LENGTH 60,
        "! YY1_Stepne1_IEQ
        yy_1_stepne_1_ieq          TYPE c LENGTH 1,
        "! Language_Stepne
        language_stepne            TYPE c LENGTH 2,
        "! Description_Stepne
        description_stepne         TYPE c LENGTH 60,
        "! YY1_TensionBelt_IEQ
        yy_1_tension_belt_ieq      TYPE c LENGTH 3,
        "! Language_TensionBelt
        language_tension_belt      TYPE c LENGTH 2,
        "! Description_TensionBelt
        description_tension_belt   TYPE c LENGTH 60,
        "! YY1_TrafficInsuranceAg_IEQ
        yy_1_traffic_insurance_ag  TYPE c LENGTH 3,
        "! Description_TrafficInsuranceAg
        description_traffic_insura TYPE c LENGTH 60,
        "! Language_TrafficInsuranceAg
        language_traffic_insurance TYPE c LENGTH 2,
        "! YY1_VehicleDocType_IEQ
        yy_1_vehicle_doc_type_ieq  TYPE c LENGTH 3,
        "! Description_VehicleDocType
        description_vehicle_doc_ty TYPE c LENGTH 60,
        "! Language_VehicleDocType
        language_vehicle_doc_type  TYPE c LENGTH 2,
        "! StandingOrderNumber
        standing_order_number      TYPE c LENGTH 12,
      END OF tys_yy_1_equipmentdata_1_type,
      "! <p class="shorttext synchronized">List of YY1_EQUIPMENTDATA_1Type</p>
      tyt_yy_1_equipmentdata_1_type TYPE STANDARD TABLE OF tys_yy_1_equipmentdata_1_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_INSURANCEAGENCY_VType</p>
      BEGIN OF tys_yy_1_insuranceagency_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_insuranceagency_vtype,
      "! <p class="shorttext synchronized">List of YY1_INSURANCEAGENCY_VType</p>
      tyt_yy_1_insuranceagency_vtype TYPE STANDARD TABLE OF tys_yy_1_insuranceagency_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_LIFT1_VType</p>
      BEGIN OF tys_yy_1_lift_1_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 1,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_lift_1_vtype,
      "! <p class="shorttext synchronized">List of YY1_LIFT1_VType</p>
      tyt_yy_1_lift_1_vtype TYPE STANDARD TABLE OF tys_yy_1_lift_1_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_LOGO1_VType</p>
      BEGIN OF tys_yy_1_logo_1_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 1,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_logo_1_vtype,
      "! <p class="shorttext synchronized">List of YY1_LOGO1_VType</p>
      tyt_yy_1_logo_1_vtype TYPE STANDARD TABLE OF tys_yy_1_logo_1_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_PALLETNUMBER_VType</p>
      BEGIN OF tys_yy_1_palletnumber_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 20,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_palletnumber_vtype,
      "! <p class="shorttext synchronized">List of YY1_PALLETNUMBER_VType</p>
      tyt_yy_1_palletnumber_vtype TYPE STANDARD TABLE OF tys_yy_1_palletnumber_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_PERSACCIDENTINSAGC_VType</p>
      BEGIN OF tys_yy_1_persaccidentinsagc_vt,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_persaccidentinsagc_vt,
      "! <p class="shorttext synchronized">List of YY1_PERSACCIDENTINSAGC_VType</p>
      tyt_yy_1_persaccidentinsagc_vt TYPE STANDARD TABLE OF tys_yy_1_persaccidentinsagc_vt WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_PLEDGEINFO_VType</p>
      BEGIN OF tys_yy_1_pledgeinfo_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 1,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_pledgeinfo_vtype,
      "! <p class="shorttext synchronized">List of YY1_PLEDGEINFO_VType</p>
      tyt_yy_1_pledgeinfo_vtype TYPE STANDARD TABLE OF tys_yy_1_pledgeinfo_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_PMMODELYEAR_VType</p>
      BEGIN OF tys_yy_1_pmmodelyear_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_pmmodelyear_vtype,
      "! <p class="shorttext synchronized">List of YY1_PMMODELYEAR_VType</p>
      tyt_yy_1_pmmodelyear_vtype TYPE STANDARD TABLE OF tys_yy_1_pmmodelyear_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_PMVEHICLEBODYTYPE_VType</p>
      BEGIN OF tys_yy_1_pmvehiclebodytype_vty,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_pmvehiclebodytype_vty,
      "! <p class="shorttext synchronized">List of YY1_PMVEHICLEBODYTYPE_VType</p>
      tyt_yy_1_pmvehiclebodytype_vty TYPE STANDARD TABLE OF tys_yy_1_pmvehiclebodytype_vty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_PMVEHICLETYPE_VType</p>
      BEGIN OF tys_yy_1_pmvehicletype_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_pmvehicletype_vtype,
      "! <p class="shorttext synchronized">List of YY1_PMVEHICLETYPE_VType</p>
      tyt_yy_1_pmvehicletype_vtype TYPE STANDARD TABLE OF tys_yy_1_pmvehicletype_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_POSTERNDOORINFO_VType</p>
      BEGIN OF tys_yy_1_posterndoorinfo_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 1,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_posterndoorinfo_vtype,
      "! <p class="shorttext synchronized">List of YY1_POSTERNDOORINFO_VType</p>
      tyt_yy_1_posterndoorinfo_vtype TYPE STANDARD TABLE OF tys_yy_1_posterndoorinfo_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_SEPARATOR1_VType</p>
      BEGIN OF tys_yy_1_separator_1_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 1,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_separator_1_vtype,
      "! <p class="shorttext synchronized">List of YY1_SEPARATOR1_VType</p>
      tyt_yy_1_separator_1_vtype TYPE STANDARD TABLE OF tys_yy_1_separator_1_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_STEPNE1_VType</p>
      BEGIN OF tys_yy_1_stepne_1_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 1,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_stepne_1_vtype,
      "! <p class="shorttext synchronized">List of YY1_STEPNE1_VType</p>
      tyt_yy_1_stepne_1_vtype TYPE STANDARD TABLE OF tys_yy_1_stepne_1_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_TENSIONBELT_VType</p>
      BEGIN OF tys_yy_1_tensionbelt_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_tensionbelt_vtype,
      "! <p class="shorttext synchronized">List of YY1_TENSIONBELT_VType</p>
      tyt_yy_1_tensionbelt_vtype TYPE STANDARD TABLE OF tys_yy_1_tensionbelt_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_TRAFFICINSURANCEAG_VType</p>
      BEGIN OF tys_yy_1_trafficinsuranceag_vt,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_trafficinsuranceag_vt,
      "! <p class="shorttext synchronized">List of YY1_TRAFFICINSURANCEAG_VType</p>
      tyt_yy_1_trafficinsuranceag_vt TYPE STANDARD TABLE OF tys_yy_1_trafficinsuranceag_vt WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_VEHICLEDOCTYPE_VType</p>
      BEGIN OF tys_yy_1_vehicledoctype_vtype,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_vehicledoctype_vtype,
      "! <p class="shorttext synchronized">List of YY1_VEHICLEDOCTYPE_VType</p>
      tyt_yy_1_vehicledoctype_vtype TYPE STANDARD TABLE OF tys_yy_1_vehicledoctype_vtype WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">YY1_VEHICLESTATFOREQUI_VType</p>
      BEGIN OF tys_yy_1_vehiclestatforequi_vt,
        "! <em>Key property</em> Code
        code        TYPE c LENGTH 3,
        "! Code_Text
        code_text   TYPE c LENGTH 60,
        "! IsDisabled
        is_disabled TYPE abap_bool,
      END OF tys_yy_1_vehiclestatforequi_vt,
      "! <p class="shorttext synchronized">List of YY1_VEHICLESTATFOREQUI_VType</p>
      tyt_yy_1_vehiclestatforequi_vt TYPE STANDARD TABLE OF tys_yy_1_vehiclestatforequi_vt WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! YY1_AIRCNDTN_V
        "! <br/> Collection of type 'YY1_AIRCNDTN_VType'
        yy_1_aircndtn_v           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_AIRCNDTN_V',
        "! YY1_COMPANY_V
        "! <br/> Collection of type 'YY1_COMPANY_VType'
        yy_1_company_v            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_COMPANY_V',
        "! YY1_EQUIPMENTDATA_1
        "! <br/> Collection of type 'YY1_EQUIPMENTDATA_1Type'
        yy_1_equipmentdata_1      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_EQUIPMENTDATA_1',
        "! YY1_INSURANCEAGENCY_V
        "! <br/> Collection of type 'YY1_INSURANCEAGENCY_VType'
        yy_1_insuranceagency_v    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_INSURANCEAGENCY_V',
        "! YY1_LIFT1_V
        "! <br/> Collection of type 'YY1_LIFT1_VType'
        yy_1_lift_1_v             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_LIFT_1_V',
        "! YY1_LOGO1_V
        "! <br/> Collection of type 'YY1_LOGO1_VType'
        yy_1_logo_1_v             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_LOGO_1_V',
        "! YY1_PALLETNUMBER_V
        "! <br/> Collection of type 'YY1_PALLETNUMBER_VType'
        yy_1_palletnumber_v       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_PALLETNUMBER_V',
        "! YY1_PERSACCIDENTINSAGC_V
        "! <br/> Collection of type 'YY1_PERSACCIDENTINSAGC_VType'
        yy_1_persaccidentinsagc_v TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_PERSACCIDENTINSAGC_V',
        "! YY1_PLEDGEINFO_V
        "! <br/> Collection of type 'YY1_PLEDGEINFO_VType'
        yy_1_pledgeinfo_v         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_PLEDGEINFO_V',
        "! YY1_PMMODELYEAR_V
        "! <br/> Collection of type 'YY1_PMMODELYEAR_VType'
        yy_1_pmmodelyear_v        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_PMMODELYEAR_V',
        "! YY1_PMVEHICLEBODYTYPE_V
        "! <br/> Collection of type 'YY1_PMVEHICLEBODYTYPE_VType'
        yy_1_pmvehiclebodytype_v  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_PMVEHICLEBODYTYPE_V',
        "! YY1_PMVEHICLETYPE_V
        "! <br/> Collection of type 'YY1_PMVEHICLETYPE_VType'
        yy_1_pmvehicletype_v      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_PMVEHICLETYPE_V',
        "! YY1_POSTERNDOORINFO_V
        "! <br/> Collection of type 'YY1_POSTERNDOORINFO_VType'
        yy_1_posterndoorinfo_v    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_POSTERNDOORINFO_V',
        "! YY1_SEPARATOR1_V
        "! <br/> Collection of type 'YY1_SEPARATOR1_VType'
        yy_1_separator_1_v        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_SEPARATOR_1_V',
        "! YY1_STEPNE1_V
        "! <br/> Collection of type 'YY1_STEPNE1_VType'
        yy_1_stepne_1_v           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_STEPNE_1_V',
        "! YY1_TENSIONBELT_V
        "! <br/> Collection of type 'YY1_TENSIONBELT_VType'
        yy_1_tensionbelt_v        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_TENSIONBELT_V',
        "! YY1_TRAFFICINSURANCEAG_V
        "! <br/> Collection of type 'YY1_TRAFFICINSURANCEAG_VType'
        yy_1_trafficinsuranceag_v TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_TRAFFICINSURANCEAG_V',
        "! YY1_VEHICLEDOCTYPE_V
        "! <br/> Collection of type 'YY1_VEHICLEDOCTYPE_VType'
        yy_1_vehicledoctype_v     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_VEHICLEDOCTYPE_V',
        "! YY1_VEHICLESTATFOREQUI_V
        "! <br/> Collection of type 'YY1_VEHICLESTATFOREQUI_VType'
        yy_1_vehiclestatforequi_v TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'YY_1_VEHICLESTATFOREQUI_V',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for YY1_AIRCNDTN_VType</p>
        "! See also structure type {@link ..tys_yy_1_aircndtn_vtype}
        BEGIN OF yy_1_aircndtn_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_aircndtn_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_COMPANY_VType</p>
        "! See also structure type {@link ..tys_yy_1_company_vtype}
        BEGIN OF yy_1_company_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_company_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_EQUIPMENTDATA_1Type</p>
        "! See also structure type {@link ..tys_yy_1_equipmentdata_1_type}
        BEGIN OF yy_1_equipmentdata_1_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_YY1_AirCndtn_IEQ
            to_yy_1_air_cndtn_ieq      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_AIR_CNDTN_IEQ',
            "! to_YY1_Company_IEQ
            to_yy_1_company_ieq        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_COMPANY_IEQ',
            "! to_YY1_InsuranceAgency_IEQ
            to_yy_1_insurance_agency_i TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_INSURANCE_AGENCY_I',
            "! to_YY1_Lift1_IEQ
            to_yy_1_lift_1_ieq         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_LIFT_1_IEQ',
            "! to_YY1_Logo1_IEQ
            to_yy_1_logo_1_ieq         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_LOGO_1_IEQ',
            "! to_YY1_PalletNumber_IEQ
            to_yy_1_pallet_number_ieq  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_PALLET_NUMBER_IEQ',
            "! to_YY1_PersAccidentInsAgc_IEQ
            to_yy_1_pers_accident_ins  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_PERS_ACCIDENT_INS',
            "! to_YY1_PledgeInfo_IEQ
            to_yy_1_pledge_info_ieq    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_PLEDGE_INFO_IEQ',
            "! to_YY1_PMModelYear_IEQ
            to_yy_1_pmmodel_year_ieq   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_PMMODEL_YEAR_IEQ',
            "! to_YY1_PMVehicleBodyType_IEQ
            to_yy_1_pmvehicle_body_typ TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_PMVEHICLE_BODY_TYP',
            "! to_YY1_PMVehicleType_IEQ
            to_yy_1_pmvehicle_type_ieq TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_PMVEHICLE_TYPE_IEQ',
            "! to_YY1_PosternDoorInfo_IEQ
            to_yy_1_postern_door_info  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_POSTERN_DOOR_INFO',
            "! to_YY1_Separator1_IEQ
            to_yy_1_separator_1_ieq    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_SEPARATOR_1_IEQ',
            "! to_YY1_Stepne1_IEQ
            to_yy_1_stepne_1_ieq       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_STEPNE_1_IEQ',
            "! to_YY1_TensionBelt_IEQ
            to_yy_1_tension_belt_ieq   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_TENSION_BELT_IEQ',
            "! to_YY1_TrafficInsuranceAg_IEQ
            to_yy_1_traffic_insurance  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_TRAFFIC_INSURANCE',
            "! to_YY1_VehicleDocType_IEQ
            to_yy_1_vehicle_doc_type_i TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_VEHICLE_DOC_TYPE_I',
            "! to_YY1_VehicleStatForEqui_IEQ
            to_yy_1_vehicle_stat_for_e TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_YY_1_VEHICLE_STAT_FOR_E',
          END OF navigation,
        END OF yy_1_equipmentdata_1_type,
        "! <p class="shorttext synchronized">Internal names for YY1_INSURANCEAGENCY_VType</p>
        "! See also structure type {@link ..tys_yy_1_insuranceagency_vtype}
        BEGIN OF yy_1_insuranceagency_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_insuranceagency_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_LIFT1_VType</p>
        "! See also structure type {@link ..tys_yy_1_lift_1_vtype}
        BEGIN OF yy_1_lift_1_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_lift_1_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_LOGO1_VType</p>
        "! See also structure type {@link ..tys_yy_1_logo_1_vtype}
        BEGIN OF yy_1_logo_1_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_logo_1_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_PALLETNUMBER_VType</p>
        "! See also structure type {@link ..tys_yy_1_palletnumber_vtype}
        BEGIN OF yy_1_palletnumber_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_palletnumber_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_PERSACCIDENTINSAGC_VType</p>
        "! See also structure type {@link ..tys_yy_1_persaccidentinsagc_vt}
        BEGIN OF yy_1_persaccidentinsagc_vt,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_persaccidentinsagc_vt,
        "! <p class="shorttext synchronized">Internal names for YY1_PLEDGEINFO_VType</p>
        "! See also structure type {@link ..tys_yy_1_pledgeinfo_vtype}
        BEGIN OF yy_1_pledgeinfo_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_pledgeinfo_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_PMMODELYEAR_VType</p>
        "! See also structure type {@link ..tys_yy_1_pmmodelyear_vtype}
        BEGIN OF yy_1_pmmodelyear_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_pmmodelyear_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_PMVEHICLEBODYTYPE_VType</p>
        "! See also structure type {@link ..tys_yy_1_pmvehiclebodytype_vty}
        BEGIN OF yy_1_pmvehiclebodytype_vty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_pmvehiclebodytype_vty,
        "! <p class="shorttext synchronized">Internal names for YY1_PMVEHICLETYPE_VType</p>
        "! See also structure type {@link ..tys_yy_1_pmvehicletype_vtype}
        BEGIN OF yy_1_pmvehicletype_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_pmvehicletype_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_POSTERNDOORINFO_VType</p>
        "! See also structure type {@link ..tys_yy_1_posterndoorinfo_vtype}
        BEGIN OF yy_1_posterndoorinfo_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_posterndoorinfo_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_SEPARATOR1_VType</p>
        "! See also structure type {@link ..tys_yy_1_separator_1_vtype}
        BEGIN OF yy_1_separator_1_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_separator_1_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_STEPNE1_VType</p>
        "! See also structure type {@link ..tys_yy_1_stepne_1_vtype}
        BEGIN OF yy_1_stepne_1_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_stepne_1_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_TENSIONBELT_VType</p>
        "! See also structure type {@link ..tys_yy_1_tensionbelt_vtype}
        BEGIN OF yy_1_tensionbelt_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_tensionbelt_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_TRAFFICINSURANCEAG_VType</p>
        "! See also structure type {@link ..tys_yy_1_trafficinsuranceag_vt}
        BEGIN OF yy_1_trafficinsuranceag_vt,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_trafficinsuranceag_vt,
        "! <p class="shorttext synchronized">Internal names for YY1_VEHICLEDOCTYPE_VType</p>
        "! See also structure type {@link ..tys_yy_1_vehicledoctype_vtype}
        BEGIN OF yy_1_vehicledoctype_vtype,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_vehicledoctype_vtype,
        "! <p class="shorttext synchronized">Internal names for YY1_VEHICLESTATFOREQUI_VType</p>
        "! See also structure type {@link ..tys_yy_1_vehiclestatforequi_vt}
        BEGIN OF yy_1_vehiclestatforequi_vt,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF yy_1_vehiclestatforequi_vt,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define YY1_AIRCNDTN_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_aircndtn_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_COMPANY_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_company_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_EQUIPMENTDATA_1Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_equipmentdata_1_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_INSURANCEAGENCY_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_insuranceagency_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_LIFT1_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_lift_1_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_LOGO1_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_logo_1_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_PALLETNUMBER_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_palletnumber_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_PERSACCIDENTINSAGC_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_persaccidentinsagc_vt RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_PLEDGEINFO_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_pledgeinfo_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_PMMODELYEAR_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_pmmodelyear_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_PMVEHICLEBODYTYPE_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_pmvehiclebodytype_vty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_PMVEHICLETYPE_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_pmvehicletype_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_POSTERNDOORINFO_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_posterndoorinfo_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_SEPARATOR1_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_separator_1_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_STEPNE1_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_stepne_1_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_TENSIONBELT_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_tensionbelt_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_TRAFFICINSURANCEAG_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_trafficinsuranceag_vt RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_VEHICLEDOCTYPE_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_vehicledoctype_vtype RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define YY1_VEHICLESTATFOREQUI_VType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_yy_1_vehiclestatforequi_vt RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZPM_SCM_EQUIPMENTDATA_1 IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'YY1_EQUIPMENTDATA_1_CDS' ) ##NO_TEXT.

    def_yy_1_aircndtn_vtype( ).
    def_yy_1_company_vtype( ).
    def_yy_1_equipmentdata_1_type( ).
    def_yy_1_insuranceagency_vtype( ).
    def_yy_1_lift_1_vtype( ).
    def_yy_1_logo_1_vtype( ).
    def_yy_1_palletnumber_vtype( ).
    def_yy_1_persaccidentinsagc_vt( ).
    def_yy_1_pledgeinfo_vtype( ).
    def_yy_1_pmmodelyear_vtype( ).
    def_yy_1_pmvehiclebodytype_vty( ).
    def_yy_1_pmvehicletype_vtype( ).
    def_yy_1_posterndoorinfo_vtype( ).
    def_yy_1_separator_1_vtype( ).
    def_yy_1_stepne_1_vtype( ).
    def_yy_1_tensionbelt_vtype( ).
    def_yy_1_trafficinsuranceag_vt( ).
    def_yy_1_vehicledoctype_vtype( ).
    def_yy_1_vehiclestatforequi_vt( ).

  ENDMETHOD.


  METHOD def_yy_1_aircndtn_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_AIRCNDTN_VTYPE'
                                    is_structure              = VALUE tys_yy_1_aircndtn_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_AIRCNDTN_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_AIRCNDTN_V' ).
    lo_entity_set->set_edm_name( 'YY1_AIRCNDTN_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_company_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_COMPANY_VTYPE'
                                    is_structure              = VALUE tys_yy_1_company_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_COMPANY_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_COMPANY_V' ).
    lo_entity_set->set_edm_name( 'YY1_COMPANY_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_equipmentdata_1_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_EQUIPMENTDATA_1_TYPE'
                                    is_structure              = VALUE tys_yy_1_equipmentdata_1_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_EQUIPMENTDATA_1Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_EQUIPMENTDATA_1' ).
    lo_entity_set->set_edm_name( 'YY1_EQUIPMENTDATA_1' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_VEHICLE_STAT_FOR_EQUI' ).
    lo_primitive_property->set_edm_name( 'YY1_VehicleStatForEqui_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_VEHICLE_STAT_FOR' ).
    lo_primitive_property->set_edm_name( 'Language_VehicleStatForEqui' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_VEHICLE_STAT_F' ).
    lo_primitive_property->set_edm_name( 'Description_VehicleStatForEqui' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_AIR_CNDTN_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_AirCndtn_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_AIR_CONDITION' ).
    lo_primitive_property->set_edm_name( 'Language_AirCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_AIR_CONDITION' ).
    lo_primitive_property->set_edm_name( 'Description_AirCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_COMPANY_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Company_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_COMPANY' ).
    lo_primitive_property->set_edm_name( 'Language_Company' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_COMPANY' ).
    lo_primitive_property->set_edm_name( 'Description_Company' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSURANCE_AGENCY_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_InsuranceAgency_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_INSURANCE_AGENCY' ).
    lo_primitive_property->set_edm_name( 'Language_InsuranceAgency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_INSURANCE_AGEN' ).
    lo_primitive_property->set_edm_name( 'Description_InsuranceAgency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LIFT_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Lift1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_LIFT' ).
    lo_primitive_property->set_edm_name( 'Description_Lift' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_LIFT' ).
    lo_primitive_property->set_edm_name( 'Language_Lift' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LOGO_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Logo1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_LOGO' ).
    lo_primitive_property->set_edm_name( 'Language_Logo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_LOGO' ).
    lo_primitive_property->set_edm_name( 'Description_Logo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PALLET_NUMBER_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PalletNumber_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_PALLET_NUMBER' ).
    lo_primitive_property->set_edm_name( 'Description_PalletNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_PALLET_NUMBER' ).
    lo_primitive_property->set_edm_name( 'Language_PalletNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PERS_ACCIDENT_INS_AGC' ).
    lo_primitive_property->set_edm_name( 'YY1_PersAccidentInsAgc_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_PERS_ACCIDENT_INS' ).
    lo_primitive_property->set_edm_name( 'Language_PersAccidentInsAg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_PERS_ACCIDENT' ).
    lo_primitive_property->set_edm_name( 'Description_PersAccidentInsAg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PLEDGE_INFO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PledgeInfo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_PLEDGE_INFO' ).
    lo_primitive_property->set_edm_name( 'Language_PledgeInfo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_PLEDGE_INFO' ).
    lo_primitive_property->set_edm_name( 'Description_PledgeInfo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PMMODEL_YEAR_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PMModelYear_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_MODEL_YEAR' ).
    lo_primitive_property->set_edm_name( 'Language_ModelYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_MODEL_YEAR' ).
    lo_primitive_property->set_edm_name( 'Description_ModelYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PMVEHICLE_TYPE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PMVehicleType_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_VEHICLE_TYPE' ).
    lo_primitive_property->set_edm_name( 'Description_VehicleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_VEHICLE_TYPE' ).
    lo_primitive_property->set_edm_name( 'Language_VehicleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PMVEHICLE_BODY_TYPE_I' ).
    lo_primitive_property->set_edm_name( 'YY1_PMVehicleBodyType_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_VEHICLE_BODY_TYPE' ).
    lo_primitive_property->set_edm_name( 'Language_VehicleBodyType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_VEHICLE_BODY_T' ).
    lo_primitive_property->set_edm_name( 'Description_VehicleBodyType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_POSTERN_DOOR_INFO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PosternDoorInfo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_POSTERN_DOOR' ).
    lo_primitive_property->set_edm_name( 'Language_PosternDoor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_POSTERN_DOOR' ).
    lo_primitive_property->set_edm_name( 'Description_PosternDoor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_SEPARATOR_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Separator1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_SEPARATOR' ).
    lo_primitive_property->set_edm_name( 'Language_Separator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_SEPARATOR' ).
    lo_primitive_property->set_edm_name( 'Description_Separator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_STEPNE_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Stepne1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_STEPNE' ).
    lo_primitive_property->set_edm_name( 'Language_Stepne' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_STEPNE' ).
    lo_primitive_property->set_edm_name( 'Description_Stepne' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TENSION_BELT_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_TensionBelt_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_TENSION_BELT' ).
    lo_primitive_property->set_edm_name( 'Language_TensionBelt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_TENSION_BELT' ).
    lo_primitive_property->set_edm_name( 'Description_TensionBelt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TRAFFIC_INSURANCE_AG' ).
    lo_primitive_property->set_edm_name( 'YY1_TrafficInsuranceAg_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_TRAFFIC_INSURA' ).
    lo_primitive_property->set_edm_name( 'Description_TrafficInsuranceAg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_TRAFFIC_INSURANCE' ).
    lo_primitive_property->set_edm_name( 'Language_TrafficInsuranceAg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_VEHICLE_DOC_TYPE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_VehicleDocType_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_VEHICLE_DOC_TY' ).
    lo_primitive_property->set_edm_name( 'Description_VehicleDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_VEHICLE_DOC_TYPE' ).
    lo_primitive_property->set_edm_name( 'Language_VehicleDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDING_ORDER_NUMBER' ).
    lo_primitive_property->set_edm_name( 'StandingOrderNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_AIR_CNDTN_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_AirCndtn_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_AIRCNDTN_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_COMPANY_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_Company_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_COMPANY_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_INSURANCE_AGENCY_I' ).
    lo_navigation_property->set_edm_name( 'to_YY1_InsuranceAgency_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_INSURANCEAGENCY_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_LIFT_1_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_Lift1_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_LIFT_1_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_LOGO_1_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_Logo1_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_LOGO_1_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_PALLET_NUMBER_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_PalletNumber_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_PALLETNUMBER_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_PERS_ACCIDENT_INS' ).
    lo_navigation_property->set_edm_name( 'to_YY1_PersAccidentInsAgc_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_PERSACCIDENTINSAGC_VT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_PLEDGE_INFO_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_PledgeInfo_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_PLEDGEINFO_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_PMMODEL_YEAR_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_PMModelYear_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_PMMODELYEAR_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_PMVEHICLE_BODY_TYP' ).
    lo_navigation_property->set_edm_name( 'to_YY1_PMVehicleBodyType_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_PMVEHICLEBODYTYPE_VTY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_PMVEHICLE_TYPE_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_PMVehicleType_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_PMVEHICLETYPE_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_POSTERN_DOOR_INFO' ).
    lo_navigation_property->set_edm_name( 'to_YY1_PosternDoorInfo_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_POSTERNDOORINFO_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_SEPARATOR_1_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_Separator1_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_SEPARATOR_1_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_STEPNE_1_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_Stepne1_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_STEPNE_1_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_TENSION_BELT_IEQ' ).
    lo_navigation_property->set_edm_name( 'to_YY1_TensionBelt_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_TENSIONBELT_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_TRAFFIC_INSURANCE' ).
    lo_navigation_property->set_edm_name( 'to_YY1_TrafficInsuranceAg_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_TRAFFICINSURANCEAG_VT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_VEHICLE_DOC_TYPE_I' ).
    lo_navigation_property->set_edm_name( 'to_YY1_VehicleDocType_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_VEHICLEDOCTYPE_VTYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_YY_1_VEHICLE_STAT_FOR_E' ).
    lo_navigation_property->set_edm_name( 'to_YY1_VehicleStatForEqui_IEQ' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'YY_1_VEHICLESTATFOREQUI_VT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_yy_1_insuranceagency_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_INSURANCEAGENCY_VTYPE'
                                    is_structure              = VALUE tys_yy_1_insuranceagency_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_INSURANCEAGENCY_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_INSURANCEAGENCY_V' ).
    lo_entity_set->set_edm_name( 'YY1_INSURANCEAGENCY_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_lift_1_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_LIFT_1_VTYPE'
                                    is_structure              = VALUE tys_yy_1_lift_1_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_LIFT1_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_LIFT_1_V' ).
    lo_entity_set->set_edm_name( 'YY1_LIFT1_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_logo_1_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_LOGO_1_VTYPE'
                                    is_structure              = VALUE tys_yy_1_logo_1_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_LOGO1_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_LOGO_1_V' ).
    lo_entity_set->set_edm_name( 'YY1_LOGO1_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_palletnumber_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_PALLETNUMBER_VTYPE'
                                    is_structure              = VALUE tys_yy_1_palletnumber_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_PALLETNUMBER_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_PALLETNUMBER_V' ).
    lo_entity_set->set_edm_name( 'YY1_PALLETNUMBER_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_persaccidentinsagc_vt.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_PERSACCIDENTINSAGC_VT'
                                    is_structure              = VALUE tys_yy_1_persaccidentinsagc_vt( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_PERSACCIDENTINSAGC_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_PERSACCIDENTINSAGC_V' ).
    lo_entity_set->set_edm_name( 'YY1_PERSACCIDENTINSAGC_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_pledgeinfo_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_PLEDGEINFO_VTYPE'
                                    is_structure              = VALUE tys_yy_1_pledgeinfo_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_PLEDGEINFO_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_PLEDGEINFO_V' ).
    lo_entity_set->set_edm_name( 'YY1_PLEDGEINFO_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_pmmodelyear_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_PMMODELYEAR_VTYPE'
                                    is_structure              = VALUE tys_yy_1_pmmodelyear_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_PMMODELYEAR_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_PMMODELYEAR_V' ).
    lo_entity_set->set_edm_name( 'YY1_PMMODELYEAR_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_pmvehiclebodytype_vty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_PMVEHICLEBODYTYPE_VTY'
                                    is_structure              = VALUE tys_yy_1_pmvehiclebodytype_vty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_PMVEHICLEBODYTYPE_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_PMVEHICLEBODYTYPE_V' ).
    lo_entity_set->set_edm_name( 'YY1_PMVEHICLEBODYTYPE_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_pmvehicletype_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_PMVEHICLETYPE_VTYPE'
                                    is_structure              = VALUE tys_yy_1_pmvehicletype_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_PMVEHICLETYPE_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_PMVEHICLETYPE_V' ).
    lo_entity_set->set_edm_name( 'YY1_PMVEHICLETYPE_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_posterndoorinfo_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_POSTERNDOORINFO_VTYPE'
                                    is_structure              = VALUE tys_yy_1_posterndoorinfo_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_POSTERNDOORINFO_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_POSTERNDOORINFO_V' ).
    lo_entity_set->set_edm_name( 'YY1_POSTERNDOORINFO_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_separator_1_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_SEPARATOR_1_VTYPE'
                                    is_structure              = VALUE tys_yy_1_separator_1_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_SEPARATOR1_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_SEPARATOR_1_V' ).
    lo_entity_set->set_edm_name( 'YY1_SEPARATOR1_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_stepne_1_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_STEPNE_1_VTYPE'
                                    is_structure              = VALUE tys_yy_1_stepne_1_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_STEPNE1_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_STEPNE_1_V' ).
    lo_entity_set->set_edm_name( 'YY1_STEPNE1_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_tensionbelt_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_TENSIONBELT_VTYPE'
                                    is_structure              = VALUE tys_yy_1_tensionbelt_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_TENSIONBELT_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_TENSIONBELT_V' ).
    lo_entity_set->set_edm_name( 'YY1_TENSIONBELT_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_trafficinsuranceag_vt.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_TRAFFICINSURANCEAG_VT'
                                    is_structure              = VALUE tys_yy_1_trafficinsuranceag_vt( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_TRAFFICINSURANCEAG_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_TRAFFICINSURANCEAG_V' ).
    lo_entity_set->set_edm_name( 'YY1_TRAFFICINSURANCEAG_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_vehicledoctype_vtype.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_VEHICLEDOCTYPE_VTYPE'
                                    is_structure              = VALUE tys_yy_1_vehicledoctype_vtype( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_VEHICLEDOCTYPE_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_VEHICLEDOCTYPE_V' ).
    lo_entity_set->set_edm_name( 'YY1_VEHICLEDOCTYPE_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_yy_1_vehiclestatforequi_vt.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'YY_1_VEHICLESTATFOREQUI_VT'
                                    is_structure              = VALUE tys_yy_1_vehiclestatforequi_vt( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'YY1_VEHICLESTATFOREQUI_VType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'YY_1_VEHICLESTATFOREQUI_V' ).
    lo_entity_set->set_edm_name( 'YY1_VEHICLESTATFOREQUI_V' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Code_Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DISABLED' ).
    lo_primitive_property->set_edm_name( 'IsDisabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.
ENDCLASS.
