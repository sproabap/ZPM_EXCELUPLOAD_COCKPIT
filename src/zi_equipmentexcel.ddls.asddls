@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Equipment Excel Upload'

@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_EquipmentExcel
  as select from I_Equipment as Equipment

  // inner join I_EquipmentTP as Equipmentp on Equipmentp.ValidityEndDate = '99991231'
  association to I_EquipmentTP as _Equipmentp on $projection.Equipment = _Equipmentp.Equipment and _Equipmentp.ValidityEndDate = '99991231'

{
  key Equipment.Equipment                  as Equipment,
      Equipment._EquipmentText[ 1: Language = $session.system_language ].EquipmentName as EquipmentText,
      Equipment.YY1_VehicleStatForEqui_IEQ as VehicleStatForEqui,
      Equipment.YY1_InsuranceStartDate_IEQ as InsuranceStartDate,
      Equipment.YY1_InsuranceEndDate_IEQ   as InsuranceEndDate,
      Equipment.YY1_FileNumber_IEQ         as FileNumber,
      Equipment.YY1_UserAllocatedPersn_IEQ as UserAllocatedPersn,
      Equipment.YY1_LiftNoTxt_IEQ          as LiftNo,
      Equipment.YY1_CaseNoTxt_IEQ          as CaseNo,
      Equipment.YY1_AirConditionNoTxt_IEQ  as AirConditionNo,
      Equipment.YY1_SequenceNoTxt_IEQ      as SequenceNo,

      @Semantics.amount.currencyCode: 'AirCondtionCurr'
      Equipment.YY1_AirconditioningTL_IEQ  as AirconditioningTL,

      Equipment.YY1_AirconditioningTL_IEQC as AirCondtionCurr,

      @Semantics.amount.currencyCode: 'Liftcurr'
      Equipment.YY1_LiftTL_IEQ             as LiftTL,

      Equipment.YY1_LiftTL_IEQC            as Liftcurr,

      @Semantics.amount.currencyCode: 'HGSCurr'
      Equipment.YY1_HGSBalance_IEQ         as HGSBalance,

      Equipment.YY1_HGSBalance_IEQC        as HGSCurr,
      Equipment.YY1_Region_IEQ             as Region,
      Equipment.YY1_L1No_IEQ               as L1No,
      Equipment.YY1_K1No_IEQ               as K1No,
      Equipment.YY1_EngineNo_IEQ           as EngineNo,
      Equipment.YY1_DeviceName_IEQ         as DeviceName,
      Equipment.YY1_Color_IEQ              as Color,
      Equipment.YY1_Brand_IEQ              as Brand,
      Equipment.YY1_Logo1_IEQ              as Logo,
      Equipment.YY1_MaintenanceIntrvl_IEQ  as MaintenanceInterval,
      Equipment.YY1_ATPEndDate_IEQ         as ATPEndDate,
      Equipment.YY1_Separator1_IEQ         as Separator,
      Equipment.YY1_Lift1_IEQ              as Lift,
      Equipment.YY1_VehicleDocType_IEQ     as VehicleDocType,
      Equipment.YY1_PledgeInfo_IEQ         as PledgeInfo,
      Equipment.YY1_PMModelYear_IEQ        as ModelYear,
      Equipment.YY1_PMVehicleType_IEQ      as VehicleType,
      Equipment.YY1_InsurancePlcyComp_IEQ  as InsurancePlcyComp,
      Equipment.YY1_TrafficPlcyComp_IEQ    as TrafficPlcyComp,
      Equipment.YY1_PrAccidentPlcyCmp_IEQ  as PrAccidentPlcyCmp,
      Equipment.YY1_InsuranceAgency_IEQ    as InsuranceAgency,
      Equipment.YY1_TrafficStartDate_IEQ   as TrafficStartDate,
      Equipment.YY1_TrafficEndDate_IEQ     as TrafficEndDate,
      Equipment.YY1_TrafficInsuranceAg_IEQ as TrafficInsuranceAg,
      Equipment.YY1_PersAccidentStartD_IEQ as PersAccidentStartD,
      Equipment.YY1_PersAccidentEndDat_IEQ as PersAccidentEndDat,
      Equipment.YY1_PersAccidentInsAgc_IEQ as PersAccidentInsAgc,

      @Semantics.amount.currencyCode: 'CaseCurr'
      Equipment.YY1_CaseTL_IEQ             as CaseTL,

      Equipment.YY1_CaseTL_IEQC            as CaseCurr,
      Equipment.YY1_InspectionStart_IEQ    as InspectionStart,
      Equipment.YY1_InspectionEnd_IEQ      as InspectionEnd,
      Equipment.YY1_HGSNo_IEQ              as HGSNo,
      Equipment.YY1_RegistrationDate_IEQ   as RegistrationDate,
      Equipment.YY1_IssuedPlace_IEQ        as IssuedPlace,
      Equipment.YY1_PayloadCapacity_IEQ    as PayloadCapacity,
      Equipment.YY1_DocumentSerialNo_IEQ   as DocumentSerialNo,
      Equipment.YY1_ChassisNo_IEQ          as ChassisNo,
      Equipment.YY1_Category_IEQ           as Category,
      Equipment.YY1_TensionBelt_IEQ        as TensionBelt,
      Equipment.YY1_Stepne1_IEQ            as Stepne,
      Equipment.YY1_TachographClbDate_IEQ  as TachographClbDate,
      Equipment.YY1_ExhaustInspEndDate_IEQ as ExhaustInspEndDate,
      Equipment.YY1_PosternDoorInfo_IEQ    as PosternDoor,
      Equipment.YY1_AirCndtn_IEQ           as AirCondition,
      Equipment.YY1_PledgeCompany_IEQ      as PledgeCompany,
      Equipment.YY1_PalletNumber_IEQ       as PalletNumber,
      Equipment.YY1_Company_IEQ            as Company,
      Equipment.YY1_PMVehicleBodyType_IEQ  as VehicleBodyType,
      Equipment.YY1_Type_IEQ               as Model,
      Equipment.YY1_VehicleClass_IEQ       as VehicleClass,


      _Equipmentp
}
