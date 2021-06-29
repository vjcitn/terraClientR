# MethodRepositoryApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiConfigurationsNamespaceNameSnapshotIdDelete**](MethodRepositoryApi.md#ApiConfigurationsNamespaceNameSnapshotIdDelete) | **DELETE** /api/configurations/{namespace}/{name}/{snapshotId} | Redact a single configuration.
[**ApiConfigurationsPost**](MethodRepositoryApi.md#ApiConfigurationsPost) | **POST** /api/configurations | Add a configuration.
[**ApiMethodsDefinitionsGet**](MethodRepositoryApi.md#ApiMethodsDefinitionsGet) | **GET** /api/methods/definitions | List method definitions
[**ApiMethodsNamespaceNameConfigurationsGet**](MethodRepositoryApi.md#ApiMethodsNamespaceNameConfigurationsGet) | **GET** /api/methods/{namespace}/{name}/configurations | List configurations associated with a method
[**ApiMethodsNamespaceNameSnapshotIdConfigurationsGet**](MethodRepositoryApi.md#ApiMethodsNamespaceNameSnapshotIdConfigurationsGet) | **GET** /api/methods/{namespace}/{name}/{snapshotId}/configurations | List compatible configurations for this method snapshot
[**ApiMethodsNamespaceNameSnapshotIdDelete**](MethodRepositoryApi.md#ApiMethodsNamespaceNameSnapshotIdDelete) | **DELETE** /api/methods/{namespace}/{name}/{snapshotId} | Redact a single method.
[**ApiMethodsNamespaceNameSnapshotIdGet**](MethodRepositoryApi.md#ApiMethodsNamespaceNameSnapshotIdGet) | **GET** /api/methods/{namespace}/{name}/{snapshotId} | Find a single method.
[**ApiMethodsNamespaceNameSnapshotIdPost**](MethodRepositoryApi.md#ApiMethodsNamespaceNameSnapshotIdPost) | **POST** /api/methods/{namespace}/{name}/{snapshotId} | Create a new snapshot of an existing Method.
[**ApiMethodsPost**](MethodRepositoryApi.md#ApiMethodsPost) | **POST** /api/methods | Add a Method.
[**CopyFromMethodRepo**](MethodRepositoryApi.md#CopyFromMethodRepo) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/copyFromMethodRepo | Copy a Method Repository Configuration into a workspace
[**CopyToMethodRepo**](MethodRepositoryApi.md#CopyToMethodRepo) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/method_configs/copyToMethodRepo | Copy a Method Config in a workspace to the Method Repository
[**CreateMethodTemplate**](MethodRepositoryApi.md#CreateMethodTemplate) | **POST** /api/template | Create a Method Configuration template from a Method
[**GetConfigACL**](MethodRepositoryApi.md#GetConfigACL) | **GET** /api/configurations/{namespace}/{name}/{snapshotId}/permissions | get ACL permissions on a Method Repository configuration
[**GetConfigNamespaceACL**](MethodRepositoryApi.md#GetConfigNamespaceACL) | **GET** /api/configurations/{namespace}/permissions | get ACL permissions on a Method Repository Configuration Namespace
[**GetMethodACL**](MethodRepositoryApi.md#GetMethodACL) | **GET** /api/methods/{namespace}/{name}/{snapshotId}/permissions | get ACL permissions on a Method Repository method
[**GetMethodIO**](MethodRepositoryApi.md#GetMethodIO) | **POST** /api/inputsOutputs | Get information about a method&#39;s inputs and outputs
[**GetMethodNamespaceACL**](MethodRepositoryApi.md#GetMethodNamespaceACL) | **GET** /api/methods/{namespace}/permissions | get ACL permissions on a Method Repository Method Namespace
[**GetMethodRepositoryConfiguration**](MethodRepositoryApi.md#GetMethodRepositoryConfiguration) | **GET** /api/configurations/{namespace}/{name}/{snapshotId} | Get a Method Repository configuration
[**ListMethodRepositoryConfigurations**](MethodRepositoryApi.md#ListMethodRepositoryConfigurations) | **GET** /api/configurations | List Method Repository configurations. 
[**ListMethodRepositoryMethods**](MethodRepositoryApi.md#ListMethodRepositoryMethods) | **GET** /api/methods | Lists Method Repository methods. 
[**MultiUpsertMethodsACL**](MethodRepositoryApi.md#MultiUpsertMethodsACL) | **PUT** /api/methods/permissions | set ACLs for multiple methods in one call
[**SetConfigACL**](MethodRepositoryApi.md#SetConfigACL) | **POST** /api/configurations/{namespace}/{name}/{snapshotId}/permissions | set ACL permissions on a Method Repository configuration
[**SetConfigNamespaceACL**](MethodRepositoryApi.md#SetConfigNamespaceACL) | **POST** /api/configurations/{namespace}/permissions | set ACL permissions on a Method Repository Configuration Namespace
[**SetMethodACL**](MethodRepositoryApi.md#SetMethodACL) | **POST** /api/methods/{namespace}/{name}/{snapshotId}/permissions | set ACL permissions on a Method Repository method
[**SetMethodNamespaceACL**](MethodRepositoryApi.md#SetMethodNamespaceACL) | **POST** /api/methods/{namespace}/permissions | set ACL permissions on a Method Repository Method Namespace


# **ApiConfigurationsNamespaceNameSnapshotIdDelete**
> integer ApiConfigurationsNamespaceNameSnapshotIdDelete(namespace, name, snapshot.id)

Redact a single configuration.

Redacts a configuration and all of its associated configurations 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Configuration Namespace
var.name <- 'name_example' # character | Method Configuration Name
var.snapshot.id <- 'snapshot.id_example' # character | Method Configuration snapshot ID

#Redact a single configuration.
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiConfigurationsNamespaceNameSnapshotIdDelete(var.namespace, var.name, var.snapshot.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Configuration Namespace | 
 **name** | **character**| Method Configuration Name | 
 **snapshot.id** | **character**| Method Configuration snapshot ID | 

### Return type

**integer**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An integer showing how many configurations were deleted. Should be 1.  |  -  |
| **0** | Error upon redaction |  -  |

# **ApiConfigurationsPost**
> ConfigurationResponse ApiConfigurationsPost(body=var.body)

Add a configuration.

Inserts a method configuration into the method repository and gives the owner full access permissions. Must supply a namespace, name, payload, and entityType. Cannot supply a snapshotId 

### Example
```R
library(openapi)

var.body <- ConfigurationQuery$new("namespace_example", "name_example", "synopsis_example", "snapshotComment_example", "documentation_example", "payload_example", "entityType_example") # ConfigurationQuery | Agora Entity

#Add a configuration.
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiConfigurationsPost(body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConfigurationQuery**](ConfigurationQuery.md)| Agora Entity | [optional] 

### Return type

[**ConfigurationResponse**](ConfigurationResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Method successfully added. |  -  |
| **400** | Malformed input. |  -  |
| **500** | Internal error. |  -  |

# **ApiMethodsDefinitionsGet**
> array[MethodDefinition] ApiMethodsDefinitionsGet()

List method definitions

List method definitions - i.e. unique namespace/name pairs - with counts of snapshots and associated configurations 

### Example
```R
library(openapi)


#List method definitions
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiMethodsDefinitionsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[MethodDefinition]**](MethodDefinition.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of method definitions. |  -  |
| **500** | Internal error. |  -  |

# **ApiMethodsNamespaceNameConfigurationsGet**
> array[ConfigurationResponseWithPayloadObject] ApiMethodsNamespaceNameConfigurationsGet(namespace, name)

List configurations associated with a method

Given the namespace/name of a method, returns all configurations in the repository that reference that method 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Namespace of method.
var.name <- 'name_example' # character | Name of method.

#List configurations associated with a method
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiMethodsNamespaceNameConfigurationsGet(var.namespace, var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Namespace of method. | 
 **name** | **character**| Name of method. | 

### Return type

[**array[ConfigurationResponseWithPayloadObject]**](ConfigurationResponseWithPayloadObject.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of configurations. |  -  |
| **404** | Method not found. |  -  |
| **0** | Unexpected error |  -  |

# **ApiMethodsNamespaceNameSnapshotIdConfigurationsGet**
> array[ConfigurationResponseWithPayloadObject] ApiMethodsNamespaceNameSnapshotIdConfigurationsGet(namespace, name, snapshot.id)

List compatible configurations for this method snapshot

Returns all configurations that 1. have the exact same input and output arguments as the supplied method snapshot, and 2. reference any snapshot of this method. 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace
var.name <- 'name_example' # character | Method Name
var.snapshot.id <- 'snapshot.id_example' # character | Method snapshot ID

#List compatible configurations for this method snapshot
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiMethodsNamespaceNameSnapshotIdConfigurationsGet(var.namespace, var.name, var.snapshot.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 
 **name** | **character**| Method Name | 
 **snapshot.id** | **character**| Method snapshot ID | 

### Return type

[**array[ConfigurationResponseWithPayloadObject]**](ConfigurationResponseWithPayloadObject.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of configurations. |  -  |
| **404** | Method not found. |  -  |
| **500** | Unexpected error |  -  |

# **ApiMethodsNamespaceNameSnapshotIdDelete**
> integer ApiMethodsNamespaceNameSnapshotIdDelete(namespace, name, snapshot.id)

Redact a single method.

Redacts a method and all of its associated configurations 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace
var.name <- 'name_example' # character | Method Name
var.snapshot.id <- 'snapshot.id_example' # character | Method snapshot ID

#Redact a single method.
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiMethodsNamespaceNameSnapshotIdDelete(var.namespace, var.name, var.snapshot.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 
 **name** | **character**| Method Name | 
 **snapshot.id** | **character**| Method snapshot ID | 

### Return type

**integer**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An integer showing how many methods were deleted.  |  -  |
| **0** | Error upon redaction |  -  |

# **ApiMethodsNamespaceNameSnapshotIdGet**
> MethodResponse ApiMethodsNamespaceNameSnapshotIdGet(namespace, name, snapshot.id, only.payload=FALSE)

Find a single method.

Returns one method that matches the namespace, name, and snapshotId. 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace
var.name <- 'name_example' # character | Method Name
var.snapshot.id <- 'snapshot.id_example' # character | Method snapshot ID
var.only.payload <- FALSE # character | Boolean to return only the payload of the method.

#Find a single method.
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiMethodsNamespaceNameSnapshotIdGet(var.namespace, var.name, var.snapshot.id, only.payload=var.only.payload)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 
 **name** | **character**| Method Name | 
 **snapshot.id** | **character**| Method snapshot ID | 
 **only.payload** | **character**| Boolean to return only the payload of the method. | [optional] [default to FALSE]

### Return type

[**MethodResponse**](MethodResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A single method. |  -  |
| **0** | Unexpected error |  -  |

# **ApiMethodsNamespaceNameSnapshotIdPost**
> MethodResponse ApiMethodsNamespaceNameSnapshotIdPost(namespace, name, snapshot.id, redact=FALSE, body=var.body)

Create a new snapshot of an existing Method.

Inserts a new snapshot of the method into the method repository and copies access permissions from previous snapshot, optionally redacting the source snapshot. Documentation, synopsis, and payload are the only arguments considered for the new snapshot; everything else is copied from the source. 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace
var.name <- 'name_example' # character | Method Name
var.snapshot.id <- 'snapshot.id_example' # character | Method snapshot ID
var.redact <- FALSE # character | Should the source method be redacted?
var.body <- inline_object_1$new("synopsis_example", "documentation_example", "payload_example", "snapshotComment_example") # InlineObject1 | 

#Create a new snapshot of an existing Method.
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiMethodsNamespaceNameSnapshotIdPost(var.namespace, var.name, var.snapshot.id, redact=var.redact, body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 
 **name** | **character**| Method Name | 
 **snapshot.id** | **character**| Method snapshot ID | 
 **redact** | **character**| Should the source method be redacted? | [optional] [default to FALSE]
 **body** | [**InlineObject1**](InlineObject1.md)|  | [optional] 

### Return type

[**MethodResponse**](MethodResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Method successfully copied. |  -  |
| **206** | Method successfully copied, but error while redacting. |  -  |
| **400** | Malformed input. |  -  |
| **403** | Forbidden to create copy. |  -  |
| **404** | Source snapshot not found. |  -  |
| **500** | Internal error. |  -  |

# **ApiMethodsPost**
> MethodResponse ApiMethodsPost(body=var.body)

Add a Method.

Inserts a method into the method repository and gives the owner full access permissions. Must supply a namespace name, payload, and entityType. Cannot supply a snapshotId 

### Example
```R
library(openapi)

var.body <- MethodQuery$new("namespace_example", "name_example", "synopsis_example", "snapshotComment_example", "documentation_example", "payload_example", "entityType_example") # MethodQuery | Agora Entity

#Add a Method.
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiMethodsPost(body=var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MethodQuery**](MethodQuery.md)| Agora Entity | [optional] 

### Return type

[**MethodResponse**](MethodResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Method successfully added. |  -  |
| **400** | Malformed input. |  -  |
| **500** | Internal error. |  -  |

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
api.instance <- MethodRepositoryApi$new()
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
api.instance <- MethodRepositoryApi$new()
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

# **CreateMethodTemplate**
> CreateMethodTemplate(method.name)

Create a Method Configuration template from a Method

### Example
```R
library(openapi)

var.method.name <- MethodID$new("methodNamespace_example", "methodName_example", 123) # MethodID | name of Method to use for template

#Create a Method Configuration template from a Method
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$CreateMethodTemplate(var.method.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **method.name** | [**MethodID**](MethodID.md)| name of Method to use for template | 

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
| **200** | Method Configuration template |  -  |
| **400** | Method WDL can&#39;t be parsed |  -  |
| **404** | No Such Method |  -  |
| **500** | Internal Server Error |  -  |

# **GetConfigACL**
> array[object] GetConfigACL(namespace, name, snapshot.id)

get ACL permissions on a Method Repository configuration

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Configuration Namespace
var.name <- 'name_example' # character | Method Configuration Name
var.snapshot.id <- 'snapshot.id_example' # character | Method Configuration snapshot ID

#get ACL permissions on a Method Repository configuration
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetConfigACL(var.namespace, var.name, var.snapshot.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Configuration Namespace | 
 **name** | **character**| Method Configuration Name | 
 **snapshot.id** | **character**| Method Configuration snapshot ID | 

### Return type

**array[object]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the indicated configuration ACL |  -  |
| **500** | Internal Server Error |  -  |

# **GetConfigNamespaceACL**
> array[object] GetConfigNamespaceACL(namespace)

get ACL permissions on a Method Repository Configuration Namespace

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Configuration Namespace

#get ACL permissions on a Method Repository Configuration Namespace
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetConfigNamespaceACL(var.namespace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Configuration Namespace | 

### Return type

**array[object]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of the indicated configuration namespace ACL permissions |  -  |
| **403** | user does not have correct permissions to manage namespace permissions or the indicated namespace was not found |  -  |
| **500** | Internal Server Error |  -  |

# **GetMethodACL**
> array[object] GetMethodACL(namespace, name, snapshot.id)

get ACL permissions on a Method Repository method

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace
var.name <- 'name_example' # character | Method Name
var.snapshot.id <- 'snapshot.id_example' # character | Method snapshot ID

#get ACL permissions on a Method Repository method
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetMethodACL(var.namespace, var.name, var.snapshot.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 
 **name** | **character**| Method Name | 
 **snapshot.id** | **character**| Method snapshot ID | 

### Return type

**array[object]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the indicated method ACL |  -  |
| **500** | Internal Server Error |  -  |

# **GetMethodIO**
> GetMethodIO(method.name)

Get information about a method's inputs and outputs

### Example
```R
library(openapi)

var.method.name <- MethodID$new("methodNamespace_example", "methodName_example", 123) # MethodID | name of Method to look up

#Get information about a method's inputs and outputs
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetMethodIO(var.method.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **method.name** | [**MethodID**](MethodID.md)| name of Method to look up | 

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
| **200** | Method Configuration inputs and outputs |  -  |
| **400** | Method WDL can&#39;t be parsed |  -  |
| **404** | No Such Method |  -  |
| **500** | Internal Server Error |  -  |

# **GetMethodNamespaceACL**
> array[object] GetMethodNamespaceACL(namespace)

get ACL permissions on a Method Repository Method Namespace

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace

#get ACL permissions on a Method Repository Method Namespace
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetMethodNamespaceACL(var.namespace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 

### Return type

**array[object]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of indicated method namespace ACL permissions |  -  |
| **403** | user does not have correct permissions to manage namespace permissions or the indicated namespace was not found |  -  |
| **500** | Internal Server Error |  -  |

# **GetMethodRepositoryConfiguration**
> ConfigurationResponse GetMethodRepositoryConfiguration(namespace, name, snapshot.id, payload.as.object=FALSE)

Get a Method Repository configuration

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Configuration Namespace
var.name <- 'name_example' # character | Method Configuration Name
var.snapshot.id <- 'snapshot.id_example' # character | Method Configuration snapshot ID
var.payload.as.object <- FALSE # character | Instead of returning a string under key payload, return a JSON object under key payloadObject

#Get a Method Repository configuration
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetMethodRepositoryConfiguration(var.namespace, var.name, var.snapshot.id, payload.as.object=var.payload.as.object)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Configuration Namespace | 
 **name** | **character**| Method Configuration Name | 
 **snapshot.id** | **character**| Method Configuration snapshot ID | 
 **payload.as.object** | **character**| Instead of returning a string under key payload, return a JSON object under key payloadObject | [optional] [default to FALSE]

### Return type

[**ConfigurationResponse**](ConfigurationResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Method Repository configuration detail |  -  |
| **500** | Internal Server Error |  -  |

# **ListMethodRepositoryConfigurations**
> array[ConfigurationResponse] ListMethodRepositoryConfigurations(namespace=var.namespace, name=var.name, snapshot.id=var.snapshot.id, snapshot.comment=var.snapshot.comment, synopsis=var.synopsis, documentation=var.documentation, owner=var.owner, payload=var.payload, entity.type=var.entity.type)

List Method Repository configurations. 

The configurations endpoint returns all configurations the requester has permissions to read that fit the filter criteria. 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Namespace of configuration.
var.name <- 'name_example' # character | Name of configuration.
var.snapshot.id <- 56 # integer | Snapshot ID of configuration.
var.snapshot.comment <- 'snapshot.comment_example' # character | Snapshot comment of AgoraEntity
var.synopsis <- 'synopsis_example' # character | Synopsis of configuration.
var.documentation <- 'documentation_example' # character | Documentation of configuration.
var.owner <- 'owner_example' # character | Owner of configuration.
var.payload <- 'payload_example' # character | Payload of configuration in WDL.
var.entity.type <- 'entity.type_example' # character | Type of configuration - Task or Workflow

#List Method Repository configurations. 
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ListMethodRepositoryConfigurations(namespace=var.namespace, name=var.name, snapshot.id=var.snapshot.id, snapshot.comment=var.snapshot.comment, synopsis=var.synopsis, documentation=var.documentation, owner=var.owner, payload=var.payload, entity.type=var.entity.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Namespace of configuration. | [optional] 
 **name** | **character**| Name of configuration. | [optional] 
 **snapshot.id** | **integer**| Snapshot ID of configuration. | [optional] 
 **snapshot.comment** | **character**| Snapshot comment of AgoraEntity | [optional] 
 **synopsis** | **character**| Synopsis of configuration. | [optional] 
 **documentation** | **character**| Documentation of configuration. | [optional] 
 **owner** | **character**| Owner of configuration. | [optional] 
 **payload** | **character**| Payload of configuration in WDL. | [optional] 
 **entity.type** | **character**| Type of configuration - Task or Workflow | [optional] 

### Return type

[**array[ConfigurationResponse]**](ConfigurationResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of configurations. |  -  |
| **0** | Unexpected error |  -  |

# **ListMethodRepositoryMethods**
> array[MethodResponse] ListMethodRepositoryMethods(namespace=var.namespace, name=var.name, snapshot.id=var.snapshot.id, snapshot.comment=var.snapshot.comment, synopsis=var.synopsis, documentation=var.documentation, owner=var.owner, payload=var.payload, entity.type=var.entity.type)

Lists Method Repository methods. 

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Namespace of method.
var.name <- 'name_example' # character | Name of method.
var.snapshot.id <- 56 # integer | Snapshot ID of method.
var.snapshot.comment <- 'snapshot.comment_example' # character | Snapshot comment of AgoraEntity
var.synopsis <- 'synopsis_example' # character | Synopsis of method.
var.documentation <- 'documentation_example' # character | Documentation of method.
var.owner <- 'owner_example' # character | Owner of method.
var.payload <- 'payload_example' # character | Payload of method in WDL.
var.entity.type <- 'entity.type_example' # character | Type of Method - Task or Workflow

#Lists Method Repository methods. 
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ListMethodRepositoryMethods(namespace=var.namespace, name=var.name, snapshot.id=var.snapshot.id, snapshot.comment=var.snapshot.comment, synopsis=var.synopsis, documentation=var.documentation, owner=var.owner, payload=var.payload, entity.type=var.entity.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Namespace of method. | [optional] 
 **name** | **character**| Name of method. | [optional] 
 **snapshot.id** | **integer**| Snapshot ID of method. | [optional] 
 **snapshot.comment** | **character**| Snapshot comment of AgoraEntity | [optional] 
 **synopsis** | **character**| Synopsis of method. | [optional] 
 **documentation** | **character**| Documentation of method. | [optional] 
 **owner** | **character**| Owner of method. | [optional] 
 **payload** | **character**| Payload of method in WDL. | [optional] 
 **entity.type** | **character**| Type of Method - Task or Workflow | [optional] 

### Return type

[**array[MethodResponse]**](MethodResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of methods. |  -  |
| **0** | Unexpected error |  -  |

# **MultiUpsertMethodsACL**
> array[MethodAclPair] MultiUpsertMethodsACL(methodacls)

set ACLs for multiple methods in one call

### Example
```R
library(openapi)

var.methodacls <- list(MethodAclPair$new(MethodRepoMethod$new("methodNamespace_example", "methodName_example", 123, "methodPath_example", "sourceRepo_example", "methodUri_example"), list(FireCloudPermission$new("user_example", "role_example")), "message_example")) # array[MethodAclPair] | method acls to upsert

#set ACLs for multiple methods in one call
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$MultiUpsertMethodsACL(var.methodacls)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **methodacls** | list( [**MethodAclPair**](MethodAclPair.md) )| method acls to upsert | 

### Return type

[**array[MethodAclPair]**](MethodAclPair.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the indicated method namespace ACL permissions once the posted changes have been applied |  -  |
| **400** | Invalid content format |  -  |
| **500** | Internal Server Error |  -  |

# **SetConfigACL**
> array[object] SetConfigACL(namespace, name, snapshot.id, payload)

set ACL permissions on a Method Repository configuration

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Configuration Namespace
var.name <- 'name_example' # character | Method Configuration Name
var.snapshot.id <- 'snapshot.id_example' # character | Method Configuration snapshot ID
var.payload <- list(123) # array[object] | the ACLs to upsert

#set ACL permissions on a Method Repository configuration
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$SetConfigACL(var.namespace, var.name, var.snapshot.id, var.payload)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Configuration Namespace | 
 **name** | **character**| Method Configuration Name | 
 **snapshot.id** | **character**| Method Configuration snapshot ID | 
 **payload** | list( **object** )| the ACLs to upsert | 

### Return type

**array[object]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the indicated configuration ACL once the posted changes have been applied |  -  |
| **400** | Bad Request |  -  |
| **500** | Internal Server Error |  -  |

# **SetConfigNamespaceACL**
> array[Array] SetConfigNamespaceACL(namespace, payload)

set ACL permissions on a Method Repository Configuration Namespace

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Configuration Namespace
var.payload <- list(123) # array[object] | the ACLs to upsert

#set ACL permissions on a Method Repository Configuration Namespace
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$SetConfigNamespaceACL(var.namespace, var.payload)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Configuration Namespace | 
 **payload** | list( **object** )| the ACLs to upsert | 

### Return type

[**array[Array]**](array.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the indicated configuration ACL once the posted changes have been applied |  -  |
| **400** | Invalid content format |  -  |
| **403** | User does not have correct permissions to manage namespace permissions or the indicated namespace was not found |  -  |
| **500** | Internal Server Error |  -  |

# **SetMethodACL**
> array[object] SetMethodACL(namespace, name, snapshot.id, payload)

set ACL permissions on a Method Repository method

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace
var.name <- 'name_example' # character | Method Name
var.snapshot.id <- 'snapshot.id_example' # character | Method snapshot ID
var.payload <- list(123) # array[object] | the ACLs to upsert

#set ACL permissions on a Method Repository method
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$SetMethodACL(var.namespace, var.name, var.snapshot.id, var.payload)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 
 **name** | **character**| Method Name | 
 **snapshot.id** | **character**| Method snapshot ID | 
 **payload** | list( **object** )| the ACLs to upsert | 

### Return type

**array[object]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the indicated method ACL once the posted changes have been applied |  -  |
| **400** | Bad Request |  -  |
| **500** | Internal Server Error |  -  |

# **SetMethodNamespaceACL**
> array[object] SetMethodNamespaceACL(namespace, payload)

set ACL permissions on a Method Repository Method Namespace

### Example
```R
library(openapi)

var.namespace <- 'namespace_example' # character | Method Namespace
var.payload <- list(123) # array[object] | the ACLs to upsert

#set ACL permissions on a Method Repository Method Namespace
api.instance <- MethodRepositoryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$SetMethodNamespaceACL(var.namespace, var.payload)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**| Method Namespace | 
 **payload** | list( **object** )| the ACLs to upsert | 

### Return type

**array[object]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | the indicated method namespace ACL permissions once the posted changes have been applied |  -  |
| **400** | Invalid content format |  -  |
| **403** | User does not have correct permissions to manage namespace permissions or the indicated namespace was not found |  -  |
| **500** | Internal Server Error |  -  |

