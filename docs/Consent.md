# openapi::Consent


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consentId** | **character** | The ID of the entity. | [optional] 
**name** | **character** | Name used to identify the consent. | [optional] 
**createDate** | **integer** | Creation Date in date-time milliseconds | [optional] 
**lastUpdate** | **integer** | Date of the last update in date-time milliseconds | [optional] 
**sortDate** | **integer** | The lastest modification date in date-time milliseconds | [optional] 
**requiresManualReview** | **character** | Describes if this consent has to be reviewed manually. | [optional] 
**dataUseLetter** | **character** | The URL of the saved file. | [optional] 
**useRestriction** | **map(object)** | The UseRestriction of this consent. Used to match against another entities. | [optional] 
**dulName** | **character** | Name that identifies the Data Use Letter file. | [optional] 
**translatedUseRestriction** | **character** | The translated use restriction of the consent. | [optional] 


