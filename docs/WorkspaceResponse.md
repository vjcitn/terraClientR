# openapi::WorkspaceResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessLevel** | [**WorkspaceAccessLevel**](WorkspaceAccessLevel.md) |  | [optional] 
**bucketOptions** | [**WorkspaceBucketOptions**](WorkspaceBucketOptions.md) |  | [optional] 
**canCompute** | **character** |  | [optional] 
**canShare** | **character** |  | [optional] 
**catalog** | **character** |  | [optional] 
**owners** | **array[character]** | Owners of this workspace. This API only lists owners; use the get-workspace-ACL API to get the full list of all users at all permission levels.  | [optional] 
**workspace** | [**WorkspaceDetails**](WorkspaceDetails.md) |  | [optional] 
**workspaceSubmissionStats** | [**WorkspaceSubmissionStats**](WorkspaceSubmissionStats.md) |  | [optional] 


