@EndUserText.label: 'Abstract Entity For File Stream'
define root abstract entity ZPM_AE_FILESTREAM
{
  @Semantics.largeObject.mimeType: 'MimeType'
  @Semantics.largeObject.fileName: 'FileName'
  @Semantics.largeObject.contentDispositionPreference: #INLINE
  @EndUserText.label: 'Select Excel file'
  Attachment : abap.rawstring(0);
  
  @UI.hidden: true
  MimeType : abap.char(128);
  
  @UI.hidden: true
  FileName : abap.char(128); 
    
}
