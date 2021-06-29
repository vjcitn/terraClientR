# openapi::WorkspaceRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | The namespace (billing project) the workspace belongs to | 
**name** | **character** | The name of the workspace | 
**authorizationDomain** | [**array[ManagedGroupRef]**](ManagedGroupRef.md) | The list of groups in the Authorization Domain (empty if no AD is set) | [optional] 
**attributes** | **object** |  | 
**noWorkspaceOwner** | **character** | Optional, false if not specified. If true, the workspace is created with a Billing Project owner but no workspace owner. Requires being a Billing Project owner. | [optional] [default to FALSE]


