# openapi::Workspace


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | The namespace the workspace belongs to | 
**name** | **character** | The name of the workspace | 
**authorizationDomain** | [**array[ManagedGroupRef]**](ManagedGroupRef.md) | The list of groups to form the Authorization Domain (empty if no Authorization Domain is set) | 
**workspaceId** | **character** | A UUID associated with the workspace | 
**bucketName** | **character** | The name of the bucket associated with the workspace | 
**createdDate** | **character** | The date the workspace was created in yyyy-MM-ddTHH:mm:ss.SSSZZ format | 
**lastModified** | **character** | The date the workspace was last modified in yyyy-MM-ddTHH:mm:ss.SSSZZ format | 
**createdBy** | **character** | The user who created the workspace | 
**attributes** | **map(character)** | Map[String, Attribute] | 
**accessLevels** | [**map(RawlsGroupRef)**](RawlsGroupRef.md) | Map[String, RawlsGroupRef] | 
**authDomainACLs** | [**map(RawlsGroupRef)**](RawlsGroupRef.md) | Map[String, RawlsGroupRef] | 
**isLocked** | **character** | Can the Workspace currently be modified? | 


