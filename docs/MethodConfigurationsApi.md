# MethodConfigurationsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CopyFromMethodRepo**](MethodConfigurationsApi.md#CopyFromMethodRepo) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/copyFromMethodRepo | Copy a Method Repository Configuration into a workspace
[**CopyToMethodRepo**](MethodConfigurationsApi.md#CopyToMethodRepo) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/copyToMethodRepo | Copy a Method Config in a workspace to the Method Repository
[**DeleteWorkspaceMethodConfig**](MethodConfigurationsApi.md#DeleteWorkspaceMethodConfig) | **DELETE** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/{configNamespace}/{configName} | Delete a method configuration in a workspace
[**GetWorkspaceMethodConfig**](MethodConfigurationsApi.md#GetWorkspaceMethodConfig) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/{configNamespace}/{configName} | Get a method configuration in a workspace
[**ImportStatus**](MethodConfigurationsApi.md#ImportStatus) | **GET** /api/profile/importstatus | Check the user&#39;s ability to import a method config into a workspace
[**ListWorkspaceMethodConfigs**](MethodConfigurationsApi.md#ListWorkspaceMethodConfigs) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/methodconfigs | List method configurations in a workspace
[**OverwriteWorkspaceMethodConfig**](MethodConfigurationsApi.md#OverwriteWorkspaceMethodConfig) | **PUT** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/{configNamespace}/{configName} | Add or overwrite a method configuration in a workspace
[**PostWorkspaceMethodConfig**](MethodConfigurationsApi.md#PostWorkspaceMethodConfig) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/methodconfigs | Create a Method Configuration in a workspace
[**RenameWorkspaceMethodConfig**](MethodConfigurationsApi.md#RenameWorkspaceMethodConfig) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/{configNamespace}/{configName}/rename | Rename a method configuration in a workspace
[**UpdateWorkspaceMethodConfig**](MethodConfigurationsApi.md#UpdateWorkspaceMethodConfig) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/{configNamespace}/{configName} | Update a method configuration in a workspace
[**ValidateMethodConfiguration**](MethodConfigurationsApi.md#ValidateMethodConfiguration) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/{configNamespace}/{configName}/validate | get syntax validation information for a method configuration
[**WorkspacePermissionReport**](MethodConfigurationsApi.md#WorkspacePermissionReport) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/permissionReport | Retrieve user permissions for the workspace and the workspace&#39;s method references


# **CopyFromMethodRepo**
> CopyFromMethodRepo(workspace.namespace, workspace.name, config.to.copy)

Copy a Method Repository Configuration into a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.to.copy <- CopyConfigurationIngest$new("configurationNamespace_example", "configurationName_example", 123, "destinationNamespace_example", "destinationName_example") # CopyConfigurationIngest | Method Configuration to Copy

#Copy a Method Repository Configuration into a workspace
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$CopyFromMethodRepo(var.workspace.namespace, var.workspace.name, var.config.to.copy)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.to.copy** | [**CopyConfigurationIngest**](CopyConfigurationIngest.md)| Method Configuration to Copy | 

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
| **201** | Successful request |  -  |
| **404** | Source method configuration does not exist |  -  |
| **409** | Destination method configuration by that name already exists |  -  |
| **422** | Error parsing source method configuration |  -  |
| **500** | Internal Server Error |  -  |

# **CopyToMethodRepo**
> CopyToMethodRepo(workspace.namespace, workspace.name, config.to.copy)

Copy a Method Config in a workspace to the Method Repository

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.to.copy <- PublishConfigurationIngest$new("configurationNamespace_example", "configurationName_example", "sourceNamespace_example", "sourceName_example") # PublishConfigurationIngest | Method Configuration to Copy

#Copy a Method Config in a workspace to the Method Repository
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$CopyToMethodRepo(var.workspace.namespace, var.workspace.name, var.config.to.copy)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.to.copy** | [**PublishConfigurationIngest**](PublishConfigurationIngest.md)| Method Configuration to Copy | 

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
| **201** | Successful request |  -  |
| **404** | Source method configuration does not exist |  -  |
| **409** | Destination method configuration by that name already exists |  -  |
| **422** | Error parsing source method configuration |  -  |
| **500** | Internal Server Error |  -  |

# **DeleteWorkspaceMethodConfig**
> DeleteWorkspaceMethodConfig(workspace.namespace, workspace.name, config.namespace, config.name)

Delete a method configuration in a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.namespace <- 'config.namespace_example' # character | Configuration Namespace
var.config.name <- 'config.name_example' # character | Configuration Name

#Delete a method configuration in a workspace
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DeleteWorkspaceMethodConfig(var.workspace.namespace, var.workspace.name, var.config.namespace, var.config.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.namespace** | **character**| Configuration Namespace | 
 **config.name** | **character**| Configuration Name | 

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
| **200** | Successful request |  -  |
| **404** | Workspace or Method Configuration not found |  -  |
| **500** | Internal Server Error |  -  |

# **GetWorkspaceMethodConfig**
> GetWorkspaceMethodConfig(workspace.namespace, workspace.name, config.namespace, config.name)

Get a method configuration in a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.namespace <- 'config.namespace_example' # character | Configuration Namespace
var.config.name <- 'config.name_example' # character | Configuration Name

#Get a method configuration in a workspace
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetWorkspaceMethodConfig(var.workspace.namespace, var.workspace.name, var.config.namespace, var.config.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.namespace** | **character**| Configuration Namespace | 
 **config.name** | **character**| Configuration Name | 

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
| **200** | Successful |  -  |
| **404** | Workspace or Method Configuration not found |  -  |
| **500** | Internal Server Error |  -  |

# **ImportStatus**
> UserImportPermission ImportStatus()

Check the user's ability to import a method config into a workspace

### Example
```R
library(openapi)


#Check the user's ability to import a method config into a workspace
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ImportStatus()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserImportPermission**](UserImportPermission.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Internal Server Error |  -  |

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
api.instance <- MethodConfigurationsApi$new()
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

# **OverwriteWorkspaceMethodConfig**
> OverwriteWorkspaceMethodConfig(workspace.namespace, workspace.name, config.namespace, config.name, body)

Add or overwrite a method configuration in a workspace

Add or overwrite a method configuration in a workspace. The method configuration name and namespace in the URI must match the values in the JSON. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.namespace <- 'config.namespace_example' # character | Configuration Namespace
var.config.name <- 'config.name_example' # character | Configuration Name
var.body <- ConfigurationIngest$new("namespace_example", "name_example", "rootEntityType_example", TODO, TODO, TODO, TODO, TODO) # ConfigurationIngest | Method Config to Update

#Add or overwrite a method configuration in a workspace
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$OverwriteWorkspaceMethodConfig(var.workspace.namespace, var.workspace.name, var.config.namespace, var.config.name, var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.namespace** | **character**| Configuration Namespace | 
 **config.name** | **character**| Configuration Name | 
 **body** | [**ConfigurationIngest**](ConfigurationIngest.md)| Method Config to Update | 

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
| **200** | Successful |  -  |
| **400** | Method configuration name and namespace in URI do not match those in JSON body |  -  |
| **404** | Workspace or Method Configuration not found |  -  |
| **500** | Internal Server Error |  -  |

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
api.instance <- MethodConfigurationsApi$new()
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

# **RenameWorkspaceMethodConfig**
> RenameWorkspaceMethodConfig(workspace.namespace, workspace.name, config.namespace, config.name, rename)

Rename a method configuration in a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.namespace <- 'config.namespace_example' # character | Configuration Namespace
var.config.name <- 'config.name_example' # character | Configuration Name
var.rename <- MethodConfigRename$new("namespace_example", "name_example", TODO) # MethodConfigRename | Method Config Rename

#Rename a method configuration in a workspace
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$RenameWorkspaceMethodConfig(var.workspace.namespace, var.workspace.name, var.config.namespace, var.config.name, var.rename)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.namespace** | **character**| Configuration Namespace | 
 **config.name** | **character**| Configuration Name | 
 **rename** | [**MethodConfigRename**](MethodConfigRename.md)| Method Config Rename | 

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
| **204** | Successful request |  -  |
| **400** | Workspace details in payload don&#39;t match the URI |  -  |
| **404** | Workspace or Method Configuration not found |  -  |
| **409** | Method Configuration with that name already exists |  -  |
| **500** | Internal Server Error |  -  |

# **UpdateWorkspaceMethodConfig**
> UpdateWorkspaceMethodConfig(workspace.namespace, workspace.name, config.namespace, config.name, body)

Update a method configuration in a workspace

Update method configuration. Updates and moves the method configuration at the URI to the location in the request body. The location in the URI may be the same as the location in the request body. If the location in the request body matches the location in the URI, it is overwritten. If the location in the request body is different to the location in the URI, and there is a method config already at that location, 409 is returned. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.namespace <- 'config.namespace_example' # character | Configuration Namespace
var.config.name <- 'config.name_example' # character | Configuration Name
var.body <- ConfigurationIngest$new("namespace_example", "name_example", "rootEntityType_example", TODO, TODO, TODO, TODO, TODO) # ConfigurationIngest | Method Config to Update

#Update a method configuration in a workspace
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$UpdateWorkspaceMethodConfig(var.workspace.namespace, var.workspace.name, var.config.namespace, var.config.name, var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.namespace** | **character**| Configuration Namespace | 
 **config.name** | **character**| Configuration Name | 
 **body** | [**ConfigurationIngest**](ConfigurationIngest.md)| Method Config to Update | 

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
| **200** | Successful |  -  |
| **403** | Invalid attribute namespace(s) in outputs |  -  |
| **404** | Workspace or Method Configuration not found |  -  |
| **409** | Method configuration with the new name already exists in the workspace |  -  |
| **500** | Internal Server Error |  -  |

# **ValidateMethodConfiguration**
> ValidatedMethodConfiguration ValidateMethodConfiguration(workspace.namespace, workspace.name, config.namespace, config.name)

get syntax validation information for a method configuration

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.config.namespace <- 'config.namespace_example' # character | Method Configuration Namespace
var.config.name <- 'config.name_example' # character | Method Configuration Name

#get syntax validation information for a method configuration
api.instance <- MethodConfigurationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ValidateMethodConfiguration(var.workspace.namespace, var.workspace.name, var.config.namespace, var.config.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **config.namespace** | **character**| Method Configuration Namespace | 
 **config.name** | **character**| Method Configuration Name | 

### Return type

[**ValidatedMethodConfiguration**](ValidatedMethodConfiguration.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | Workspace or Method Configuration does not exist |  -  |
| **500** | Rawls Internal Error |  -  |

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
api.instance <- MethodConfigurationsApi$new()
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

