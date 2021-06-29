# openapi::WorkspaceDetails


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | **object** | Map[String, Attribute] | [optional] 
**authorizationDomain** | [**array[ManagedGroupRef]**](ManagedGroupRef.md) | The list of groups in the Authorization Domain (empty if no AD is set) | [optional] 
**bucketName** | **character** | The name of the bucket associated with the workspace | 
**createdBy** | **character** | The user who created the workspace | 
**createdDate** | **character** | The date the workspace was created in yyyy-MM-ddTHH:mm:ss.SSSZZ format | 
**isLocked** | **character** | Can the Workspace currently be modified? | 
**lastModified** | **character** | The date the workspace was last modified in yyyy-MM-ddTHH:mm:ss.SSSZZ format | 
**name** | **character** | The name of the workspace | 
**namespace** | **character** | The namespace the workspace belongs to | 
**workflowCollectionName** | **character** | The name of the workflow collection associated with the workspace | [optional] 
**workspaceId** | **character** | A UUID associated with the workspace | 


