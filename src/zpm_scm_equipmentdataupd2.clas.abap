"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>cds_api_equipment</em>
CLASS zpm_scm_equipmentdataupd2 DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type ABCINDICATOR_COPY_IS_REQUE
        abcindicator_copy_is_reque TYPE abap_bool,
        "! Used for primitive type ABCINDICATOR_COPY_IS_REQ_2
        abcindicator_copy_is_req_2 TYPE abap_bool,
        "! Used for primitive type BUSINESS_AREA_COPY_IS_REQU
        business_area_copy_is_requ TYPE abap_bool,
        "! Used for primitive type BUSINESS_AREA_COPY_IS_RE_2
        business_area_copy_is_re_2 TYPE abap_bool,
        "! Used for primitive type CATALOG_PROFILE_COPY_IS_RE
        catalog_profile_copy_is_re TYPE abap_bool,
        "! Used for primitive type CATALOG_PROFILE_COPY_IS__2
        catalog_profile_copy_is__2 TYPE abap_bool,
        "! Used for primitive type COST_CENTER_COPY_IS_REQUES
        cost_center_copy_is_reques TYPE abap_bool,
        "! Used for primitive type COST_CENTER_COPY_IS_REQU_2
        cost_center_copy_is_requ_2 TYPE abap_bool,
        "! Used for primitive type EQUIPMENT_2
        equipment_2                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_3
        equipment_3                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_4
        equipment_4                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_5
        equipment_5                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_6
        equipment_6                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_7
        equipment_7                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_8
        equipment_8                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_9
        equipment_9                TYPE c LENGTH 18,
        "! Used for primitive type EQUIPMENT_INSTALLATION_DAT
        equipment_installation_dat TYPE datn,
        "! Used for primitive type EQUIPMENT_INSTALLATION_D_2
        equipment_installation_d_2 TYPE datn,
        "! Used for primitive type EQUIPMENT_INSTALLATION_D_3
        equipment_installation_d_3 TYPE datn,
        "! Used for primitive type EQUIPMENT_INSTALLATION_D_4
        equipment_installation_d_4 TYPE datn,
        "! Used for primitive type EQUIPMENT_INSTALLATION_TIM
        equipment_installation_tim TYPE timn,
        "! Used for primitive type EQUIPMENT_INSTALLATION_T_2
        equipment_installation_t_2 TYPE timn,
        "! Used for primitive type EQUIPMENT_INSTALLATION_T_3
        equipment_installation_t_3 TYPE timn,
        "! Used for primitive type EQUIPMENT_INSTALLATION_T_4
        equipment_installation_t_4 TYPE timn,
        "! Used for primitive type EQUIP_INSTALLATION_POSITIO
        equip_installation_positio TYPE c LENGTH 6,
        "! Used for primitive type EQUIP_INSTALLATION_POSIT_2
        equip_installation_posit_2 TYPE c LENGTH 4,
        "! Used for primitive type EQUIP_INSTALLATION_POSIT_3
        equip_installation_posit_3 TYPE c LENGTH 6,
        "! Used for primitive type EQUIP_INSTALLATION_POSIT_4
        equip_installation_posit_4 TYPE c LENGTH 4,
        "! Used for primitive type EQUIP_INSTALLATION_POS_IN
        equip_installation_pos_in  TYPE c LENGTH 4,
        "! Used for primitive type EQUIP_INSTALLATION_POS_I_2
        equip_installation_pos_i_2 TYPE c LENGTH 4,
        "! Used for primitive type FUNCTIONAL_LOCATION
        functional_location        TYPE c LENGTH 40,
        "! Used for primitive type FUNCTIONAL_LOCATION_2
        functional_location_2      TYPE c LENGTH 40,
        "! Used for primitive type FUNCTIONAL_LOCATION_3
        functional_location_3      TYPE c LENGTH 40,
        "! Used for primitive type FUNCTIONAL_LOCATION_4
        functional_location_4      TYPE c LENGTH 40,
        "! Used for primitive type LOCATION_COPY_IS_REQUESTED
        location_copy_is_requested TYPE abap_bool,
        "! Used for primitive type LOCATION_COPY_IS_REQUEST_2
        location_copy_is_request_2 TYPE abap_bool,
        "! Used for primitive type MAINT_PLANNING_PLANT_COPY
        maint_planning_plant_copy  TYPE abap_bool,
        "! Used for primitive type MAINT_PLANNING_PLANT_COP_2
        maint_planning_plant_cop_2 TYPE abap_bool,
        "! Used for primitive type MAINT_WORK_CENTER_COPY_IS
        maint_work_center_copy_is  TYPE abap_bool,
        "! Used for primitive type MAINT_WORK_CENTER_COPY_I_2
        maint_work_center_copy_i_2 TYPE abap_bool,
        "! Used for primitive type PLANT_SECTION_COPY_IS_REQU
        plant_section_copy_is_requ TYPE abap_bool,
        "! Used for primitive type PLANT_SECTION_COPY_IS_RE_2
        plant_section_copy_is_re_2 TYPE abap_bool,
        "! Used for primitive type ROOM_COPY_IS_REQUESTED
        room_copy_is_requested     TYPE abap_bool,
        "! Used for primitive type ROOM_COPY_IS_REQUESTED_2
        room_copy_is_requested_2   TYPE abap_bool,
        "! Used for primitive type SALES_ORGANIZATION_COPY_IS
        sales_organization_copy_is TYPE abap_bool,
        "! Used for primitive type SALES_ORGANIZATION_COPY__2
        sales_organization_copy__2 TYPE abap_bool,
        "! Used for primitive type SETTLEMENT_ORDER_COPY_IS_2
        settlement_order_copy_is_2 TYPE abap_bool,
        "! Used for primitive type SETTLEMENT_ORDER_COPY_IS_R
        settlement_order_copy_is_r TYPE abap_bool,
        "! Used for primitive type SORT_FIELD_COPY_IS_REQUEST
        sort_field_copy_is_request TYPE abap_bool,
        "! Used for primitive type SORT_FIELD_COPY_IS_REQUE_2
        sort_field_copy_is_reque_2 TYPE abap_bool,
        "! Used for primitive type STANDING_ORDER_COPY_IS_REQ
        standing_order_copy_is_req TYPE abap_bool,
        "! Used for primitive type STANDING_ORDER_COPY_IS_R_2
        standing_order_copy_is_r_2 TYPE abap_bool,
        "! Used for primitive type SUPERORDINATE_EQUIPMENT
        superordinate_equipment    TYPE c LENGTH 18,
        "! Used for primitive type SUPERORDINATE_EQUIPMENT_2
        superordinate_equipment_2  TYPE c LENGTH 18,
        "! Used for primitive type SUPERORDINATE_EQUIPMENT_3
        superordinate_equipment_3  TYPE c LENGTH 18,
        "! Used for primitive type SUPERORDINATE_EQUIPMENT_4
        superordinate_equipment_4  TYPE c LENGTH 18,
        "! Used for primitive type VALIDITY_END_DATE
        validity_end_date          TYPE datn,
        "! Used for primitive type VALIDITY_END_DATE_2
        validity_end_date_2        TYPE datn,
        "! Used for primitive type VALIDITY_END_DATE_3
        validity_end_date_3        TYPE datn,
        "! Used for primitive type VALIDITY_END_DATE_4
        validity_end_date_4        TYPE datn,
        "! Used for primitive type VALIDITY_END_DATE_5
        validity_end_date_5        TYPE datn,
        "! Used for primitive type VALIDITY_END_DATE_6
        validity_end_date_6        TYPE datn,
        "! Used for primitive type VALIDITY_END_DATE_7
        validity_end_date_7        TYPE datn,
        "! Used for primitive type VALIDITY_END_DATE_8
        validity_end_date_8        TYPE datn,
        "! Used for primitive type WBSELEMENT_COPY_IS_REQUEST
        wbselement_copy_is_request TYPE abap_bool,
        "! Used for primitive type WBSELEMENT_COPY_IS_REQUE_2
        wbselement_copy_is_reque_2 TYPE abap_bool,
        "! Used for primitive type WORK_CENTER_COPY_IS_REQUES
        work_center_copy_is_reques TYPE abap_bool,
        "! Used for primitive type WORK_CENTER_COPY_IS_REQU_2
        work_center_copy_is_requ_2 TYPE abap_bool,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">DummyFunctionImportResult</p>
      BEGIN OF tys_dummy_function_import_resu,
        "! IsInvalid
        is_invalid TYPE abap_bool,
      END OF tys_dummy_function_import_resu,
      "! <p class="shorttext synchronized">List of DummyFunctionImportResult</p>
      tyt_dummy_function_import_resu TYPE STANDARD TABLE OF tys_dummy_function_import_resu WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function DismantleEquipment</p>
      "! <em>with the internal name</em> DISMANTLE_EQUIPMENT
      BEGIN OF tys_parameters_1,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! SuperordinateEquipment
        superordinate_equipment    TYPE c LENGTH 18,
        "! EquipInstallationPositionNmbr
        equip_installation_positio TYPE c LENGTH 6,
        "! EquipInstallationPosInChar
        equip_installation_pos_in  TYPE c LENGTH 4,
        "! FunctionalLocation
        functional_location        TYPE c LENGTH 40,
        "! EquipmentInstallationDate
        equipment_installation_dat TYPE datn,
        "! EquipmentInstallationTime
        equipment_installation_tim TYPE timn,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function DismantleEquipWithDataTransfer</p>
      "! <em>with the internal name</em> DISMANTLE_EQUIP_WITH_DATA
      BEGIN OF tys_parameters_2,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! SuperordinateEquipment
        superordinate_equipment    TYPE c LENGTH 18,
        "! FunctionalLocation
        functional_location        TYPE c LENGTH 40,
        "! EquipInstallationPositionNmbr
        equip_installation_positio TYPE c LENGTH 4,
        "! EquipmentInstallationDate
        equipment_installation_dat TYPE datn,
        "! EquipmentInstallationTime
        equipment_installation_tim TYPE timn,
        "! LocationCopyIsRequested
        location_copy_is_requested TYPE abap_bool,
        "! RoomCopyIsRequested
        room_copy_is_requested     TYPE abap_bool,
        "! PlantSectionCopyIsRequested
        plant_section_copy_is_requ TYPE abap_bool,
        "! WorkCenterCopyIsRequested
        work_center_copy_is_reques TYPE abap_bool,
        "! ABCIndicatorCopyIsRequested
        abcindicator_copy_is_reque TYPE abap_bool,
        "! SortFieldCopyIsRequested
        sort_field_copy_is_request TYPE abap_bool,
        "! BusinessAreaCopyIsRequested
        business_area_copy_is_requ TYPE abap_bool,
        "! CostCenterCopyIsRequested
        cost_center_copy_is_reques TYPE abap_bool,
        "! WBSElementCopyIsRequested
        wbselement_copy_is_request TYPE abap_bool,
        "! StandingOrderCopyIsRequested
        standing_order_copy_is_req TYPE abap_bool,
        "! SettlementOrderCopyIsRequested
        settlement_order_copy_is_r TYPE abap_bool,
        "! MaintPlanningPlantCopyIsReqd
        maint_planning_plant_copy  TYPE abap_bool,
        "! MaintWorkCenterCopyIsRequested
        maint_work_center_copy_is  TYPE abap_bool,
        "! CatalogProfileCopyIsRequested
        catalog_profile_copy_is_re TYPE abap_bool,
        "! SalesOrganizationCopyIsReqd
        sales_organization_copy_is TYPE abap_bool,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function InstallEquipment</p>
      "! <em>with the internal name</em> INSTALL_EQUIPMENT
      BEGIN OF tys_parameters_3,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! SuperordinateEquipment
        superordinate_equipment    TYPE c LENGTH 18,
        "! EquipInstallationPositionNmbr
        equip_installation_positio TYPE c LENGTH 6,
        "! EquipInstallationPosInChar
        equip_installation_pos_in  TYPE c LENGTH 4,
        "! FunctionalLocation
        functional_location        TYPE c LENGTH 40,
        "! EquipmentInstallationDate
        equipment_installation_dat TYPE datn,
        "! EquipmentInstallationTime
        equipment_installation_tim TYPE timn,
      END OF tys_parameters_3,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_3</p>
      tyt_parameters_3 TYPE STANDARD TABLE OF tys_parameters_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function InstallEquipWithDataTransfer</p>
      "! <em>with the internal name</em> INSTALL_EQUIP_WITH_DATA_TR
      BEGIN OF tys_parameters_4,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! SuperordinateEquipment
        superordinate_equipment    TYPE c LENGTH 18,
        "! FunctionalLocation
        functional_location        TYPE c LENGTH 40,
        "! EquipInstallationPositionNmbr
        equip_installation_positio TYPE c LENGTH 4,
        "! EquipmentInstallationDate
        equipment_installation_dat TYPE datn,
        "! EquipmentInstallationTime
        equipment_installation_tim TYPE timn,
        "! LocationCopyIsRequested
        location_copy_is_requested TYPE abap_bool,
        "! RoomCopyIsRequested
        room_copy_is_requested     TYPE abap_bool,
        "! PlantSectionCopyIsRequested
        plant_section_copy_is_requ TYPE abap_bool,
        "! WorkCenterCopyIsRequested
        work_center_copy_is_reques TYPE abap_bool,
        "! ABCIndicatorCopyIsRequested
        abcindicator_copy_is_reque TYPE abap_bool,
        "! SortFieldCopyIsRequested
        sort_field_copy_is_request TYPE abap_bool,
        "! BusinessAreaCopyIsRequested
        business_area_copy_is_requ TYPE abap_bool,
        "! CostCenterCopyIsRequested
        cost_center_copy_is_reques TYPE abap_bool,
        "! WBSElementCopyIsRequested
        wbselement_copy_is_request TYPE abap_bool,
        "! StandingOrderCopyIsRequested
        standing_order_copy_is_req TYPE abap_bool,
        "! SettlementOrderCopyIsRequested
        settlement_order_copy_is_r TYPE abap_bool,
        "! MaintPlanningPlantCopyIsReqd
        maint_planning_plant_copy  TYPE abap_bool,
        "! MaintWorkCenterCopyIsRequested
        maint_work_center_copy_is  TYPE abap_bool,
        "! CatalogProfileCopyIsRequested
        catalog_profile_copy_is_re TYPE abap_bool,
        "! SalesOrganizationCopyIsReqd
        sales_organization_copy_is TYPE abap_bool,
      END OF tys_parameters_4,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_4</p>
      tyt_parameters_4 TYPE STANDARD TABLE OF tys_parameters_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function ResetEquipmentFromInactive</p>
      "! <em>with the internal name</em> RESET_EQUIPMENT_FROM_INACT
      BEGIN OF tys_parameters_5,
        "! Equipment
        equipment         TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date TYPE datn,
      END OF tys_parameters_5,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_5</p>
      tyt_parameters_5 TYPE STANDARD TABLE OF tys_parameters_5 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function RsetEquipFromMarkedForDeletion</p>
      "! <em>with the internal name</em> RSET_EQUIP_FROM_MARKED_FOR
      BEGIN OF tys_parameters_6,
        "! Equipment
        equipment         TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date TYPE datn,
      END OF tys_parameters_6,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_6</p>
      tyt_parameters_6 TYPE STANDARD TABLE OF tys_parameters_6 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function SetEquipmentToInactive</p>
      "! <em>with the internal name</em> SET_EQUIPMENT_TO_INACTIVE
      BEGIN OF tys_parameters_7,
        "! Equipment
        equipment         TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date TYPE datn,
      END OF tys_parameters_7,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_7</p>
      tyt_parameters_7 TYPE STANDARD TABLE OF tys_parameters_7 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function SetEquipToMarkedForDeletion</p>
      "! <em>with the internal name</em> SET_EQUIP_TO_MARKED_FOR_DE
      BEGIN OF tys_parameters_8,
        "! Equipment
        equipment         TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date TYPE datn,
      END OF tys_parameters_8,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_8</p>
      tyt_parameters_8 TYPE STANDARD TABLE OF tys_parameters_8 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipmentClassCharacteristicType</p>
      BEGIN OF tys_equipment_class_characte_2,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! <em>Key property</em> ClassInternalID
        class_internal_id          TYPE c LENGTH 10,
        "! <em>Key property</em> CharacteristicInternalID
        characteristic_internal_id TYPE c LENGTH 10,
        "! Characteristic
        characteristic             TYPE c LENGTH 30,
        "! CharcDataType
        charc_data_type            TYPE c LENGTH 4,
        "! KeyDate
        key_date                   TYPE datn,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! ClassType
        class_type                 TYPE c LENGTH 3,
        "! Class
        class                      TYPE c LENGTH 18,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_equipment_class_characte_2,
      "! <p class="shorttext synchronized">List of EquipmentClassCharacteristicType</p>
      tyt_equipment_class_characte_2 TYPE STANDARD TABLE OF tys_equipment_class_characte_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipmentClassType</p>
      BEGIN OF tys_equipment_class_type,
        "! <em>Key property</em> Equipment
        equipment               TYPE c LENGTH 18,
        "! <em>Key property</em> ClassInternalID
        class_internal_id       TYPE c LENGTH 10,
        "! <em>Key property</em> ClassType
        class_type              TYPE c LENGTH 3,
        "! KeyDate
        key_date                TYPE datn,
        "! ChangeNumber
        change_number           TYPE c LENGTH 12,
        "! ClfnStatus
        clfn_status             TYPE c LENGTH 1,
        "! ClassPositionNumber
        class_position_number   TYPE int2,
        "! ClassIsStandardClass
        class_is_standard_class TYPE c LENGTH 1,
        "! ClfnObjectInternalID
        clfn_object_internal_id TYPE c LENGTH 18,
        "! ValidityEndDate
        validity_end_date       TYPE datn,
        "! Class
        class                   TYPE c LENGTH 18,
        "! odata.etag
        etag                    TYPE string,
      END OF tys_equipment_class_type,
      "! <p class="shorttext synchronized">List of EquipmentClassType</p>
      tyt_equipment_class_type TYPE STANDARD TABLE OF tys_equipment_class_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipmentLongTextType</p>
      BEGIN OF tys_equipment_long_text_type,
        "! <em>Key property</em> Equipment
        equipment           TYPE c LENGTH 18,
        "! TextObjectKey
        text_object_key     TYPE c LENGTH 18,
        "! Language
        language            TYPE c LENGTH 2,
        "! EquipmentLongText
        equipment_long_text TYPE string,
        "! odata.etag
        etag                TYPE string,
      END OF tys_equipment_long_text_type,
      "! <p class="shorttext synchronized">List of EquipmentLongTextType</p>
      tyt_equipment_long_text_type TYPE STANDARD TABLE OF tys_equipment_long_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipmentPartnerType</p>
      BEGIN OF tys_equipment_partner_type,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! <em>Key property</em> PartnerFunction
        partner_function           TYPE c LENGTH 2,
        "! <em>Key property</em> EquipmentPartnerObjectNmbr
        equipment_partner_object_n TYPE c LENGTH 6,
        "! Partner
        partner                    TYPE c LENGTH 12,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! CreationDate
        creation_date              TYPE datn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_equipment_partner_type,
      "! <p class="shorttext synchronized">List of EquipmentPartnerType</p>
      tyt_equipment_partner_type TYPE STANDARD TABLE OF tys_equipment_partner_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipmentType</p>
      BEGIN OF tys_equipment_type,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date          TYPE datn,
        "! ValidityEndTime
        validity_end_time          TYPE timn,
        "! EquipmentValidityEndDateTime
        equipment_validity_end_dat TYPE timestamp,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! EquipmentOID
        equipment_oid              TYPE c LENGTH 128,
        "! EquipmentName
        equipment_name             TYPE c LENGTH 40,
        "! EquipmentCategory
        equipment_category         TYPE c LENGTH 1,
        "! TechnicalObjectType
        technical_object_type      TYPE c LENGTH 10,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! GrossWeight
        gross_weight               TYPE p LENGTH 7 DECIMALS 3,
        "! GrossWeightUnit
        gross_weight_unit          TYPE c LENGTH 3,
        "! SizeOrDimensionText
        size_or_dimension_text     TYPE c LENGTH 18,
        "! InventoryNumber
        inventory_number           TYPE c LENGTH 25,
        "! OperationStartDate
        operation_start_date       TYPE datn,
        "! AcquisitionValue
        acquisition_value          TYPE p LENGTH 7 DECIMALS 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! AcquisitionDate
        acquisition_date           TYPE datn,
        "! AssetManufacturerName
        asset_manufacturer_name    TYPE c LENGTH 30,
        "! ManufacturerPartTypeName
        manufacturer_part_type_nam TYPE c LENGTH 20,
        "! ManufacturerCountry
        manufacturer_country       TYPE c LENGTH 3,
        "! ConstructionYear
        construction_year          TYPE c LENGTH 4,
        "! ConstructionMonth
        construction_month         TYPE c LENGTH 2,
        "! ManufacturerPartNmbr
        manufacturer_part_nmbr     TYPE c LENGTH 30,
        "! ManufacturerSerialNumber
        manufacturer_serial_number TYPE c LENGTH 30,
        "! EquipmentEndOfUseDate
        equipment_end_of_use_date  TYPE datn,
        "! MaintenancePlant
        maintenance_plant          TYPE c LENGTH 4,
        "! AssetLocation
        asset_location             TYPE c LENGTH 10,
        "! AssetRoom
        asset_room                 TYPE c LENGTH 8,
        "! PlantSection
        plant_section              TYPE c LENGTH 3,
        "! WorkCenter
        work_center                TYPE c LENGTH 8,
        "! WorkCenterInternalID
        work_center_internal_id    TYPE c LENGTH 8,
        "! WorkCenterPlant
        work_center_plant          TYPE c LENGTH 4,
        "! ABCIndicator
        abcindicator               TYPE c LENGTH 1,
        "! MaintObjectFreeDefinedAttrib
        maint_object_free_defined  TYPE c LENGTH 30,
        "! FormOfAddress
        form_of_address            TYPE c LENGTH 4,
        "! BusinessPartnerName1
        business_partner_name_1    TYPE c LENGTH 40,
        "! BusinessPartnerName2
        business_partner_name_2    TYPE c LENGTH 40,
        "! CityName
        city_name                  TYPE c LENGTH 40,
        "! HouseNumber
        house_number               TYPE c LENGTH 10,
        "! HouseNumberSupplementText
        house_number_supplement_te TYPE c LENGTH 10,
        "! Building
        building                   TYPE c LENGTH 20,
        "! Floor
        floor                      TYPE c LENGTH 10,
        "! RoomNumber
        room_number                TYPE c LENGTH 10,
        "! PostalCode
        postal_code                TYPE c LENGTH 10,
        "! StreetName
        street_name                TYPE c LENGTH 60,
        "! Region
        region                     TYPE c LENGTH 3,
        "! Country
        country                    TYPE c LENGTH 3,
        "! PhoneNumber
        phone_number               TYPE c LENGTH 30,
        "! FaxNumber
        fax_number                 TYPE c LENGTH 30,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! BusinessArea
        business_area              TYPE c LENGTH 4,
        "! MasterFixedAsset
        master_fixed_asset         TYPE c LENGTH 12,
        "! FixedAsset
        fixed_asset                TYPE c LENGTH 4,
        "! CostCenter
        cost_center                TYPE c LENGTH 10,
        "! ControllingArea
        controlling_area           TYPE c LENGTH 4,
        "! WBSElementExternalID
        wbselement_external_id     TYPE c LENGTH 24,
        "! SettlementOrder
        settlement_order           TYPE c LENGTH 12,
        "! MaintenancePlanningPlant
        maintenance_planning_plant TYPE c LENGTH 4,
        "! MaintenancePlannerGroup
        maintenance_planner_group  TYPE c LENGTH 3,
        "! MainWorkCenter
        main_work_center           TYPE c LENGTH 8,
        "! MainWorkCenterInternalID
        main_work_center_internal  TYPE c LENGTH 8,
        "! MainWorkCenterPlant
        main_work_center_plant     TYPE c LENGTH 4,
        "! CatalogProfile
        catalog_profile            TYPE c LENGTH 9,
        "! FunctionalLocation
        functional_location        TYPE c LENGTH 30,
        "! FunctionalLocationLabelName
        functional_location_label  TYPE c LENGTH 40,
        "! FunctionalLocationName
        functional_location_name   TYPE c LENGTH 40,
        "! EquipInstallationPositionNmbr
        equip_installation_positio TYPE c LENGTH 4,
        "! SuperordinateEquipment
        superordinate_equipment    TYPE c LENGTH 18,
        "! TechnicalObjectSortCode
        technical_object_sort_code TYPE c LENGTH 25,
        "! ConstructionMaterial
        construction_material      TYPE c LENGTH 18,
        "! Material
        material                   TYPE c LENGTH 18,
        "! SerialNumber
        serial_number              TYPE c LENGTH 18,
        "! UniqueItemIdentifier
        unique_item_identifier     TYPE c LENGTH 72,
        "! UniqueItemIdentifierStrucType
        unique_item_identifier_str TYPE c LENGTH 10,
        "! UniqueItemIdentifierRespPlant
        unique_item_identifier_res TYPE c LENGTH 4,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! OrganizationDivision
        organization_division      TYPE c LENGTH 2,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestamp,
        "! NextEquipUsagePeriodSqncNmbr
        next_equip_usage_period_sq TYPE c LENGTH 3,
        "! MaintObjectLocAcctAssgmtNmbr
        maint_object_loc_acct_assg TYPE c LENGTH 12,
        "! MaintObjectInternalID
        maint_object_internal_id   TYPE c LENGTH 22,
        "! EquipUsagePeriodSequenceNumber
        equip_usage_period_sequenc TYPE c LENGTH 3,
        "! EquipmentIsAtCustomer
        equipment_is_at_customer   TYPE abap_bool,
        "! EquipmentIsAvailable
        equipment_is_available     TYPE abap_bool,
        "! EquipmentIsInWarehouse
        equipment_is_in_warehouse  TYPE abap_bool,
        "! EquipmentIsAssignedToDelivery
        equipment_is_assigned_to_d TYPE abap_bool,
        "! EquipmentIsMarkedForDeletion
        equipment_is_marked_for_de TYPE abap_bool,
        "! EquipmentIsInstalled
        equipment_is_installed     TYPE abap_bool,
        "! EquipIsAllocToSuperiorEquip
        equip_is_alloc_to_superior TYPE abap_bool,
        "! EquipmentIsInactive
        equipment_is_inactive      TYPE abap_bool,
        "! EquipHasSubOrdinateEquipment
        equip_has_sub_ordinate_equ TYPE c LENGTH 1,
        "! YY1_Logo_IEQ
        yy_1_logo_ieq              TYPE abap_bool,
        "! YY1_PMModelYear_IEQ
        yy_1_pmmodel_year_ieq      TYPE c LENGTH 3,
        "! YY1_Klima_IEQ
        yy_1_klima_ieq             TYPE abap_bool,
        "! YY1_LicenseOwner_IEQ
        yy_1_license_owner_ieq     TYPE c LENGTH 30,
        "! YY1_ChassisNo_IEQ
        yy_1_chassis_no_ieq        TYPE c LENGTH 20,
        "! YY1_Brand_IEQ
        yy_1_brand_ieq             TYPE c LENGTH 16,
        "! YY1_VehicleClass_IEQ
        yy_1_vehicle_class_ieq     TYPE c LENGTH 4,
        "! YY1_PalletNumber_IEQ
        yy_1_pallet_number_ieq     TYPE c LENGTH 20,
        "! YY1_InsurancePolicyCom_IEQ
        yy_1_insurance_policy_com  TYPE c LENGTH 3,
        "! YY1_PersAccidentEndDat_IEQ
        yy_1_pers_accident_end_dat TYPE datn,
        "! YY1_Color_IEQ
        yy_1_color_ieq             TYPE c LENGTH 20,
        "! YY1_CaseTL_IEQ
        yy_1_case_tl_ieq           TYPE p LENGTH 8 DECIMALS 3,
        "! YY1_CaseTL_IEQC
        yy_1_case_tl_ieqc          TYPE c LENGTH 5,
        "! YY1_CaseNoTxt_IEQ
        yy_1_case_no_txt_ieq       TYPE c LENGTH 30,
        "! YY1_TachographClbDate_IEQ
        yy_1_tachograph_clb_date_i TYPE datn,
        "! YY1_IssuedPlace_IEQ
        yy_1_issued_place_ieq      TYPE c LENGTH 40,
        "! YY1_Type_IEQ
        yy_1_type_ieq              TYPE c LENGTH 30,
        "! YY1_PledgeInformation_IEQ
        yy_1_pledge_information_ie TYPE abap_bool,
        "! YY1_InsuranceStartDate_IEQ
        yy_1_insurance_start_date  TYPE datn,
        "! YY1_PledgeInfo_IEQ
        yy_1_pledge_info_ieq       TYPE c LENGTH 1,
        "! YY1_HGSBalance_IEQ
        yy_1_hgsbalance_ieq        TYPE p LENGTH 8 DECIMALS 3,
        "! YY1_HGSBalance_IEQC
        yy_1_hgsbalance_ieqc       TYPE c LENGTH 5,
        "! YY1_InspectionEnd_IEQ
        yy_1_inspection_end_ieq    TYPE datn,
        "! YY1_HGSNo_IEQ
        yy_1_hgsno_ieq             TYPE c LENGTH 20,
        "! YY1_ATPEndDate_IEQ
        yy_1_atpend_date_ieq       TYPE datn,
        "! YY1_LiftTxt_IEQ
        yy_1_lift_txt_ieq          TYPE c LENGTH 16,
        "! YY1_LiftTL_IEQ
        yy_1_lift_tl_ieq           TYPE p LENGTH 8 DECIMALS 3,
        "! YY1_LiftTL_IEQC
        yy_1_lift_tl_ieqc          TYPE c LENGTH 5,
        "! YY1_Category_IEQ
        yy_1_category_ieq          TYPE c LENGTH 30,
        "! YY1_EngineNo_IEQ
        yy_1_engine_no_ieq         TYPE c LENGTH 20,
        "! YY1_PrsAccidentPlcyCmp_IEQ
        yy_1_prs_accident_plcy_cmp TYPE c LENGTH 3,
        "! YY1_UserAllocatedPersn_IEQ
        yy_1_user_allocated_persn  TYPE c LENGTH 30,
        "! YY1_DeviceName_IEQ
        yy_1_device_name_ieq       TYPE c LENGTH 20,
        "! YY1_Separator_IEQ
        yy_1_separator_ieq         TYPE abap_bool,
        "! YY1_PersAccidentStartD_IEQ
        yy_1_pers_accident_start_d TYPE datn,
        "! YY1_PledgeCompany_IEQ
        yy_1_pledge_company_ieq    TYPE c LENGTH 20,
        "! YY1_FileNumber_IEQ
        yy_1_file_number_ieq       TYPE c LENGTH 5,
        "! YY1_Region_IEQ
        yy_1_region_ieq            TYPE c LENGTH 30,
        "! YY1_PosternDoorInfo_IEQ
        yy_1_postern_door_info_ieq TYPE c LENGTH 1,
        "! YY1_TensionBelt_IEQ
        yy_1_tension_belt_ieq      TYPE c LENGTH 3,
        "! YY1_AirCndtn_IEQ
        yy_1_air_cndtn_ieq         TYPE c LENGTH 2,
        "! YY1_InsuranceEndDate_IEQ
        yy_1_insurance_end_date_ie TYPE datn,
        "! YY1_InsuranceAgency_IEQ
        yy_1_insurance_agency_ieq  TYPE c LENGTH 3,
        "! YY1_ModelYearNew_IEQ
        yy_1_model_year_new_ieq    TYPE c LENGTH 4,
        "! YY1_TrafficInsuranceAg_IEQ
        yy_1_traffic_insurance_ag  TYPE c LENGTH 3,
        "! YY1_SequenceNoTxt_IEQ
        yy_1_sequence_no_txt_ieq   TYPE c LENGTH 8,
        "! YY1_VehicleDocType_IEQ
        yy_1_vehicle_doc_type_ieq  TYPE c LENGTH 3,
        "! YY1_Separator1_IEQ
        yy_1_separator_1_ieq       TYPE c LENGTH 1,
        "! YY1_PrAccidentPlcyCmp_IEQ
        yy_1_pr_accident_plcy_cmp  TYPE c LENGTH 40,
        "! YY1_TrafficEndDate_IEQ
        yy_1_traffic_end_date_ieq  TYPE datn,
        "! YY1_AirconditioningTL_IEQ
        yy_1_airconditioning_tl_ie TYPE p LENGTH 8 DECIMALS 3,
        "! YY1_AirconditioningTL_IEQC
        yy_1_airconditioning_tl__2 TYPE c LENGTH 5,
        "! YY1_AirConditionNoTxt_IEQ
        yy_1_air_condition_no_txt  TYPE c LENGTH 30,
        "! YY1_PosternDoor_IEQ
        yy_1_postern_door_ieq      TYPE abap_bool,
        "! YY1_AirCondition_IEQ
        yy_1_air_condition_ieq     TYPE c LENGTH 16,
        "! YY1_TrafficStartDate_IEQ
        yy_1_traffic_start_date_ie TYPE datn,
        "! YY1_InspectionStart_IEQ
        yy_1_inspection_start_ieq  TYPE datn,
        "! YY1_ExhaustInspEndDate_IEQ
        yy_1_exhaust_insp_end_date TYPE datn,
        "! YY1_Logo1_IEQ
        yy_1_logo_1_ieq            TYPE c LENGTH 1,
        "! YY1_Lift_IEQ
        yy_1_lift_ieq              TYPE abap_bool,
        "! YY1_PMVehicleBodyType_IEQ
        yy_1_pmvehicle_body_type_i TYPE c LENGTH 3,
        "! YY1_TrafficPolicyComp_IEQ
        yy_1_traffic_policy_comp_i TYPE c LENGTH 3,
        "! YY1_RegistrationDate_IEQ
        yy_1_registration_date_ieq TYPE datn,
        "! YY1_Stepne1_IEQ
        yy_1_stepne_1_ieq          TYPE c LENGTH 1,
        "! YY1_Lift1_IEQ
        yy_1_lift_1_ieq            TYPE c LENGTH 1,
        "! YY1_PayloadCapacity_IEQ
        yy_1_payload_capacity_ieq  TYPE p LENGTH 7 DECIMALS 0,
        "! YY1_DocumentSerialNo_IEQ
        yy_1_document_serial_no_ie TYPE c LENGTH 8,
        "! YY1_TrafficPlcyComp_IEQ
        yy_1_traffic_plcy_comp_ieq TYPE c LENGTH 40,
        "! YY1_K1No_IEQ
        yy_1_k_1_no_ieq            TYPE c LENGTH 8,
        "! YY1_Stepne_IEQ
        yy_1_stepne_ieq            TYPE abap_bool,
        "! YY1_PMVehicleType_IEQ
        yy_1_pmvehicle_type_ieq    TYPE c LENGTH 3,
        "! YY1_VehicleStatForEqui_IEQ
        yy_1_vehicle_stat_for_equi TYPE c LENGTH 3,
        "! YY1_LiftNoTxt_IEQ
        yy_1_lift_no_txt_ieq       TYPE c LENGTH 30,
        "! YY1_HGS_IEQ
        yy_1_hgs_ieq               TYPE c LENGTH 5,
        "! YY1_InsurancePlcyComp_IEQ
        yy_1_insurance_plcy_comp_i TYPE c LENGTH 40,
        "! YY1_L1No_IEQ
        yy_1_l_1_no_ieq            TYPE c LENGTH 8,
        "! YY1_PersAccidentInsAgc_IEQ
        yy_1_pers_accident_ins_agc TYPE c LENGTH 3,
        "! YY1_Company_IEQ
        yy_1_company_ieq           TYPE c LENGTH 4,
        "! YY1_MaintenanceIntrvl_IEQ
        yy_1_maintenance_intrvl_ie TYPE c LENGTH 10,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_equipment_type,
      "! <p class="shorttext synchronized">List of EquipmentType</p>
      tyt_equipment_type TYPE STANDARD TABLE OF tys_equipment_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipmentWarrantyType</p>
      BEGIN OF tys_equipment_warranty_type,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! <em>Key property</em> WarrantyType
        warranty_type              TYPE c LENGTH 1,
        "! MasterWarranty
        master_warranty            TYPE c LENGTH 20,
        "! WarrantyStartDate
        warranty_start_date        TYPE datn,
        "! WarrantyEndDate
        warranty_end_date          TYPE datn,
        "! WrntyIsInhtdFromSuperiorObject
        wrnty_is_inhtd_from_superi TYPE c LENGTH 1,
        "! WrntyIsPassedOnToChildObject
        wrnty_is_passed_on_to_chil TYPE c LENGTH 1,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_equipment_warranty_type,
      "! <p class="shorttext synchronized">List of EquipmentWarrantyType</p>
      tyt_equipment_warranty_type TYPE STANDARD TABLE OF tys_equipment_warranty_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipClassCharacteristicValueType</p>
      BEGIN OF tys_equip_class_characterist_2,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! <em>Key property</em> ClassType
        class_type                 TYPE c LENGTH 3,
        "! <em>Key property</em> CharcValuePositionNumber
        charc_value_position_numbe TYPE c LENGTH 3,
        "! <em>Key property</em> CharacteristicInternalID
        characteristic_internal_id TYPE c LENGTH 10,
        "! Characteristic
        characteristic             TYPE c LENGTH 30,
        "! CharcDataType
        charc_data_type            TYPE c LENGTH 4,
        "! ClassInternalID
        class_internal_id          TYPE c LENGTH 10,
        "! KeyDate
        key_date                   TYPE datn,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! CharcValueDependency
        charc_value_dependency     TYPE c LENGTH 1,
        "! CharcValue
        charc_value                TYPE c LENGTH 70,
        "! CharcFromNumericValue
        charc_from_numeric_value   TYPE /iwbep/v4_float,
        "! CharcFromNumericValueUnit
        charc_from_numeric_value_u TYPE c LENGTH 3,
        "! CharcToNumericValue
        charc_to_numeric_value     TYPE /iwbep/v4_float,
        "! CharcToNumericValueUnit
        charc_to_numeric_value_uni TYPE c LENGTH 3,
        "! CharcFromDecimalValue
        charc_from_decimal_value   TYPE p LENGTH 16 DECIMALS 14,
        "! CharcToDecimalValue
        charc_to_decimal_value     TYPE p LENGTH 16 DECIMALS 14,
        "! CharcFromAmount
        charc_from_amount          TYPE p LENGTH 12 DECIMALS 3,
        "! CharcToAmount
        charc_to_amount            TYPE p LENGTH 12 DECIMALS 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! CharcFromDate
        charc_from_date            TYPE datn,
        "! CharcToDate
        charc_to_date              TYPE datn,
        "! CharcFromTime
        charc_from_time            TYPE timn,
        "! CharcToTime
        charc_to_time              TYPE timn,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_equip_class_characterist_2,
      "! <p class="shorttext synchronized">List of EquipClassCharacteristicValueType</p>
      tyt_equip_class_characterist_2 TYPE STANDARD TABLE OF tys_equip_class_characterist_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">EquipProductionResourceTool_Type</p>
      BEGIN OF tys_equip_production_resourc_2,
        "! <em>Key property</em> Equipment
        equipment                  TYPE c LENGTH 18,
        "! <em>Key property</em> ValidityEndDate
        validity_end_date          TYPE datn,
        "! ProductionResourceType
        production_resource_type   TYPE c LENGTH 2,
        "! ProductionResourceInternalID
        production_resource_intern TYPE c LENGTH 8,
        "! ProductionResourceToolGroup1
        production_resource_tool_g TYPE c LENGTH 4,
        "! ProductionResourceToolGroup2
        production_resource_tool_2 TYPE c LENGTH 4,
        "! ProductionResourceUsage
        production_resource_usage  TYPE c LENGTH 3,
        "! ProdnRsceToolControlProfile
        prodn_rsce_tool_control_pr TYPE c LENGTH 4,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! ProdnRsceToolStandardTextCode
        prodn_rsce_tool_standard_t TYPE c LENGTH 7,
        "! ProdnRsceToolTotQtyCalcFormula
        prodn_rsce_tool_tot_qty_ca TYPE c LENGTH 6,
        "! ProdnRsceToolUsageQtyCalcFmla
        prodn_rsce_tool_usage_qty  TYPE c LENGTH 6,
        "! StartDateOffsetReferenceCode
        start_date_offset_referenc TYPE c LENGTH 2,
        "! EndDateOffsetReferenceCode
        end_date_offset_reference  TYPE c LENGTH 2,
        "! EndDateOffsetDurnIsReferenced
        end_date_offset_durn_is_re TYPE abap_bool,
        "! StartDateOffstDurnIsReferenced
        start_date_offst_durn_is_r TYPE abap_bool,
        "! EndDteOffstRefCodeIsReferenced
        end_dte_offst_ref_code_is  TYPE abap_bool,
        "! StartDateOffsetRefCodeIsRefcd
        start_date_offset_ref_code TYPE abap_bool,
        "! PRTTotQtyCalcFmlaIsReferenced
        prttot_qty_calc_fmla_is_re TYPE abap_bool,
        "! PRTUsgeQtyCalcFmlaIsReferenced
        prtusge_qty_calc_fmla_is_r TYPE abap_bool,
        "! PRTControlProfileIsReferenced
        prtcontrol_profile_is_refe TYPE abap_bool,
        "! PRTStdTextCodeIsReferenced
        prtstd_text_code_is_refere TYPE abap_bool,
        "! ProdPRTLoadRecordsAreCreated
        prod_prtload_records_are_c TYPE abap_bool,
        "! StartDateOffsetDuration
        start_date_offset_duration TYPE p LENGTH 3 DECIMALS 0,
        "! StartDateOffsetDurationUnit
        start_date_offset_durati_2 TYPE c LENGTH 3,
        "! EndDateOffsetDuration
        end_date_offset_duration   TYPE p LENGTH 3 DECIMALS 0,
        "! EndDateOffsetDurationUnit
        end_date_offset_duration_u TYPE c LENGTH 3,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_equip_production_resourc_2,
      "! <p class="shorttext synchronized">List of EquipProductionResourceTool_Type</p>
      tyt_equip_production_resourc_2 TYPE STANDARD TABLE OF tys_equip_production_resourc_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! Equipment
        "! <br/> Collection of type 'EquipmentType'
        equipment                  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIPMENT',
        "! EquipmentClass
        "! <br/> Collection of type 'EquipmentClassType'
        equipment_class            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIPMENT_CLASS',
        "! EquipmentClassCharacteristic
        "! <br/> Collection of type 'EquipmentClassCharacteristicType'
        equipment_class_characteri TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIPMENT_CLASS_CHARACTERI',
        "! EquipmentLongText
        "! <br/> Collection of type 'EquipmentLongTextType'
        equipment_long_text        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIPMENT_LONG_TEXT',
        "! EquipmentPartner
        "! <br/> Collection of type 'EquipmentPartnerType'
        equipment_partner          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIPMENT_PARTNER',
        "! EquipmentWarranty
        "! <br/> Collection of type 'EquipmentWarrantyType'
        equipment_warranty         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIPMENT_WARRANTY',
        "! EquipClassCharacteristicValue
        "! <br/> Collection of type 'EquipClassCharacteristicValueType'
        equip_class_characteristic TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIP_CLASS_CHARACTERISTIC',
        "! EquipProductionResourceTool
        "! <br/> Collection of type 'EquipProductionResourceTool_Type'
        equip_production_resource  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EQUIP_PRODUCTION_RESOURCE',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! DismantleEquipment
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        dismantle_equipment        TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'DISMANTLE_EQUIPMENT',
        "! DismantleEquipWithDataTransfer
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        dismantle_equip_with_data  TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'DISMANTLE_EQUIP_WITH_DATA',
        "! InstallEquipment
        "! <br/> See structure type {@link ..tys_parameters_3} for the parameters
        install_equipment          TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'INSTALL_EQUIPMENT',
        "! InstallEquipWithDataTransfer
        "! <br/> See structure type {@link ..tys_parameters_4} for the parameters
        install_equip_with_data_tr TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'INSTALL_EQUIP_WITH_DATA_TR',
        "! ResetEquipmentFromInactive
        "! <br/> See structure type {@link ..tys_parameters_5} for the parameters
        reset_equipment_from_inact TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'RESET_EQUIPMENT_FROM_INACT',
        "! RsetEquipFromMarkedForDeletion
        "! <br/> See structure type {@link ..tys_parameters_6} for the parameters
        rset_equip_from_marked_for TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'RSET_EQUIP_FROM_MARKED_FOR',
        "! SetEquipmentToInactive
        "! <br/> See structure type {@link ..tys_parameters_7} for the parameters
        set_equipment_to_inactive  TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'SET_EQUIPMENT_TO_INACTIVE',
        "! SetEquipToMarkedForDeletion
        "! <br/> See structure type {@link ..tys_parameters_8} for the parameters
        set_equip_to_marked_for_de TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'SET_EQUIP_TO_MARKED_FOR_DE',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for DummyFunctionImportResult</p>
        "! See also structure type {@link ..tys_dummy_function_import_resu}
        BEGIN OF dummy_function_import_resu,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF dummy_function_import_resu,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for EquipmentClassCharacteristicType</p>
        "! See also structure type {@link ..tys_equipment_class_characte_2}
        BEGIN OF equipment_class_characte_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Equipment
            to_equipment       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT',
            "! to_EquipmentClass
            to_equipment_class TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT_CLASS',
            "! to_Value
            to_value           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUE',
          END OF navigation,
        END OF equipment_class_characte_2,
        "! <p class="shorttext synchronized">Internal names for EquipmentClassType</p>
        "! See also structure type {@link ..tys_equipment_class_type}
        BEGIN OF equipment_class_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Characteristic
            to_characteristic TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CHARACTERISTIC',
            "! to_Equipment
            to_equipment      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT',
          END OF navigation,
        END OF equipment_class_type,
        "! <p class="shorttext synchronized">Internal names for EquipmentLongTextType</p>
        "! See also structure type {@link ..tys_equipment_long_text_type}
        BEGIN OF equipment_long_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Equipment
            to_equipment TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT',
          END OF navigation,
        END OF equipment_long_text_type,
        "! <p class="shorttext synchronized">Internal names for EquipmentPartnerType</p>
        "! See also structure type {@link ..tys_equipment_partner_type}
        BEGIN OF equipment_partner_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Equipment
            to_equipment TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT',
          END OF navigation,
        END OF equipment_partner_type,
        "! <p class="shorttext synchronized">Internal names for EquipmentType</p>
        "! See also structure type {@link ..tys_equipment_type}
        BEGIN OF equipment_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Classification
            to_classification          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CLASSIFICATION',
            "! to_LongText
            to_long_text               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_LONG_TEXT',
            "! to_Partner
            to_partner                 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PARTNER',
            "! to_ProductionResourceTool
            to_production_resource_too TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCTION_RESOURCE_TOO',
            "! to_Warranty
            to_warranty                TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_WARRANTY',
          END OF navigation,
        END OF equipment_type,
        "! <p class="shorttext synchronized">Internal names for EquipmentWarrantyType</p>
        "! See also structure type {@link ..tys_equipment_warranty_type}
        BEGIN OF equipment_warranty_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Equipment
            to_equipment TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT',
          END OF navigation,
        END OF equipment_warranty_type,
        "! <p class="shorttext synchronized">Internal names for EquipClassCharacteristicValueType</p>
        "! See also structure type {@link ..tys_equip_class_characterist_2}
        BEGIN OF equip_class_characterist_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Characteristic
            to_characteristic TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CHARACTERISTIC',
            "! to_Equipment
            to_equipment      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT',
          END OF navigation,
        END OF equip_class_characterist_2,
        "! <p class="shorttext synchronized">Internal names for EquipProductionResourceTool_Type</p>
        "! See also structure type {@link ..tys_equip_production_resourc_2}
        BEGIN OF equip_production_resourc_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Equipment
            to_equipment TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_EQUIPMENT',
          END OF navigation,
        END OF equip_production_resourc_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define DummyFunctionImportResult</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_dummy_function_import_resu RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipmentClassCharacteristicType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equipment_class_characte_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipmentClassType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equipment_class_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipmentLongTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equipment_long_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipmentPartnerType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equipment_partner_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipmentType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equipment_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipmentWarrantyType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equipment_warranty_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipClassCharacteristicValueType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equip_class_characterist_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define EquipProductionResourceTool_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_equip_production_resourc_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define DismantleEquipment</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_dismantle_equipment RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define DismantleEquipWithDataTransfer</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_dismantle_equip_with_data RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define InstallEquipment</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_install_equipment RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define InstallEquipWithDataTransfer</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_install_equip_with_data_tr RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ResetEquipmentFromInactive</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_reset_equipment_from_inact RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define RsetEquipFromMarkedForDeletion</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_rset_equip_from_marked_for RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SetEquipmentToInactive</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_set_equipment_to_inactive RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SetEquipToMarkedForDeletion</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_set_equip_to_marked_for_de RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZPM_SCM_EQUIPMENTDATAUPD2 IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'cds_api_equipment' ) ##NO_TEXT.

    def_dummy_function_import_resu( ).
    def_equipment_class_characte_2( ).
    def_equipment_class_type( ).
    def_equipment_long_text_type( ).
    def_equipment_partner_type( ).
    def_equipment_type( ).
    def_equipment_warranty_type( ).
    def_equip_class_characterist_2( ).
    def_equip_production_resourc_2( ).
    def_dismantle_equipment( ).
    def_dismantle_equip_with_data( ).
    def_install_equipment( ).
    def_install_equip_with_data_tr( ).
    def_reset_equipment_from_inact( ).
    def_rset_equip_from_marked_for( ).
    def_set_equipment_to_inactive( ).
    def_set_equip_to_marked_for_de( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ABCINDICATOR_COPY_IS_REQUE'
                            iv_element             = VALUE tys_types_for_prim_types-abcindicator_copy_is_reque( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ABCINDICATOR_COPY_IS_REQ_2'
                            iv_element             = VALUE tys_types_for_prim_types-abcindicator_copy_is_req_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BUSINESS_AREA_COPY_IS_REQU'
                            iv_element             = VALUE tys_types_for_prim_types-business_area_copy_is_requ( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BUSINESS_AREA_COPY_IS_RE_2'
                            iv_element             = VALUE tys_types_for_prim_types-business_area_copy_is_re_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CATALOG_PROFILE_COPY_IS_RE'
                            iv_element             = VALUE tys_types_for_prim_types-catalog_profile_copy_is_re( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CATALOG_PROFILE_COPY_IS__2'
                            iv_element             = VALUE tys_types_for_prim_types-catalog_profile_copy_is__2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'COST_CENTER_COPY_IS_REQUES'
                            iv_element             = VALUE tys_types_for_prim_types-cost_center_copy_is_reques( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'COST_CENTER_COPY_IS_REQU_2'
                            iv_element             = VALUE tys_types_for_prim_types-cost_center_copy_is_requ_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_2'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_3'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_3( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_4'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_4( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_5'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_5( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_6'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_6( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_7'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_7( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_8'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_8( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_9'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_9( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_DAT'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_dat( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_D_2'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_d_2( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_D_3'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_d_3( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_D_4'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_d_4( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_TIM'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_tim( ) ).
    lo_primitive_type->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_T_2'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_t_2( ) ).
    lo_primitive_type->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_T_3'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_t_3( ) ).
    lo_primitive_type->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIPMENT_INSTALLATION_T_4'
                            iv_element             = VALUE tys_types_for_prim_types-equipment_installation_t_4( ) ).
    lo_primitive_type->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIP_INSTALLATION_POSITIO'
                            iv_element             = VALUE tys_types_for_prim_types-equip_installation_positio( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIP_INSTALLATION_POSIT_2'
                            iv_element             = VALUE tys_types_for_prim_types-equip_installation_posit_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIP_INSTALLATION_POSIT_3'
                            iv_element             = VALUE tys_types_for_prim_types-equip_installation_posit_3( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIP_INSTALLATION_POSIT_4'
                            iv_element             = VALUE tys_types_for_prim_types-equip_installation_posit_4( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIP_INSTALLATION_POS_IN'
                            iv_element             = VALUE tys_types_for_prim_types-equip_installation_pos_in( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EQUIP_INSTALLATION_POS_I_2'
                            iv_element             = VALUE tys_types_for_prim_types-equip_installation_pos_i_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'FUNCTIONAL_LOCATION'
                            iv_element             = VALUE tys_types_for_prim_types-functional_location( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'FUNCTIONAL_LOCATION_2'
                            iv_element             = VALUE tys_types_for_prim_types-functional_location_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'FUNCTIONAL_LOCATION_3'
                            iv_element             = VALUE tys_types_for_prim_types-functional_location_3( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'FUNCTIONAL_LOCATION_4'
                            iv_element             = VALUE tys_types_for_prim_types-functional_location_4( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'LOCATION_COPY_IS_REQUESTED'
                            iv_element             = VALUE tys_types_for_prim_types-location_copy_is_requested( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'LOCATION_COPY_IS_REQUEST_2'
                            iv_element             = VALUE tys_types_for_prim_types-location_copy_is_request_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'MAINT_PLANNING_PLANT_COPY'
                            iv_element             = VALUE tys_types_for_prim_types-maint_planning_plant_copy( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'MAINT_PLANNING_PLANT_COP_2'
                            iv_element             = VALUE tys_types_for_prim_types-maint_planning_plant_cop_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'MAINT_WORK_CENTER_COPY_IS'
                            iv_element             = VALUE tys_types_for_prim_types-maint_work_center_copy_is( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'MAINT_WORK_CENTER_COPY_I_2'
                            iv_element             = VALUE tys_types_for_prim_types-maint_work_center_copy_i_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'PLANT_SECTION_COPY_IS_REQU'
                            iv_element             = VALUE tys_types_for_prim_types-plant_section_copy_is_requ( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'PLANT_SECTION_COPY_IS_RE_2'
                            iv_element             = VALUE tys_types_for_prim_types-plant_section_copy_is_re_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ROOM_COPY_IS_REQUESTED'
                            iv_element             = VALUE tys_types_for_prim_types-room_copy_is_requested( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ROOM_COPY_IS_REQUESTED_2'
                            iv_element             = VALUE tys_types_for_prim_types-room_copy_is_requested_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SALES_ORGANIZATION_COPY_IS'
                            iv_element             = VALUE tys_types_for_prim_types-sales_organization_copy_is( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SALES_ORGANIZATION_COPY__2'
                            iv_element             = VALUE tys_types_for_prim_types-sales_organization_copy__2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SETTLEMENT_ORDER_COPY_IS_2'
                            iv_element             = VALUE tys_types_for_prim_types-settlement_order_copy_is_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SETTLEMENT_ORDER_COPY_IS_R'
                            iv_element             = VALUE tys_types_for_prim_types-settlement_order_copy_is_r( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SORT_FIELD_COPY_IS_REQUEST'
                            iv_element             = VALUE tys_types_for_prim_types-sort_field_copy_is_request( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SORT_FIELD_COPY_IS_REQUE_2'
                            iv_element             = VALUE tys_types_for_prim_types-sort_field_copy_is_reque_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'STANDING_ORDER_COPY_IS_REQ'
                            iv_element             = VALUE tys_types_for_prim_types-standing_order_copy_is_req( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'STANDING_ORDER_COPY_IS_R_2'
                            iv_element             = VALUE tys_types_for_prim_types-standing_order_copy_is_r_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SUPERORDINATE_EQUIPMENT'
                            iv_element             = VALUE tys_types_for_prim_types-superordinate_equipment( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SUPERORDINATE_EQUIPMENT_2'
                            iv_element             = VALUE tys_types_for_prim_types-superordinate_equipment_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SUPERORDINATE_EQUIPMENT_3'
                            iv_element             = VALUE tys_types_for_prim_types-superordinate_equipment_3( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SUPERORDINATE_EQUIPMENT_4'
                            iv_element             = VALUE tys_types_for_prim_types-superordinate_equipment_4( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE_2'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date_2( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE_3'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date_3( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE_4'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date_4( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE_5'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date_5( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE_6'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date_6( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE_7'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date_7( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VALIDITY_END_DATE_8'
                            iv_element             = VALUE tys_types_for_prim_types-validity_end_date_8( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WBSELEMENT_COPY_IS_REQUEST'
                            iv_element             = VALUE tys_types_for_prim_types-wbselement_copy_is_request( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WBSELEMENT_COPY_IS_REQUE_2'
                            iv_element             = VALUE tys_types_for_prim_types-wbselement_copy_is_reque_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WORK_CENTER_COPY_IS_REQUES'
                            iv_element             = VALUE tys_types_for_prim_types-work_center_copy_is_reques( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'WORK_CENTER_COPY_IS_REQU_2'
                            iv_element             = VALUE tys_types_for_prim_types-work_center_copy_is_requ_2( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

  ENDMETHOD.


  METHOD def_dismantle_equipment.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'DISMANTLE_EQUIPMENT' ).
    lo_function->set_edm_name( 'DismantleEquipment' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).

    lo_function_import = lo_function->create_function_import( 'DISMANTLE_EQUIPMENT' ).
    lo_function_import->set_edm_name( 'DismantleEquipment' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SUPERORDINATE_EQUIPMENT' ).
    lo_parameter->set_edm_name( 'SuperordinateEquipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SUPERORDINATE_EQUIPMENT' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIP_INSTALLATION_POSITIO' ).
    lo_parameter->set_edm_name( 'EquipInstallationPositionNmbr' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIP_INSTALLATION_POSITIO' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIP_INSTALLATION_POS_IN' ).
    lo_parameter->set_edm_name( 'EquipInstallationPosInChar' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIP_INSTALLATION_POS_IN' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'FUNCTIONAL_LOCATION' ).
    lo_parameter->set_edm_name( 'FunctionalLocation' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'FUNCTIONAL_LOCATION' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_DAT' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_DAT' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_TIM' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationTime' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_TIM' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'EQUIPMENT_TYPE' ).

  ENDMETHOD.


  METHOD def_dismantle_equip_with_data.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'DISMANTLE_EQUIP_WITH_DATA' ).
    lo_function->set_edm_name( 'DismantleEquipWithDataTransfer' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_2( ) ).

    lo_function_import = lo_function->create_function_import( 'DISMANTLE_EQUIP_WITH_DATA' ).
    lo_function_import->set_edm_name( 'DismantleEquipWithDataTransfer' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SUPERORDINATE_EQUIPMENT' ).
    lo_parameter->set_edm_name( 'SuperordinateEquipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SUPERORDINATE_EQUIPMENT_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'FUNCTIONAL_LOCATION' ).
    lo_parameter->set_edm_name( 'FunctionalLocation' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'FUNCTIONAL_LOCATION_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIP_INSTALLATION_POSITIO' ).
    lo_parameter->set_edm_name( 'EquipInstallationPositionNmbr' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIP_INSTALLATION_POSIT_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_DAT' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_D_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_TIM' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationTime' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_T_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'LOCATION_COPY_IS_REQUESTED' ).
    lo_parameter->set_edm_name( 'LocationCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'LOCATION_COPY_IS_REQUESTED' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'ROOM_COPY_IS_REQUESTED' ).
    lo_parameter->set_edm_name( 'RoomCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ROOM_COPY_IS_REQUESTED' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'PLANT_SECTION_COPY_IS_REQU' ).
    lo_parameter->set_edm_name( 'PlantSectionCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'PLANT_SECTION_COPY_IS_REQU' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'WORK_CENTER_COPY_IS_REQUES' ).
    lo_parameter->set_edm_name( 'WorkCenterCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WORK_CENTER_COPY_IS_REQUES' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'ABCINDICATOR_COPY_IS_REQUE' ).
    lo_parameter->set_edm_name( 'ABCIndicatorCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ABCINDICATOR_COPY_IS_REQUE' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SORT_FIELD_COPY_IS_REQUEST' ).
    lo_parameter->set_edm_name( 'SortFieldCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SORT_FIELD_COPY_IS_REQUEST' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BUSINESS_AREA_COPY_IS_REQU' ).
    lo_parameter->set_edm_name( 'BusinessAreaCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BUSINESS_AREA_COPY_IS_REQU' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'COST_CENTER_COPY_IS_REQUES' ).
    lo_parameter->set_edm_name( 'CostCenterCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'COST_CENTER_COPY_IS_REQUES' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'WBSELEMENT_COPY_IS_REQUEST' ).
    lo_parameter->set_edm_name( 'WBSElementCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WBSELEMENT_COPY_IS_REQUEST' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'STANDING_ORDER_COPY_IS_REQ' ).
    lo_parameter->set_edm_name( 'StandingOrderCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'STANDING_ORDER_COPY_IS_REQ' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SETTLEMENT_ORDER_COPY_IS_R' ).
    lo_parameter->set_edm_name( 'SettlementOrderCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SETTLEMENT_ORDER_COPY_IS_R' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'MAINT_PLANNING_PLANT_COPY' ).
    lo_parameter->set_edm_name( 'MaintPlanningPlantCopyIsReqd' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'MAINT_PLANNING_PLANT_COPY' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'MAINT_WORK_CENTER_COPY_IS' ).
    lo_parameter->set_edm_name( 'MaintWorkCenterCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'MAINT_WORK_CENTER_COPY_IS' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'CATALOG_PROFILE_COPY_IS_RE' ).
    lo_parameter->set_edm_name( 'CatalogProfileCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CATALOG_PROFILE_COPY_IS_RE' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SALES_ORGANIZATION_COPY_IS' ).
    lo_parameter->set_edm_name( 'SalesOrganizationCopyIsReqd' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SALES_ORGANIZATION_COPY_IS' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'EQUIPMENT_TYPE' ).

  ENDMETHOD.


  METHOD def_dummy_function_import_resu.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'DUMMY_FUNCTION_IMPORT_RESU'
                                    is_structure              = VALUE tys_dummy_function_import_resu( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'DummyFunctionImportResult' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'IS_INVALID' ).
    lo_primitive_property->set_edm_name( 'IsInvalid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_equipment_class_characte_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIPMENT_CLASS_CHARACTE_2'
                                    is_structure              = VALUE tys_equipment_class_characte_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipmentClassCharacteristicType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIPMENT_CLASS_CHARACTERI' ).
    lo_entity_set->set_edm_name( 'EquipmentClassCharacteristic' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharacteristicInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC' ).
    lo_primitive_property->set_edm_name( 'Characteristic' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_DATA_TYPE' ).
    lo_primitive_property->set_edm_name( 'CharcDataType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS' ).
    lo_primitive_property->set_edm_name( 'Class' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT' ).
    lo_navigation_property->set_edm_name( 'to_Equipment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT_CLASS' ).
    lo_navigation_property->set_edm_name( 'to_EquipmentClass' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_CLASS_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_VALUE' ).
    lo_navigation_property->set_edm_name( 'to_Value' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIP_CLASS_CHARACTERIST_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_equipment_class_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIPMENT_CLASS_TYPE'
                                    is_structure              = VALUE tys_equipment_class_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipmentClassType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIPMENT_CLASS' ).
    lo_entity_set->set_edm_name( 'EquipmentClass' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLFN_STATUS' ).
    lo_primitive_property->set_edm_name( 'ClfnStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_POSITION_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ClassPositionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_IS_STANDARD_CLASS' ).
    lo_primitive_property->set_edm_name( 'ClassIsStandardClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLFN_OBJECT_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClfnObjectInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS' ).
    lo_primitive_property->set_edm_name( 'Class' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CHARACTERISTIC' ).
    lo_navigation_property->set_edm_name( 'to_Characteristic' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_CLASS_CHARACTE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT' ).
    lo_navigation_property->set_edm_name( 'to_Equipment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_equipment_long_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIPMENT_LONG_TEXT_TYPE'
                                    is_structure              = VALUE tys_equipment_long_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipmentLongTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIPMENT_LONG_TEXT' ).
    lo_entity_set->set_edm_name( 'EquipmentLongText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_OBJECT_KEY' ).
    lo_primitive_property->set_edm_name( 'TextObjectKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'EquipmentLongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT' ).
    lo_navigation_property->set_edm_name( 'to_Equipment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_equipment_partner_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIPMENT_PARTNER_TYPE'
                                    is_structure              = VALUE tys_equipment_partner_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipmentPartnerType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIPMENT_PARTNER' ).
    lo_entity_set->set_edm_name( 'EquipmentPartner' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER_FUNCTION' ).
    lo_primitive_property->set_edm_name( 'PartnerFunction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_PARTNER_OBJECT_N' ).
    lo_primitive_property->set_edm_name( 'EquipmentPartnerObjectNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNER' ).
    lo_primitive_property->set_edm_name( 'Partner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT' ).
    lo_navigation_property->set_edm_name( 'to_Equipment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_equipment_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIPMENT_TYPE'
                                    is_structure              = VALUE tys_equipment_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipmentType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIPMENT' ).
    lo_entity_set->set_edm_name( 'Equipment' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_TIME' ).
    lo_primitive_property->set_edm_name( 'ValidityEndTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_VALIDITY_END_DAT' ).
    lo_primitive_property->set_edm_name( 'EquipmentValidityEndDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_OID' ).
    lo_primitive_property->set_edm_name( 'EquipmentOID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 128 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_NAME' ).
    lo_primitive_property->set_edm_name( 'EquipmentName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'EquipmentCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TECHNICAL_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TechnicalObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'GrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'GrossWeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_OR_DIMENSION_TEXT' ).
    lo_primitive_property->set_edm_name( 'SizeOrDimensionText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InventoryNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPERATION_START_DATE' ).
    lo_primitive_property->set_edm_name( 'OperationStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACQUISITION_VALUE' ).
    lo_primitive_property->set_edm_name( 'AcquisitionValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACQUISITION_DATE' ).
    lo_primitive_property->set_edm_name( 'AcquisitionDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSET_MANUFACTURER_NAME' ).
    lo_primitive_property->set_edm_name( 'AssetManufacturerName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_PART_TYPE_NAM' ).
    lo_primitive_property->set_edm_name( 'ManufacturerPartTypeName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'ManufacturerCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSTRUCTION_YEAR' ).
    lo_primitive_property->set_edm_name( 'ConstructionYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSTRUCTION_MONTH' ).
    lo_primitive_property->set_edm_name( 'ConstructionMonth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_PART_NMBR' ).
    lo_primitive_property->set_edm_name( 'ManufacturerPartNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_SERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ManufacturerSerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_END_OF_USE_DATE' ).
    lo_primitive_property->set_edm_name( 'EquipmentEndOfUseDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTENANCE_PLANT' ).
    lo_primitive_property->set_edm_name( 'MaintenancePlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSET_LOCATION' ).
    lo_primitive_property->set_edm_name( 'AssetLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSET_ROOM' ).
    lo_primitive_property->set_edm_name( 'AssetRoom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_SECTION' ).
    lo_primitive_property->set_edm_name( 'PlantSection' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_CENTER' ).
    lo_primitive_property->set_edm_name( 'WorkCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_CENTER_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'WorkCenterInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_CENTER_PLANT' ).
    lo_primitive_property->set_edm_name( 'WorkCenterPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABCINDICATOR' ).
    lo_primitive_property->set_edm_name( 'ABCIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINT_OBJECT_FREE_DEFINED' ).
    lo_primitive_property->set_edm_name( 'MaintObjectFreeDefinedAttrib' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORM_OF_ADDRESS' ).
    lo_primitive_property->set_edm_name( 'FormOfAddress' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_NAME_1' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerName1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_NAME_2' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerName2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CITY_NAME' ).
    lo_primitive_property->set_edm_name( 'CityName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HouseNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HOUSE_NUMBER_SUPPLEMENT_TE' ).
    lo_primitive_property->set_edm_name( 'HouseNumberSupplementText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUILDING' ).
    lo_primitive_property->set_edm_name( 'Building' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FLOOR' ).
    lo_primitive_property->set_edm_name( 'Floor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROOM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'RoomNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'POSTAL_CODE' ).
    lo_primitive_property->set_edm_name( 'PostalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STREET_NAME' ).
    lo_primitive_property->set_edm_name( 'StreetName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION' ).
    lo_primitive_property->set_edm_name( 'Region' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHONE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PhoneNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FAX_NUMBER' ).
    lo_primitive_property->set_edm_name( 'FaxNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_AREA' ).
    lo_primitive_property->set_edm_name( 'BusinessArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MASTER_FIXED_ASSET' ).
    lo_primitive_property->set_edm_name( 'MasterFixedAsset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_ASSET' ).
    lo_primitive_property->set_edm_name( 'FixedAsset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_CENTER' ).
    lo_primitive_property->set_edm_name( 'CostCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTROLLING_AREA' ).
    lo_primitive_property->set_edm_name( 'ControllingArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBSELEMENT_EXTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'WBSElementExternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLEMENT_ORDER' ).
    lo_primitive_property->set_edm_name( 'SettlementOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTENANCE_PLANNING_PLANT' ).
    lo_primitive_property->set_edm_name( 'MaintenancePlanningPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTENANCE_PLANNER_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaintenancePlannerGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAIN_WORK_CENTER' ).
    lo_primitive_property->set_edm_name( 'MainWorkCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAIN_WORK_CENTER_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'MainWorkCenterInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAIN_WORK_CENTER_PLANT' ).
    lo_primitive_property->set_edm_name( 'MainWorkCenterPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATALOG_PROFILE' ).
    lo_primitive_property->set_edm_name( 'CatalogProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCTIONAL_LOCATION' ).
    lo_primitive_property->set_edm_name( 'FunctionalLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCTIONAL_LOCATION_LABEL' ).
    lo_primitive_property->set_edm_name( 'FunctionalLocationLabelName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCTIONAL_LOCATION_NAME' ).
    lo_primitive_property->set_edm_name( 'FunctionalLocationName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIP_INSTALLATION_POSITIO' ).
    lo_primitive_property->set_edm_name( 'EquipInstallationPositionNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPERORDINATE_EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'SuperordinateEquipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TECHNICAL_OBJECT_SORT_CODE' ).
    lo_primitive_property->set_edm_name( 'TechnicalObjectSortCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSTRUCTION_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'ConstructionMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'SerialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIQUE_ITEM_IDENTIFIER' ).
    lo_primitive_property->set_edm_name( 'UniqueItemIdentifier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 72 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIQUE_ITEM_IDENTIFIER_STR' ).
    lo_primitive_property->set_edm_name( 'UniqueItemIdentifierStrucType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIQUE_ITEM_IDENTIFIER_RES' ).
    lo_primitive_property->set_edm_name( 'UniqueItemIdentifierRespPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORGANIZATION_DIVISION' ).
    lo_primitive_property->set_edm_name( 'OrganizationDivision' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NEXT_EQUIP_USAGE_PERIOD_SQ' ).
    lo_primitive_property->set_edm_name( 'NextEquipUsagePeriodSqncNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINT_OBJECT_LOC_ACCT_ASSG' ).
    lo_primitive_property->set_edm_name( 'MaintObjectLocAcctAssgmtNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINT_OBJECT_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'MaintObjectInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 22 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIP_USAGE_PERIOD_SEQUENC' ).
    lo_primitive_property->set_edm_name( 'EquipUsagePeriodSequenceNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_IS_AT_CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'EquipmentIsAtCustomer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_IS_AVAILABLE' ).
    lo_primitive_property->set_edm_name( 'EquipmentIsAvailable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_IS_IN_WAREHOUSE' ).
    lo_primitive_property->set_edm_name( 'EquipmentIsInWarehouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_IS_ASSIGNED_TO_D' ).
    lo_primitive_property->set_edm_name( 'EquipmentIsAssignedToDelivery' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_IS_MARKED_FOR_DE' ).
    lo_primitive_property->set_edm_name( 'EquipmentIsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_IS_INSTALLED' ).
    lo_primitive_property->set_edm_name( 'EquipmentIsInstalled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIP_IS_ALLOC_TO_SUPERIOR' ).
    lo_primitive_property->set_edm_name( 'EquipIsAllocToSuperiorEquip' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT_IS_INACTIVE' ).
    lo_primitive_property->set_edm_name( 'EquipmentIsInactive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIP_HAS_SUB_ORDINATE_EQU' ).
    lo_primitive_property->set_edm_name( 'EquipHasSubOrdinateEquipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LOGO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Logo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PMMODEL_YEAR_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PMModelYear_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_KLIMA_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Klima_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LICENSE_OWNER_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_LicenseOwner_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_CHASSIS_NO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_ChassisNo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_BRAND_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Brand_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_VEHICLE_CLASS_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_VehicleClass_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PALLET_NUMBER_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PalletNumber_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSURANCE_POLICY_COM' ).
    lo_primitive_property->set_edm_name( 'YY1_InsurancePolicyCom_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PERS_ACCIDENT_END_DAT' ).
    lo_primitive_property->set_edm_name( 'YY1_PersAccidentEndDat_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_COLOR_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Color_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_CASE_TL_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_CaseTL_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_CASE_TL_IEQC' ).
    lo_primitive_property->set_edm_name( 'YY1_CaseTL_IEQC' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_CASE_NO_TXT_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_CaseNoTxt_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TACHOGRAPH_CLB_DATE_I' ).
    lo_primitive_property->set_edm_name( 'YY1_TachographClbDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_ISSUED_PLACE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_IssuedPlace_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TYPE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Type_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PLEDGE_INFORMATION_IE' ).
    lo_primitive_property->set_edm_name( 'YY1_PledgeInformation_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSURANCE_START_DATE' ).
    lo_primitive_property->set_edm_name( 'YY1_InsuranceStartDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PLEDGE_INFO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PledgeInfo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_HGSBALANCE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_HGSBalance_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_HGSBALANCE_IEQC' ).
    lo_primitive_property->set_edm_name( 'YY1_HGSBalance_IEQC' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSPECTION_END_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_InspectionEnd_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_HGSNO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_HGSNo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_ATPEND_DATE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_ATPEndDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LIFT_TXT_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_LiftTxt_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LIFT_TL_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_LiftTL_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LIFT_TL_IEQC' ).
    lo_primitive_property->set_edm_name( 'YY1_LiftTL_IEQC' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_CATEGORY_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Category_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_ENGINE_NO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_EngineNo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PRS_ACCIDENT_PLCY_CMP' ).
    lo_primitive_property->set_edm_name( 'YY1_PrsAccidentPlcyCmp_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_USER_ALLOCATED_PERSN' ).
    lo_primitive_property->set_edm_name( 'YY1_UserAllocatedPersn_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_DEVICE_NAME_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_DeviceName_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_SEPARATOR_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Separator_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PERS_ACCIDENT_START_D' ).
    lo_primitive_property->set_edm_name( 'YY1_PersAccidentStartD_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PLEDGE_COMPANY_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PledgeCompany_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_FILE_NUMBER_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_FileNumber_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_REGION_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Region_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_POSTERN_DOOR_INFO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PosternDoorInfo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TENSION_BELT_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_TensionBelt_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_AIR_CNDTN_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_AirCndtn_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSURANCE_END_DATE_IE' ).
    lo_primitive_property->set_edm_name( 'YY1_InsuranceEndDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSURANCE_AGENCY_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_InsuranceAgency_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_MODEL_YEAR_NEW_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_ModelYearNew_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TRAFFIC_INSURANCE_AG' ).
    lo_primitive_property->set_edm_name( 'YY1_TrafficInsuranceAg_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_SEQUENCE_NO_TXT_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_SequenceNoTxt_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_VEHICLE_DOC_TYPE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_VehicleDocType_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_SEPARATOR_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Separator1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PR_ACCIDENT_PLCY_CMP' ).
    lo_primitive_property->set_edm_name( 'YY1_PrAccidentPlcyCmp_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TRAFFIC_END_DATE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_TrafficEndDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_AIRCONDITIONING_TL_IE' ).
    lo_primitive_property->set_edm_name( 'YY1_AirconditioningTL_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_AIRCONDITIONING_TL__2' ).
    lo_primitive_property->set_edm_name( 'YY1_AirconditioningTL_IEQC' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_AIR_CONDITION_NO_TXT' ).
    lo_primitive_property->set_edm_name( 'YY1_AirConditionNoTxt_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_POSTERN_DOOR_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PosternDoor_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_AIR_CONDITION_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_AirCondition_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TRAFFIC_START_DATE_IE' ).
    lo_primitive_property->set_edm_name( 'YY1_TrafficStartDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSPECTION_START_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_InspectionStart_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_EXHAUST_INSP_END_DATE' ).
    lo_primitive_property->set_edm_name( 'YY1_ExhaustInspEndDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LOGO_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Logo1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LIFT_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Lift_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PMVEHICLE_BODY_TYPE_I' ).
    lo_primitive_property->set_edm_name( 'YY1_PMVehicleBodyType_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TRAFFIC_POLICY_COMP_I' ).
    lo_primitive_property->set_edm_name( 'YY1_TrafficPolicyComp_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_REGISTRATION_DATE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_RegistrationDate_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_STEPNE_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Stepne1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LIFT_1_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Lift1_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PAYLOAD_CAPACITY_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PayloadCapacity_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_DOCUMENT_SERIAL_NO_IE' ).
    lo_primitive_property->set_edm_name( 'YY1_DocumentSerialNo_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_TRAFFIC_PLCY_COMP_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_TrafficPlcyComp_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_K_1_NO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_K1No_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_STEPNE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Stepne_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PMVEHICLE_TYPE_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_PMVehicleType_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_VEHICLE_STAT_FOR_EQUI' ).
    lo_primitive_property->set_edm_name( 'YY1_VehicleStatForEqui_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_LIFT_NO_TXT_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_LiftNoTxt_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_HGS_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_HGS_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_INSURANCE_PLCY_COMP_I' ).
    lo_primitive_property->set_edm_name( 'YY1_InsurancePlcyComp_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_L_1_NO_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_L1No_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_PERS_ACCIDENT_INS_AGC' ).
    lo_primitive_property->set_edm_name( 'YY1_PersAccidentInsAgc_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_COMPANY_IEQ' ).
    lo_primitive_property->set_edm_name( 'YY1_Company_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'YY_1_MAINTENANCE_INTRVL_IE' ).
    lo_primitive_property->set_edm_name( 'YY1_MaintenanceIntrvl_IEQ' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CLASSIFICATION' ).
    lo_navigation_property->set_edm_name( 'to_Classification' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_CLASS_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_LONG_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_LongText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_LONG_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PARTNER' ).
    lo_navigation_property->set_edm_name( 'to_Partner' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_PARTNER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCTION_RESOURCE_TOO' ).
    lo_navigation_property->set_edm_name( 'to_ProductionResourceTool' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIP_PRODUCTION_RESOURC_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_WARRANTY' ).
    lo_navigation_property->set_edm_name( 'to_Warranty' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_WARRANTY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_equipment_warranty_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIPMENT_WARRANTY_TYPE'
                                    is_structure              = VALUE tys_equipment_warranty_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipmentWarrantyType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIPMENT_WARRANTY' ).
    lo_entity_set->set_edm_name( 'EquipmentWarranty' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WARRANTY_TYPE' ).
    lo_primitive_property->set_edm_name( 'WarrantyType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MASTER_WARRANTY' ).
    lo_primitive_property->set_edm_name( 'MasterWarranty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WARRANTY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'WarrantyStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WARRANTY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'WarrantyEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WRNTY_IS_INHTD_FROM_SUPERI' ).
    lo_primitive_property->set_edm_name( 'WrntyIsInhtdFromSuperiorObject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WRNTY_IS_PASSED_ON_TO_CHIL' ).
    lo_primitive_property->set_edm_name( 'WrntyIsPassedOnToChildObject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT' ).
    lo_navigation_property->set_edm_name( 'to_Equipment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_equip_class_characterist_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIP_CLASS_CHARACTERIST_2'
                                    is_structure              = VALUE tys_equip_class_characterist_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipClassCharacteristicValueType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIP_CLASS_CHARACTERISTIC' ).
    lo_entity_set->set_edm_name( 'EquipClassCharacteristicValue' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE_POSITION_NUMBE' ).
    lo_primitive_property->set_edm_name( 'CharcValuePositionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharacteristicInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC' ).
    lo_primitive_property->set_edm_name( 'Characteristic' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_DATA_TYPE' ).
    lo_primitive_property->set_edm_name( 'CharcDataType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE_DEPENDENCY' ).
    lo_primitive_property->set_edm_name( 'CharcValueDependency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_NUMERIC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcFromNumericValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_NUMERIC_VALUE_U' ).
    lo_primitive_property->set_edm_name( 'CharcFromNumericValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_NUMERIC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcToNumericValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_NUMERIC_VALUE_UNI' ).
    lo_primitive_property->set_edm_name( 'CharcToNumericValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_DECIMAL_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcFromDecimalValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_DECIMAL_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcToDecimalValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CharcFromAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 23 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CharcToAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 23 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_DATE' ).
    lo_primitive_property->set_edm_name( 'CharcFromDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_DATE' ).
    lo_primitive_property->set_edm_name( 'CharcToDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_TIME' ).
    lo_primitive_property->set_edm_name( 'CharcFromTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_TIME' ).
    lo_primitive_property->set_edm_name( 'CharcToTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CHARACTERISTIC' ).
    lo_navigation_property->set_edm_name( 'to_Characteristic' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_CLASS_CHARACTE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT' ).
    lo_navigation_property->set_edm_name( 'to_Equipment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_equip_production_resourc_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EQUIP_PRODUCTION_RESOURC_2'
                                    is_structure              = VALUE tys_equip_production_resourc_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'EquipProductionResourceTool_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EQUIP_PRODUCTION_RESOURCE' ).
    lo_entity_set->set_edm_name( 'EquipProductionResourceTool' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_RESOURCE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductionResourceType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_RESOURCE_INTERN' ).
    lo_primitive_property->set_edm_name( 'ProductionResourceInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_RESOURCE_TOOL_G' ).
    lo_primitive_property->set_edm_name( 'ProductionResourceToolGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_RESOURCE_TOOL_2' ).
    lo_primitive_property->set_edm_name( 'ProductionResourceToolGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_RESOURCE_USAGE' ).
    lo_primitive_property->set_edm_name( 'ProductionResourceUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODN_RSCE_TOOL_CONTROL_PR' ).
    lo_primitive_property->set_edm_name( 'ProdnRsceToolControlProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODN_RSCE_TOOL_STANDARD_T' ).
    lo_primitive_property->set_edm_name( 'ProdnRsceToolStandardTextCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODN_RSCE_TOOL_TOT_QTY_CA' ).
    lo_primitive_property->set_edm_name( 'ProdnRsceToolTotQtyCalcFormula' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODN_RSCE_TOOL_USAGE_QTY' ).
    lo_primitive_property->set_edm_name( 'ProdnRsceToolUsageQtyCalcFmla' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE_OFFSET_REFERENC' ).
    lo_primitive_property->set_edm_name( 'StartDateOffsetReferenceCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_DATE_OFFSET_REFERENCE' ).
    lo_primitive_property->set_edm_name( 'EndDateOffsetReferenceCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_DATE_OFFSET_DURN_IS_RE' ).
    lo_primitive_property->set_edm_name( 'EndDateOffsetDurnIsReferenced' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE_OFFST_DURN_IS_R' ).
    lo_primitive_property->set_edm_name( 'StartDateOffstDurnIsReferenced' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_DTE_OFFST_REF_CODE_IS' ).
    lo_primitive_property->set_edm_name( 'EndDteOffstRefCodeIsReferenced' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE_OFFSET_REF_CODE' ).
    lo_primitive_property->set_edm_name( 'StartDateOffsetRefCodeIsRefcd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRTTOT_QTY_CALC_FMLA_IS_RE' ).
    lo_primitive_property->set_edm_name( 'PRTTotQtyCalcFmlaIsReferenced' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRTUSGE_QTY_CALC_FMLA_IS_R' ).
    lo_primitive_property->set_edm_name( 'PRTUsgeQtyCalcFmlaIsReferenced' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRTCONTROL_PROFILE_IS_REFE' ).
    lo_primitive_property->set_edm_name( 'PRTControlProfileIsReferenced' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRTSTD_TEXT_CODE_IS_REFERE' ).
    lo_primitive_property->set_edm_name( 'PRTStdTextCodeIsReferenced' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_PRTLOAD_RECORDS_ARE_C' ).
    lo_primitive_property->set_edm_name( 'ProdPRTLoadRecordsAreCreated' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE_OFFSET_DURATION' ).
    lo_primitive_property->set_edm_name( 'StartDateOffsetDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE_OFFSET_DURATI_2' ).
    lo_primitive_property->set_edm_name( 'StartDateOffsetDurationUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_DATE_OFFSET_DURATION' ).
    lo_primitive_property->set_edm_name( 'EndDateOffsetDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_DATE_OFFSET_DURATION_U' ).
    lo_primitive_property->set_edm_name( 'EndDateOffsetDurationUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_EQUIPMENT' ).
    lo_navigation_property->set_edm_name( 'to_Equipment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EQUIPMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_install_equipment.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'INSTALL_EQUIPMENT' ).
    lo_function->set_edm_name( 'InstallEquipment' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_3( ) ).

    lo_function_import = lo_function->create_function_import( 'INSTALL_EQUIPMENT' ).
    lo_function_import->set_edm_name( 'InstallEquipment' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SUPERORDINATE_EQUIPMENT' ).
    lo_parameter->set_edm_name( 'SuperordinateEquipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SUPERORDINATE_EQUIPMENT_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIP_INSTALLATION_POSITIO' ).
    lo_parameter->set_edm_name( 'EquipInstallationPositionNmbr' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIP_INSTALLATION_POSIT_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIP_INSTALLATION_POS_IN' ).
    lo_parameter->set_edm_name( 'EquipInstallationPosInChar' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIP_INSTALLATION_POS_I_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'FUNCTIONAL_LOCATION' ).
    lo_parameter->set_edm_name( 'FunctionalLocation' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'FUNCTIONAL_LOCATION_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_DAT' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_D_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_TIM' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationTime' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_T_3' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'EQUIPMENT_TYPE' ).

  ENDMETHOD.


  METHOD def_install_equip_with_data_tr.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'INSTALL_EQUIP_WITH_DATA_TR' ).
    lo_function->set_edm_name( 'InstallEquipWithDataTransfer' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_4( ) ).

    lo_function_import = lo_function->create_function_import( 'INSTALL_EQUIP_WITH_DATA_TR' ).
    lo_function_import->set_edm_name( 'InstallEquipWithDataTransfer' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_5' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SUPERORDINATE_EQUIPMENT' ).
    lo_parameter->set_edm_name( 'SuperordinateEquipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SUPERORDINATE_EQUIPMENT_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'FUNCTIONAL_LOCATION' ).
    lo_parameter->set_edm_name( 'FunctionalLocation' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'FUNCTIONAL_LOCATION_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIP_INSTALLATION_POSITIO' ).
    lo_parameter->set_edm_name( 'EquipInstallationPositionNmbr' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIP_INSTALLATION_POSIT_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_DAT' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_D_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EQUIPMENT_INSTALLATION_TIM' ).
    lo_parameter->set_edm_name( 'EquipmentInstallationTime' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_INSTALLATION_T_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'LOCATION_COPY_IS_REQUESTED' ).
    lo_parameter->set_edm_name( 'LocationCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'LOCATION_COPY_IS_REQUEST_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'ROOM_COPY_IS_REQUESTED' ).
    lo_parameter->set_edm_name( 'RoomCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ROOM_COPY_IS_REQUESTED_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'PLANT_SECTION_COPY_IS_REQU' ).
    lo_parameter->set_edm_name( 'PlantSectionCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'PLANT_SECTION_COPY_IS_RE_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'WORK_CENTER_COPY_IS_REQUES' ).
    lo_parameter->set_edm_name( 'WorkCenterCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WORK_CENTER_COPY_IS_REQU_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'ABCINDICATOR_COPY_IS_REQUE' ).
    lo_parameter->set_edm_name( 'ABCIndicatorCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ABCINDICATOR_COPY_IS_REQ_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SORT_FIELD_COPY_IS_REQUEST' ).
    lo_parameter->set_edm_name( 'SortFieldCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SORT_FIELD_COPY_IS_REQUE_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BUSINESS_AREA_COPY_IS_REQU' ).
    lo_parameter->set_edm_name( 'BusinessAreaCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BUSINESS_AREA_COPY_IS_RE_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'COST_CENTER_COPY_IS_REQUES' ).
    lo_parameter->set_edm_name( 'CostCenterCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'COST_CENTER_COPY_IS_REQU_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'WBSELEMENT_COPY_IS_REQUEST' ).
    lo_parameter->set_edm_name( 'WBSElementCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'WBSELEMENT_COPY_IS_REQUE_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'STANDING_ORDER_COPY_IS_REQ' ).
    lo_parameter->set_edm_name( 'StandingOrderCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'STANDING_ORDER_COPY_IS_R_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SETTLEMENT_ORDER_COPY_IS_R' ).
    lo_parameter->set_edm_name( 'SettlementOrderCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SETTLEMENT_ORDER_COPY_IS_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'MAINT_PLANNING_PLANT_COPY' ).
    lo_parameter->set_edm_name( 'MaintPlanningPlantCopyIsReqd' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'MAINT_PLANNING_PLANT_COP_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'MAINT_WORK_CENTER_COPY_IS' ).
    lo_parameter->set_edm_name( 'MaintWorkCenterCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'MAINT_WORK_CENTER_COPY_I_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'CATALOG_PROFILE_COPY_IS_RE' ).
    lo_parameter->set_edm_name( 'CatalogProfileCopyIsRequested' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CATALOG_PROFILE_COPY_IS__2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SALES_ORGANIZATION_COPY_IS' ).
    lo_parameter->set_edm_name( 'SalesOrganizationCopyIsReqd' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SALES_ORGANIZATION_COPY__2' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'EQUIPMENT_TYPE' ).

  ENDMETHOD.


  METHOD def_reset_equipment_from_inact.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'RESET_EQUIPMENT_FROM_INACT' ).
    lo_function->set_edm_name( 'ResetEquipmentFromInactive' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_5( ) ).

    lo_function_import = lo_function->create_function_import( 'RESET_EQUIPMENT_FROM_INACT' ).
    lo_function_import->set_edm_name( 'ResetEquipmentFromInactive' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_6' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE_5' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'DUMMY_FUNCTION_IMPORT_RESU' ).

  ENDMETHOD.


  METHOD def_rset_equip_from_marked_for.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'RSET_EQUIP_FROM_MARKED_FOR' ).
    lo_function->set_edm_name( 'RsetEquipFromMarkedForDeletion' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_6( ) ).

    lo_function_import = lo_function->create_function_import( 'RSET_EQUIP_FROM_MARKED_FOR' ).
    lo_function_import->set_edm_name( 'RsetEquipFromMarkedForDeletion' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_7' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE_6' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'DUMMY_FUNCTION_IMPORT_RESU' ).

  ENDMETHOD.


  METHOD def_set_equipment_to_inactive.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'SET_EQUIPMENT_TO_INACTIVE' ).
    lo_function->set_edm_name( 'SetEquipmentToInactive' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_7( ) ).

    lo_function_import = lo_function->create_function_import( 'SET_EQUIPMENT_TO_INACTIVE' ).
    lo_function_import->set_edm_name( 'SetEquipmentToInactive' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_8' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE_7' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'DUMMY_FUNCTION_IMPORT_RESU' ).

  ENDMETHOD.


  METHOD def_set_equip_to_marked_for_de.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'SET_EQUIP_TO_MARKED_FOR_DE' ).
    lo_function->set_edm_name( 'SetEquipToMarkedForDeletion' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_8( ) ).

    lo_function_import = lo_function->create_function_import( 'SET_EQUIP_TO_MARKED_FOR_DE' ).
    lo_function_import->set_edm_name( 'SetEquipToMarkedForDeletion' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'EQUIPMENT' ).
    lo_parameter->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EQUIPMENT_9' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VALIDITY_END_DATE' ).
    lo_parameter->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VALIDITY_END_DATE_8' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'DUMMY_FUNCTION_IMPORT_RESU' ).

  ENDMETHOD.
ENDCLASS.
