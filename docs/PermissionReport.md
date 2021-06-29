# openapi::PermissionReport

ACLs for users of a workspace and methods referenced by that workspace

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workspaceACL** | [**map(WorkspaceAccessEntry)**](WorkspaceAccessEntry.md) | a map of (user email -&gt; WorkspaceAccessEntry). &#x60;exampleEmail&#x60; is an example key. | 
**referencedMethods** | [**array[EntityAccessControl]**](EntityAccessControl.md) |  | 


