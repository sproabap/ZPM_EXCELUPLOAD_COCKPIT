@EndUserText.label: 'Abstract Entity For Upload Excel'
define root abstract entity ZPM_AE_UPLOADEXCEL
{
    @UI.hidden: true
    dummy : abap_boolean;
     _Attachment : association [1] to ZPM_AE_FILESTREAM on 1 = 1;
    
    
}
