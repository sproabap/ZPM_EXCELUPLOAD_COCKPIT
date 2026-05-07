@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: 'Equipment Excel Upload'
}
@AccessControl.authorizationCheck: #MANDATORY


define root view entity ZC_EQUIPMENTEXCEL000
  provider contract transactional_query
  as projection on ZI_EquipmentExcel
  association [1..1] to ZI_EquipmentExcel as _BaseEntity on $projection.Equipment = _BaseEntity.Equipment
  
{

  @EndUserText: {
    label: 'Equipment', 
    quickInfo: 'Equipment Number'
  }
  key Equipment,
   @EndUserText: {
    label: 'Equipment Description', 
    quickInfo: 'Equipment Description'
  }
  EquipmentText,
  @EndUserText: {
    label: 'Vehicle Status (for equipment)', 
    quickInfo: 'Vehicle Status (for equipment)'
  }
//  @ObjectModel.text.element: [ 'VehicleStatForEquiDesc' ]
  VehicleStatForEqui,
  @EndUserText: {
    label: 'Insurance Start Date', 
    quickInfo: 'Insurance Start Date'
  }
  InsuranceStartDate,
  @EndUserText: {
    label: 'Insurance End Date', 
    quickInfo: 'Insurance End Date'
  }
  InsuranceEndDate,
  @EndUserText: {
    label: 'File Number', 
    quickInfo: 'File Number'
  }
  FileNumber,
  @EndUserText: {
    label: 'User (Allocated Person)', 
    quickInfo: 'User (Allocated Person)'
  }
  UserAllocatedPersn,
  @EndUserText: {
    label: 'Lift No', 
    quickInfo: 'Lift No'
  }
  LiftNo,
  @EndUserText: {
    label: 'Case No', 
    quickInfo: 'Case No'
  }
  CaseNo,
  @EndUserText: {
    label: 'Air Condition No', 
    quickInfo: 'Air Condition No'
  }
  AirConditionNo,
  @EndUserText: {
    label: 'Sequence No', 
    quickInfo: 'Sequence No'
  }
  SequenceNo,
  @EndUserText: {
    label: 'Air conditioning TL', 
    quickInfo: 'Air conditioning TL'
  }
  @Semantics: {
    amount.currencyCode: 'AirCondtionCurr'
  }
  AirconditioningTL,
  @EndUserText: {
    label: 'Air conditioning TL (Cur.)', 
    quickInfo: 'Air conditioning TL (Cur.)'
  }
  @UI.hidden: true
  AirCondtionCurr,
  @EndUserText: {
    label: 'Lift TL', 
    quickInfo: 'Lift TL'
  }
  @Semantics: {
    amount.currencyCode: 'Liftcurr'
  }
  LiftTL,
  @EndUserText: {
    label: 'Lift TL (Cur.)', 
    quickInfo: 'Lift TL (Cur.)'
  }
  @UI.hidden: true
  Liftcurr,
  @EndUserText: {
    label: 'HGS Balance', 
    quickInfo: 'HGS Balance'
  }
  @Semantics: {
    amount.currencyCode: 'HGSCurr'
  }
  HGSBalance,
  @EndUserText: {
    label: 'HGS Balance (Cur.)', 
    quickInfo: 'HGS Balance (Cur.)'
  }
  @UI.hidden: true
  HGSCurr,
  @EndUserText: {
    label: 'Region', 
    quickInfo: 'Region'
  }
  Region,
  @EndUserText: {
    label: 'L1 No', 
    quickInfo: 'L1 No'
  }
  L1No,
  @EndUserText: {
    label: 'K1 No', 
    quickInfo: 'K1 No'
  }
  K1No,
  @EndUserText: {
    label: 'Engine No', 
    quickInfo: 'Engine No'
  }
  EngineNo,
  @EndUserText: {
    label: 'Device Name', 
    quickInfo: 'Device Name'
  }
  DeviceName,
  @EndUserText: {
    label: 'Color', 
    quickInfo: 'Color'
  }
  Color,
  @EndUserText: {
    label: 'Brand', 
    quickInfo: 'Brand'
  }
  Brand,
  @EndUserText: {
    label: 'Logo', 
    quickInfo: 'Logo'
  }
//  @ObjectModel.text.element: [ 'LogoDesc' ]
  Logo,
  @EndUserText: {
    label: 'Maintenance Interval', 
    quickInfo: 'Maintenance Interval'
  }
  MaintenanceInterval,
  @EndUserText: {
    label: 'ATP EndDate', 
    quickInfo: 'ATP EndDate'
  }
  ATPEndDate,
  @EndUserText: {
    label: 'Seperator', 
    quickInfo: 'Seperator'
  }
//  @ObjectModel.text.element: [ 'SeperatorDesc' ]
  Separator,
  @EndUserText: {
    label: 'Lift', 
    quickInfo: 'Lift'
  }
  @ObjectModel.text.element: [ 'LiftDesc' ]
  Lift,
  @EndUserText: {
    label: 'Vehicle Document Type', 
    quickInfo: 'Vehicle Document Type'
  }
//  @ObjectModel.text.element: [ 'VehicleDocTypeDesc' ]
  VehicleDocType,
  @EndUserText: {
    label: 'Pledge Information', 
    quickInfo: 'Pledge Information'
  }
//  @ObjectModel.text.element: [ 'PledgeInfoDesc' ]
  PledgeInfo,
  @EndUserText: {
    label: 'Model Year', 
    quickInfo: 'Model Year'
  }
//  @ObjectModel.text.element: [ 'ModelYearDesc' ]
  ModelYear,
  @EndUserText: {
    label: 'Vehicle Type', 
    quickInfo: 'Vehicle Type'
  }
//  @ObjectModel.text.element: [ 'VehicleTypeDesc' ]
  VehicleType,
  @EndUserText: {
    label: 'Insurance Policy Company', 
    quickInfo: 'Insurance Policy Company'
  }
  InsurancePlcyComp,
  @EndUserText: {
    label: 'Insurance Agency', 
    quickInfo: 'Insurance Agency'
  }
//  @ObjectModel.text.element: [ 'InsuranceAgencyDesc' ]
  InsuranceAgency,
  @EndUserText: {
    label: 'Traffic Policy Company', 
    quickInfo: 'Traffic Policy Company'
  }
  TrafficPlcyComp,
  @EndUserText: {
    label: 'Traffic Start Date', 
    quickInfo: 'Traffic Start Date'
  }
  TrafficStartDate,
  @EndUserText: {
    label: 'Traffic End Date', 
    quickInfo: 'Traffic End Date'
  }
  TrafficEndDate,
  @EndUserText: {
    label: 'Traffic Insurance Agency', 
    quickInfo: 'Traffic Insurance Agency'
  }
//  @ObjectModel.text.element: [ 'TrafficInsuranceAgDesc' ]
  TrafficInsuranceAg,
  @EndUserText: {
    label: 'Pers. Accident Policy Company', 
    quickInfo: 'Pers. Accident Policy Company'
  }
  PrAccidentPlcyCmp,
  @EndUserText: {
    label: 'Pers. Accident Start Date', 
    quickInfo: 'Pers. Accident Start Date'
  }
  PersAccidentStartD,
  @EndUserText: {
    label: 'Pers. Accident End Date', 
    quickInfo: 'Pers. Accident End Date'
  }
  PersAccidentEndDat,
  @EndUserText: {
    label: 'Prs. Accident Insurance Agency', 
    quickInfo: 'Prs. Accident Insurance Agency'
  }
//  @ObjectModel.text.element: [ 'PersAccidentInsAgcDesc' ]
  PersAccidentInsAgc,
  @EndUserText: {
    label: 'Case TL', 
    quickInfo: 'Case TL'
  }
  @Semantics: {
    amount.currencyCode: 'CaseCurr'
  }
  CaseTL,
  @EndUserText: {
    label: 'Case TL (Cur.)', 
    quickInfo: 'Case TL (Cur.)'
  }
  @UI.hidden: true
  CaseCurr,
  @EndUserText: {
    label: 'Inspection Start', 
    quickInfo: 'Inspection Start'
  }
  InspectionStart,
  @EndUserText: {
    label: 'Inspection End', 
    quickInfo: 'Inspection End'
  }
  InspectionEnd,
  @EndUserText: {
    label: 'HGS No', 
    quickInfo: 'HGS No'
  }
  HGSNo,
  @EndUserText: {
    label: 'Registration Date', 
    quickInfo: 'Registration Date'
  }
  RegistrationDate,
  @EndUserText: {
    label: 'Issued Place', 
    quickInfo: 'Issued Place'
  }
  IssuedPlace,
  @EndUserText: {
    label: 'Payload Capacity', 
    quickInfo: 'Payload Capacity'
  }
  PayloadCapacity,
  @EndUserText: {
    label: 'Document Serial No', 
    quickInfo: 'Document Serial No'
  }
  DocumentSerialNo,
  @EndUserText: {
    label: 'Chassis No', 
    quickInfo: 'Chassis No'
  }
  ChassisNo,
  @EndUserText: {
    label: 'Category', 
    quickInfo: 'Category'
  }
  Category,
  @EndUserText: {
    label: 'Tension Belt', 
    quickInfo: 'Tension Belt'
  }
//  @ObjectModel.text.element: [ 'TensionBeltDesc' ]
  TensionBelt,
  @EndUserText: {
    label: 'Stepne', 
    quickInfo: 'Stepne'
  }
//  @ObjectModel.text.element: [ 'StepneDesc' ]
  Stepne,
  @EndUserText: {
    label: 'Tachograph Calibration Date', 
    quickInfo: 'Tachograph Calibration Date'
  }
  TachographClbDate,
  @EndUserText: {
    label: 'Exhaust Inspection End Date', 
    quickInfo: 'Exhaust Inspection End Date'
  }
  ExhaustInspEndDate,
  @EndUserText: {
    label: 'Postern Door', 
    quickInfo: 'Postern Door'
  }
//  @ObjectModel.text.element: [ 'PosternDoorDesc' ]
  PosternDoor,
  @EndUserText: {
    label: 'Air Condition', 
    quickInfo: 'Air Condition'
  }
//  @ObjectModel.text.element: [ 'AirConditionDesc' ]
  AirCondition,
  @EndUserText: {
    label: 'Pledge Company', 
    quickInfo: 'Pledge Company'
  }
  PledgeCompany,
  @EndUserText: {
    label: 'Pallet Number', 
    quickInfo: 'Pallet Number'
  }
//  @ObjectModel.text.element: [ 'PalletNumberDesc' ]
  PalletNumber,
  @EndUserText: {
    label: 'Licence Owner', 
    quickInfo: 'Licence Owner'
  }
//  @ObjectModel.text.element: [ 'CompanyDesc' ]
  Company,
  @EndUserText: {
    label: 'Vehicle Body Type', 
    quickInfo: 'Vehicle Body Type'
  }
//  @ObjectModel.text.element: [ 'VehicleBodyTypeDesc' ]
  VehicleBodyType,
  @EndUserText: {
    label: 'Model', 
    quickInfo: 'Model'
  }
  Model,
  @EndUserText: {
    label: 'Vehicle Class', 
    quickInfo: 'Vehicle Class'
  }
  VehicleClass,
  _Equipmentp.MaintenancePlannerGroup,
  _Equipmentp.MaintenancePlanningPlant,
  _Equipmentp.MainWorkCenter,
  _Equipmentp.MainWorkCenterPlant,
  _Equipmentp.CatalogProfile,
  _Equipmentp.CompanyCode,
  _Equipmentp.ControllingArea,
  _Equipmentp.BusinessArea,
  _Equipmentp.CostCenter,
  _Equipmentp.WBSElementExternalID,
  _Equipmentp.SettlementOrder,
  _Equipmentp.MasterFixedAsset,
  _Equipmentp.FixedAsset,
    
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    @UI.hidden: true
    virtual VehicleBodyTypeDesc : zpm_vehiclebodytypedescr,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    @UI.hidden: true
    virtual VehicleStatForEquiDesc : zpm_vehiclestatforequidesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    @UI.hidden: true
    virtual VehicleDocTypeDesc : zpm_vehicledoctypedesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    @UI.hidden: true
    virtual ModelYearDesc : zpm_modelyeardesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    @UI.hidden: true
    virtual VehicleTypeDesc : zpm_vehicletypedescr,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    @UI.hidden: true
    virtual InsuranceAgencyDesc : zpm_insuranceagencydesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    @UI.hidden: true
    virtual TrafficInsuranceAgDesc : zpm_trafficinsuranceagdesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual PersAccidentInsAgcDesc : zpm_persaccidentinsagcdesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual TensionBeltDesc : zpm_tensionbeltdesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual PalletNumberDesc : zpm_palletnumberdesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual CompanyDesc : zpm_companydesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual AirConditionDesc : zpm_aircndtndesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual LiftDesc : zpm_liftdesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual LogoDesc : zpm_logodesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual PledgeInfoDesc : zpm_pledgeinfodesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual PosternDoorDesc :zpm_posterndoordesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual SeperatorDesc : zpm_seperatordesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual StepneDesc : zpm_stepnedesc,
    @Semantics.text: true
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PM_ADDL_FIELD_TEXT'
    virtual StandingOrder : zpm_standingorder,
    
    
  _Equipmentp,
  _BaseEntity
}
