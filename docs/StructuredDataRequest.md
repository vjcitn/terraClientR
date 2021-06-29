# openapi::StructuredDataRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**generalResearchUse** | **character** | Is the data available for future general research use? | 
**healthMedicalBiomedicalUseRequired** | **character** | Is future use limited for health/medical/biomedical research? | 
**diseaseUseRequired** | **array[character]** | Future use is limited to research involving the following disease area(s). These values must be urls such as \&quot;http://purl.obolibrary.org/obo/DOID_12345\&quot;. | 
**commercialUseProhibited** | **character** | Is future commercial use prohibited? | 
**forProfitUseProhibited** | **character** | Is future use by for-profit entities prohibited? | 
**methodsResearchProhibited** | **character** | Is future use for methods research (analytic/software/technology development) outside the bounds of the other specified restrictions prohibited? | 
**aggregateLevelDataProhibited** | **character** | Is future use of aggregate-level data for general research purposes prohibited? | 
**controlsUseProhibited** | **character** | Is future use as a control set for diseases other than those specified prohibited? | 
**genderUseRequired** | **character** | If future use is limited to research involving a particular gender, specify \&quot;male\&quot; or \&quot;female\&quot;. Any other value will be read as false. This field is case-insensitive. | 
**pediatricResearchRequired** | **character** | Is future use limited to pediatric research? | 
**irbRequired** | **character** | Should the requester provide documentation of local IRB/REC approval? | 
**prefix** | **character** | Optional. A prefix that is prepended to the field names of the responses. This is purely for personalization. | [optional] 


