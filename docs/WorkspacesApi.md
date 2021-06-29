# WorkspacesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BrowserDownloadAttributes**](WorkspacesApi.md#BrowserDownloadAttributes) | **GET** /cookie-authed/workspaces/{workspaceNamespace}/{workspaceName}/exportAttributesTSV | TSV file containing workspace attributes (allows cookie-based authentication) 
[**ChangedWorkspaceNotification**](WorkspacesApi.md#ChangedWorkspaceNotification) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/sendChangeNotification | Sends notifications for change to workspace
[**CheckIamActionWithLock**](WorkspacesApi.md#CheckIamActionWithLock) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/checkIamActionWithLock/{samActionName} | Check IAM action with lock
[**CloneWorkspace**](WorkspacesApi.md#CloneWorkspace) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/clone | Clone Workspace
[**CreateWorkspace**](WorkspacesApi.md#CreateWorkspace) | **POST** /api/workspaces | Create workspace
[**DeleteWorkspace**](WorkspacesApi.md#DeleteWorkspace) | **DELETE** /api/workspaces/{workspaceNamespace}/{workspaceName} | Delete workspace
[**DeleteWorkspaceTags**](WorkspacesApi.md#DeleteWorkspaceTags) | **DELETE** /api/workspaces/{workspaceNamespace}/{workspaceName}/tags | Remove the user-supplied tags from the workspace. 
[**ExportAttributesTSV**](WorkspacesApi.md#ExportAttributesTSV) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/exportAttributesTSV | TSV file containing workspace attributes 
[**GetBucketUsage**](WorkspacesApi.md#GetBucketUsage) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/bucketUsage | Get bucket usage
[**GetCatalog**](WorkspacesApi.md#GetCatalog) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/catalog | Get workspace catalog permission
[**GetStorageCostEstimate**](WorkspacesApi.md#GetStorageCostEstimate) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/storageCostEstimate | Calculate an estimate of the monthly storage cost for the workspace bucket
[**GetTags**](WorkspacesApi.md#GetTags) | **GET** /api/workspaces/tags | Get all tags used in FireCloud (for autocomplete) 
[**GetWorkspace**](WorkspacesApi.md#GetWorkspace) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName} | Get workspace
[**GetWorkspaceAccessInstructions**](WorkspacesApi.md#GetWorkspaceAccessInstructions) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/accessInstructions | Get workspace access instructions (if any)
[**GetWorkspaceAcl**](WorkspacesApi.md#GetWorkspaceAcl) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/acl | Get workspace ACL
[**GetWorkspaceBucketOptions**](WorkspacesApi.md#GetWorkspaceBucketOptions) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/bucketOptions | Get metadata about the workspace bucket
[**GetWorkspaceTags**](WorkspacesApi.md#GetWorkspaceTags) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/tags | Get the tags for this workspace. 
[**ImportAttributesTSV**](WorkspacesApi.md#ImportAttributesTSV) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/importAttributesTSV | Import workspace attributes from a tsv file
[**ListWorkspaceMethodConfigs**](WorkspacesApi.md#ListWorkspaceMethodConfigs) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/methodconfigs | List method configurations in a workspace
[**ListWorkspaces**](WorkspacesApi.md#ListWorkspaces) | **GET** /api/workspaces | Lists workspaces. 
[**LockWorkspace**](WorkspacesApi.md#LockWorkspace) | **PUT** /api/workspaces/{workspaceNamespace}/{workspaceName}/lock | Lock Workspace
[**PatchWorkspaceTags**](WorkspacesApi.md#PatchWorkspaceTags) | **PATCH** /api/workspaces/{workspaceNamespace}/{workspaceName}/tags | Add tags to the workspace without modifying pre-existing tags. 
[**PostWorkspaceMethodConfig**](WorkspacesApi.md#PostWorkspaceMethodConfig) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/methodconfigs | Create a Method Configuration in a workspace
[**PutWorkspaceTags**](WorkspacesApi.md#PutWorkspaceTags) | **PUT** /api/workspaces/{workspaceNamespace}/{workspaceName}/tags | Replace all tags for this workspace with the user input. 
[**ReadBucket**](WorkspacesApi.md#ReadBucket) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/checkBucketReadAccess | Read workspace bucket
[**SetAttributes**](WorkspacesApi.md#SetAttributes) | **PATCH** /api/workspaces/{workspaceNamespace}/{workspaceName}/setAttributes | Set attributes on a workspace. 
[**UnlockWorkspace**](WorkspacesApi.md#UnlockWorkspace) | **PUT** /api/workspaces/{workspaceNamespace}/{workspaceName}/unlock | Unlock Workspace
[**UpdateAttributes**](WorkspacesApi.md#UpdateAttributes) | **PATCH** /api/workspaces/{workspaceNamespace}/{workspaceName}/updateAttributes | Modify attributes on a workspace. 
[**UpdateCatalog**](WorkspacesApi.md#UpdateCatalog) | **PATCH** /api/workspaces/{workspaceNamespace}/{workspaceName}/catalog | Update catalog permission
[**UpdateWorkspaceACL**](WorkspacesApi.md#UpdateWorkspaceACL) | **PATCH** /api/workspaces/{workspaceNamespace}/{workspaceName}/acl | Update workspace ACL
[**WorkspacePermissionReport**](WorkspacesApi.md#WorkspacePermissionReport) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/permissionReport | Retrieve user permissions for the workspace and the workspace&#39;s method references


# **BrowserDownloadAttributes**
> data.frame BrowserDownloadAttributes(workspace.namespace, workspace.name)

TSV file containing workspace attributes (allows cookie-based authentication) 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#TSV file containing workspace attributes (allows cookie-based authentication) 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$BrowserDownloadAttributes(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

**data.frame**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace attributes in TSV format |  -  |
| **404** | Workspace does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **ChangedWorkspaceNotification**
> ChangedWorkspaceNotification(workspace.namespace, workspace.name)

Sends notifications for change to workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | workspace namespace
var.workspace.name <- 'workspace.name_example' # character | workspace name

#Sends notifications for change to workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ChangedWorkspaceNotification(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| workspace namespace | 
 **workspace.name** | **character**| workspace name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **403** | Insufficient permisions to send notification on this workspace |  -  |

# **CheckIamActionWithLock**
> CheckIamActionWithLock(workspace.namespace, workspace.name, sam.action.name)

Check IAM action with lock

Check to see if the user has the given action on a workspace in Sam. Takes into account if the workspace is locked too.

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.sam.action.name <- 'sam.action.name_example' # character | Sam action

#Check IAM action with lock
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$CheckIamActionWithLock(var.workspace.namespace, var.workspace.name, var.sam.action.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **sam.action.name** | **character**| Sam action | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | User can perform the given action on the workspace |  -  |
| **403** | User may not perform the given action on the workspace (including if it doesn&#39;t exist) |  -  |
| **500** | Internal Server Error |  -  |

# **CloneWorkspace**
> WorkspaceDetails CloneWorkspace(workspace.namespace, workspace.name, workspace)

Clone Workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.workspace <- WorkspaceRequestClone$new("namespace_example", "name_example", 123, list(ManagedGroupRef$new("membersGroupName_example")), "copyFilesWithPrefix_example", "noWorkspaceOwner_example") # WorkspaceRequestClone | Cloned workspace information

#Clone Workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$CloneWorkspace(var.workspace.namespace, var.workspace.name, var.workspace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **workspace** | [**WorkspaceRequestClone**](WorkspaceRequestClone.md)| Cloned workspace information | 

### Return type

[**WorkspaceDetails**](WorkspaceDetails.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful Request |  -  |
| **400** | Unable to create resources for workspace |  -  |
| **404** | Source workspace not found |  -  |
| **409** | Destination workspace already exists |  -  |
| **500** | Internal Server Error |  -  |

# **CreateWorkspace**
> WorkspaceDetails CreateWorkspace(workspace)

Create workspace

### Example
```R
library(openapi)

var.workspace <- WorkspaceRequest$new("namespace_example", "name_example", 123, list(ManagedGroupRef$new("membersGroupName_example")), "noWorkspaceOwner_example") # WorkspaceRequest | New workspace information

#Create workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$CreateWorkspace(var.workspace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace** | [**WorkspaceRequest**](WorkspaceRequest.md)| New workspace information | 

### Return type

[**WorkspaceDetails**](WorkspaceDetails.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful Request |  -  |
| **400** | Bad request |  -  |
| **403** | Unable to create bucket for workspace |  -  |
| **409** | Workspace by that name already exists |  -  |
| **500** | Internal Server Error |  -  |

# **DeleteWorkspace**
> DeleteWorkspace(workspace.namespace, workspace.name)

Delete workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Delete workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DeleteWorkspace(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Request Accepted |  -  |
| **403** | User does not have correct permissions to delete a published workspace |  -  |
| **404** | Workspace does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **DeleteWorkspaceTags**
> array[character] DeleteWorkspaceTags(workspace.namespace, workspace.name, tags)

Remove the user-supplied tags from the workspace. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.tags <- list("property_example") # array[character] | List of tags.

#Remove the user-supplied tags from the workspace. 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$DeleteWorkspaceTags(var.workspace.namespace, var.workspace.name, var.tags)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **tags** | list( **character** )| List of tags. | 

### Return type

**array[character]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace tags |  -  |
| **400** | Invalid input |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **ExportAttributesTSV**
> data.frame ExportAttributesTSV(workspace.namespace, workspace.name)

TSV file containing workspace attributes 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#TSV file containing workspace attributes 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ExportAttributesTSV(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

**data.frame**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace attributes in TSV format |  -  |
| **404** | Workspace does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **GetBucketUsage**
> GetBucketUsage(workspace.namespace, workspace.name)

Get bucket usage

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Get bucket usage
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetBucketUsage(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |

# **GetCatalog**
> array[WorkspaceCatalog] GetCatalog(workspace.namespace, workspace.name)

Get workspace catalog permission

Get catalog permissions for a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Get workspace catalog permission
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetCatalog(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

[**array[WorkspaceCatalog]**](WorkspaceCatalog.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | Workspace not found |  -  |
| **500** | Rawls Internal Error |  -  |

# **GetStorageCostEstimate**
> GetStorageCostEstimate(workspace.namespace, workspace.name)

Calculate an estimate of the monthly storage cost for the workspace bucket

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Calculate an estimate of the monthly storage cost for the workspace bucket
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetStorageCostEstimate(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Storage cost estimate |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **GetTags**
> array[WorkspaceTag] GetTags(q=var.q)

Get all tags used in FireCloud (for autocomplete) 

list of all tags used in FireCloud and their associated frequencies

### Example
```R
library(openapi)

var.q <- 'q_example' # character | Query string

#Get all tags used in FireCloud (for autocomplete) 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetTags(q=var.q)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Query string | [optional] 

### Return type

[**array[WorkspaceTag]**](WorkspaceTag.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | list of all tags used in FireCloud |  -  |
| **500** | Rawls Internal Error |  -  |

# **GetWorkspace**
> WorkspaceResponse GetWorkspace(workspace.namespace, workspace.name, fields=var.fields)

Get workspace

Get a single workspace's details, optionally filtered to only the specified fields. See additional GET methods in this section to retrieve additional details about the workspace. For instance, this API only returns the workspace's owners; use the GET .../acl method to retrieve the full list of all users at all permission levels. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.fields <- list("inner_example") # array[character] | When specified, include only these keys in the response payload and exclude other keys. Accepts a comma-delimited list of values. To include a nested key, specify the key's path using a dot delimiter; for example, to include {\"workspace\": {\"attributes\": {}}}, specify \"workspace.attributes\". Legal values are any first-level key in the response, any first-level key inside the {\"workspace\": {}} object, and any first-level key inside the {\"workspace\": {\"attributes\": {}}} object. If omitted, will return the full response payload. 

#Get workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetWorkspace(var.workspace.namespace, var.workspace.name, fields=var.fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **fields** | list( **character** )| When specified, include only these keys in the response payload and exclude other keys. Accepts a comma-delimited list of values. To include a nested key, specify the key&#39;s path using a dot delimiter; for example, to include {\&quot;workspace\&quot;: {\&quot;attributes\&quot;: {}}}, specify \&quot;workspace.attributes\&quot;. Legal values are any first-level key in the response, any first-level key inside the {\&quot;workspace\&quot;: {}} object, and any first-level key inside the {\&quot;workspace\&quot;: {\&quot;attributes\&quot;: {}}} object. If omitted, will return the full response payload.  | [optional] 

### Return type

[**WorkspaceResponse**](WorkspaceResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Unrecognized query parameters |  -  |
| **404** | Workspace does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **GetWorkspaceAccessInstructions**
> array[ManagedGroupAccessInstructions] GetWorkspaceAccessInstructions(workspace.namespace, workspace.name)

Get workspace access instructions (if any)

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Get workspace access instructions (if any)
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetWorkspaceAccessInstructions(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

[**array[ManagedGroupAccessInstructions]**](ManagedGroupAccessInstructions.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Server Error |  -  |

# **GetWorkspaceAcl**
> WorkspaceACL GetWorkspaceAcl(workspace.namespace, workspace.name)

Get workspace ACL

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Get workspace ACL
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetWorkspaceAcl(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

[**WorkspaceACL**](WorkspaceACL.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Can&#39;t retrieve ACL for workspace |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Server Error |  -  |

# **GetWorkspaceBucketOptions**
> WorkspaceBucketOptions GetWorkspaceBucketOptions(workspace.namespace, workspace.name)

Get metadata about the workspace bucket

Returns metadata about the workspace bucket.

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Get metadata about the workspace bucket
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetWorkspaceBucketOptions(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

[**WorkspaceBucketOptions**](WorkspaceBucketOptions.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | Workspace not found |  -  |
| **500** | Rawls Internal Error |  -  |

# **GetWorkspaceTags**
> array[character] GetWorkspaceTags(workspace.namespace, workspace.name)

Get the tags for this workspace. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Get the tags for this workspace. 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetWorkspaceTags(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

**array[character]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace tags |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **ImportAttributesTSV**
> ImportAttributesTSV(workspace.namespace, workspace.name, attributes)

Import workspace attributes from a tsv file

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.attributes <- File.new('/path/to/file') # data.frame | A valid TSV import file

#Import workspace attributes from a tsv file
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ImportAttributesTSV(var.workspace.namespace, var.workspace.name, var.attributes)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **attributes** | **data.frame**| A valid TSV import file | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Bad Request |  -  |
| **404** | Source Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **ListWorkspaceMethodConfigs**
> ListWorkspaceMethodConfigs(workspace.namespace, workspace.name, all.repos=FALSE)

List method configurations in a workspace

List method configurations in a workspace. By default, only Agora method configs are returned. To return configs for all repos, specify `allRepos` to be `true`.  #### Expanded discussion on the methodRepoMethod field  This endpoint returns method references to Agora in the format ``` \"methodRepoMethod\": {   \"methodNamespace\": \"namespace\",   \"methodName\": \"name\",   \"methodVersion\": 1,   \"sourceRepo\": \"agora\",   \"methodUri\": \"agora://namespace/name/1\" } ``` and for Dockstore in the format ``` \"methodRepoMethod\": {   \"methodPath\": \"path\",   \"methodVersion\": \"version\",   \"sourceRepo\": \"agora\",   \"methodUri\": \"dockstore://path/version\" } ``` If you are only working with Agora methods, the fields `\"sourceRepo\"` and `\"methodUri\"` can be considered informational and do not need to be round-tripped (see the corresponding `POST /api/workspaces/{workspaceNamespace}/{workspaceName}/methodconfigs` for more details). 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.all.repos <- FALSE # character | Configs for all repos, not just Agora

#List method configurations in a workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ListWorkspaceMethodConfigs(var.workspace.namespace, var.workspace.name, all.repos=var.all.repos)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **all.repos** | **character**| Configs for all repos, not just Agora | [optional] [default to FALSE]

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of Method Configurations |  -  |
| **404** | Workspace does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **ListWorkspaces**
> array[WorkspaceListResponse] ListWorkspaces(fields=var.fields)

Lists workspaces. 

### Example
```R
library(openapi)

var.fields <- list("inner_example") # array[character] | When specified, include only these keys in the response payload and exclude other keys. Accepts a comma-delimited list of values. To include a nested key, specify the key's path using a dot delimiter; for example, to include {\"workspace\": {\"attributes\": {}}}, specify \"workspace.attributes\". Legal values are any first-level key in the response, any first-level key inside the {\"workspace\": {}} object, and any first-level key inside the {\"workspace\": {\"attributes\": {}}} object. If omitted, will return the full response payload. 

#Lists workspaces. 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ListWorkspaces(fields=var.fields)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fields** | list( **character** )| When specified, include only these keys in the response payload and exclude other keys. Accepts a comma-delimited list of values. To include a nested key, specify the key&#39;s path using a dot delimiter; for example, to include {\&quot;workspace\&quot;: {\&quot;attributes\&quot;: {}}}, specify \&quot;workspace.attributes\&quot;. Legal values are any first-level key in the response, any first-level key inside the {\&quot;workspace\&quot;: {}} object, and any first-level key inside the {\&quot;workspace\&quot;: {\&quot;attributes\&quot;: {}}} object. If omitted, will return the full response payload.  | [optional] 

### Return type

[**array[WorkspaceListResponse]**](WorkspaceListResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of workspaces. |  -  |
| **400** | Unrecognized query parameters |  -  |

# **LockWorkspace**
> LockWorkspace(workspace.namespace, workspace.name)

Lock Workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Lock Workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$LockWorkspace(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | No response was specified |  -  |
| **204** | Successful Request |  -  |
| **403** | Not Owner |  -  |
| **404** | Workspace Not Found |  -  |
| **500** | Internal Server Error |  -  |

# **PatchWorkspaceTags**
> array[character] PatchWorkspaceTags(workspace.namespace, workspace.name, tags)

Add tags to the workspace without modifying pre-existing tags. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.tags <- list("property_example") # array[character] | List of tags.

#Add tags to the workspace without modifying pre-existing tags. 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$PatchWorkspaceTags(var.workspace.namespace, var.workspace.name, var.tags)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **tags** | list( **character** )| List of tags. | 

### Return type

**array[character]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace tags |  -  |
| **400** | Invalid input |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **PostWorkspaceMethodConfig**
> PostWorkspaceMethodConfig(workspace.namespace, workspace.name, method.config.json)

Create a Method Configuration in a workspace

Create method configurations. #### Expanded discussion on the methodRepoMethod field To create a method config for an Agora method, `\"sourceRepo\": \"agora\"` is optional; the following is sufficient: ``` \"methodRepoMethod\": {   \"methodNamespace\": \"namespace\",   \"methodName\": \"name\",   \"methodVersion\": 1 } ``` To create a method config for a Dockstore method, `\"sourceRepo\": \"dockstore\"` is required: ``` \"methodRepoMethod\": {   \"sourceRepo\": \"dockstore\",   \"methodPath\": \"path\",   \"methodVersion\": \"version\" } ``` You may also use the URI on its own to create a config referencing any supported repo (currently Agora and Dockstore): ``` \"methodRepoMethod\": {   \"methodUri\": \"agora://namespace/name/1\" } ``` ``` \"methodRepoMethod\": {   \"methodUri\": \"dockstore://path/version\" } ``` The system is specified to check for a URI first before falling back to the legacy fields. Unsupported repos will return a 400 Bad Request. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.method.config.json <- NewMethodConfigIngest$new("namespace_example", "name_example", "rootEntityType_example", TODO, TODO, TODO, TODO, 123, "deleted_example") # NewMethodConfigIngest | Method Configuration contents

#Create a Method Configuration in a workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$PostWorkspaceMethodConfig(var.workspace.namespace, var.workspace.name, var.method.config.json)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **method.config.json** | [**NewMethodConfigIngest**](NewMethodConfigIngest.md)| Method Configuration contents | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful Request |  -  |
| **404** | Workspace not found |  -  |
| **409** | Method Configuration already exists |  -  |
| **500** | Internal Server Error |  -  |

# **PutWorkspaceTags**
> array[character] PutWorkspaceTags(workspace.namespace, workspace.name, tags)

Replace all tags for this workspace with the user input. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.tags <- list("property_example") # array[character] | List of tags.

#Replace all tags for this workspace with the user input. 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$PutWorkspaceTags(var.workspace.namespace, var.workspace.name, var.tags)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **tags** | list( **character** )| List of tags. | 

### Return type

**array[character]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace tags |  -  |
| **400** | Invalid input |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **ReadBucket**
> ReadBucket(workspace.namespace, workspace.name)

Read workspace bucket

Read a workspace bucket

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Read workspace bucket
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ReadBucket(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **403** | Insufficient permissions to access workspace bucket |  -  |
| **404** | Workspace Not Found |  -  |
| **500** | Internal Server Error |  -  |

# **SetAttributes**
> SetAttributes(workspace.namespace, workspace.name, new.attributes)

Set attributes on a workspace. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.new.attributes <- TODO # map(object) | New attribute values, as Map[String, Attribute]. WARNING! This should not be used to change library metadata (republish will not happen). Use UpdateAttributes in the library section

#Set attributes on a workspace. 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$SetAttributes(var.workspace.namespace, var.workspace.name, var.new.attributes)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **new.attributes** | named list( [**map(object)**](object.md) )| New attribute values, as Map[String, Attribute]. WARNING! This should not be used to change library metadata (republish will not happen). Use UpdateAttributes in the library section | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Malformed request |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **UnlockWorkspace**
> UnlockWorkspace(workspace.namespace, workspace.name)

Unlock Workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Unlock Workspace
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$UnlockWorkspace(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | No response was specified |  -  |
| **204** | Successful Request |  -  |
| **403** | Not Owner |  -  |
| **404** | Workspace Not Found |  -  |
| **500** | Internal Server Error |  -  |

# **UpdateAttributes**
> WorkspaceDetails UpdateAttributes(workspace.namespace, workspace.name, workspace.update.json)

Modify attributes on a workspace. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.workspace.update.json <- list(AttributeUpdateOperation$new("AddUpdateAttribute")) # array[AttributeUpdateOperation] | Attribute operations. WARNING! This should not be used to change library metadata (republish will not happen). Use UpdateAttributes in the library section.

#Modify attributes on a workspace. 
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$UpdateAttributes(var.workspace.namespace, var.workspace.name, var.workspace.update.json)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **workspace.update.json** | list( [**AttributeUpdateOperation**](AttributeUpdateOperation.md) )| Attribute operations. WARNING! This should not be used to change library metadata (republish will not happen). Use UpdateAttributes in the library section. | 

### Return type

[**WorkspaceDetails**](WorkspaceDetails.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Invalid operation |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **UpdateCatalog**
> WorkspaceCatalogUpdateResponseList UpdateCatalog(workspace.namespace, workspace.name, catalog.updates)

Update catalog permission

Set catalog permisisons for a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.catalog.updates <- list(WorkspaceCatalog$new("email_example", "catalog_example")) # array[WorkspaceCatalog] | Series of Catalog updates for workspace

#Update catalog permission
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$UpdateCatalog(var.workspace.namespace, var.workspace.name, var.catalog.updates)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **catalog.updates** | list( [**WorkspaceCatalog**](WorkspaceCatalog.md) )| Series of Catalog updates for workspace | 

### Return type

[**WorkspaceCatalogUpdateResponseList**](WorkspaceCatalogUpdateResponseList.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **403** | Insufficient permissions to change catalog permissions (must be owner or admin) |  -  |
| **404** | Workspace, user or group not found |  -  |
| **500** | Rawls Internal Error |  -  |

# **UpdateWorkspaceACL**
> WorkspaceACLUpdateResponseList UpdateWorkspaceACL(workspace.namespace, workspace.name, invite.users.not.found, acl.updates)

Update workspace ACL

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.invite.users.not.found <- FALSE # character | true to invite unregistered users, false to ignore
var.acl.updates <- list(WorkspaceACLUpdate$new("email_example", "accessLevel_example", "canShare_example", "canCompute_example")) # array[WorkspaceACLUpdate] | Series of ACL updates for workspace

#Update workspace ACL
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$UpdateWorkspaceACL(var.workspace.namespace, var.workspace.name, var.invite.users.not.found, var.acl.updates)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **invite.users.not.found** | **character**| true to invite unregistered users, false to ignore | [default to FALSE]
 **acl.updates** | list( [**WorkspaceACLUpdate**](WorkspaceACLUpdate.md) )| Series of ACL updates for workspace | 

### Return type

[**WorkspaceACLUpdateResponseList**](WorkspaceACLUpdateResponseList.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Can&#39;t set ACL for workspace |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Server Error |  -  |

# **WorkspacePermissionReport**
> PermissionReport WorkspacePermissionReport(workspace.namespace, workspace.name, report.input)

Retrieve user permissions for the workspace and the workspace's method references

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.report.input <- PermissionReportRequest$new(list("users_example"), list(MethodConfigurationName$new("namespace_example", "name_example"))) # PermissionReportRequest | Users and/or configs on which to report, both optional

#Retrieve user permissions for the workspace and the workspace's method references
api.instance <- WorkspacesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$WorkspacePermissionReport(var.workspace.namespace, var.workspace.name, var.report.input)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **report.input** | [**PermissionReportRequest**](PermissionReportRequest.md)| Users and/or configs on which to report, both optional | 

### Return type

[**PermissionReport**](PermissionReport.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Permission Report |  -  |
| **404** | Workspace does not exist |  -  |
| **500** | Internal Server Error |  -  |

