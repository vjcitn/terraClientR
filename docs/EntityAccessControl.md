# openapi::EntityAccessControl


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | [**MethodShort**](MethodShort.md) |  | [optional] 
**referencedBy** | [**MethodConfigurationName**](MethodConfigurationName.md) |  | 
**acls** | [**array[FireCloudPermission]**](FireCloudPermission.md) | method repo ACLs for the referenced method | 
**message** | **character** | error message generated when retrieving acls for this method | [optional] 


