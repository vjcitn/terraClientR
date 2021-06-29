# GA4GHToolRegistryApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Ga4ghV1MetadataGet**](GA4GHToolRegistryApi.md#Ga4ghV1MetadataGet) | **GET** /ga4gh/v1/metadata | Return some metadata that is useful for describing this registry
[**Ga4ghV1ToolClassesGet**](GA4GHToolRegistryApi.md#Ga4ghV1ToolClassesGet) | **GET** /ga4gh/v1/tool-classes | List all tool types
[**Ga4ghV1ToolsGet**](GA4GHToolRegistryApi.md#Ga4ghV1ToolsGet) | **GET** /ga4gh/v1/tools | List all tools
[**Ga4ghV1ToolsIdGet**](GA4GHToolRegistryApi.md#Ga4ghV1ToolsIdGet) | **GET** /ga4gh/v1/tools/{id} | List one specific tool, acts as an anchor for self references
[**Ga4ghV1ToolsIdVersionsGet**](GA4GHToolRegistryApi.md#Ga4ghV1ToolsIdVersionsGet) | **GET** /ga4gh/v1/tools/{id}/versions | List versions of a tool
[**Ga4ghV1ToolsIdVersionsVersionIdGet**](GA4GHToolRegistryApi.md#Ga4ghV1ToolsIdVersionsVersionIdGet) | **GET** /ga4gh/v1/tools/{id}/versions/{version-id} | List one specific tool version, acts as an anchor for self references
[**Ga4ghV1ToolsIdVersionsVersionIdTypeDescriptorGet**](GA4GHToolRegistryApi.md#Ga4ghV1ToolsIdVersionsVersionIdTypeDescriptorGet) | **GET** /ga4gh/v1/tools/{id}/versions/{version-id}/{type}/descriptor | Get the tool descriptor (WDL) for the specified tool.


# **Ga4ghV1MetadataGet**
> Metadata Ga4ghV1MetadataGet()

Return some metadata that is useful for describing this registry

Return some metadata that is useful for describing this registry

### Example
```R
library(openapi)


#Return some metadata that is useful for describing this registry
api.instance <- GA4GHToolRegistryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Ga4ghV1MetadataGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Metadata**](Metadata.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A Metadata object describing this service. |  -  |

# **Ga4ghV1ToolClassesGet**
> array[ToolClass] Ga4ghV1ToolClassesGet()

List all tool types

This endpoint returns all tool-classes available 

### Example
```R
library(openapi)


#List all tool types
api.instance <- GA4GHToolRegistryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Ga4ghV1ToolClassesGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ToolClass]**](ToolClass.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of methods that match the filter. |  -  |

# **Ga4ghV1ToolsGet**
> array[Tool] Ga4ghV1ToolsGet()

List all tools

This endpoint returns all tools available. 

### Example
```R
library(openapi)


#List all tools
api.instance <- GA4GHToolRegistryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Ga4ghV1ToolsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Tool]**](Tool.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of Tools that match the filter. |  -  |

# **Ga4ghV1ToolsIdGet**
> Tool Ga4ghV1ToolsIdGet(id)

List one specific tool, acts as an anchor for self references

This endpoint returns one specific tool (which has ToolVersions nested inside it)

### Example
```R
library(openapi)

var.id <- 'id_example' # character | A unique identifier of the tool, scoped to this registry, for example `123456`

#List one specific tool, acts as an anchor for self references
api.instance <- GA4GHToolRegistryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Ga4ghV1ToolsIdGet(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| A unique identifier of the tool, scoped to this registry, for example &#x60;123456&#x60; | 

### Return type

[**Tool**](Tool.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A tool. |  -  |

# **Ga4ghV1ToolsIdVersionsGet**
> array[ToolVersion] Ga4ghV1ToolsIdVersionsGet(id)

List versions of a tool

Returns all versions of the specified tool

### Example
```R
library(openapi)

var.id <- 'id_example' # character | A unique identifier of the tool, scoped to this registry, for example `123456`

#List versions of a tool
api.instance <- GA4GHToolRegistryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Ga4ghV1ToolsIdVersionsGet(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| A unique identifier of the tool, scoped to this registry, for example &#x60;123456&#x60; | 

### Return type

[**array[ToolVersion]**](ToolVersion.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An array of tool versions |  -  |

# **Ga4ghV1ToolsIdVersionsVersionIdGet**
> ToolVersion Ga4ghV1ToolsIdVersionsVersionIdGet(id, version.id)

List one specific tool version, acts as an anchor for self references

This endpoint returns one specific tool version

### Example
```R
library(openapi)

var.id <- 'id_example' # character | A unique identifier of the tool, scoped to this registry, for example `123456`
var.version.id <- 'version.id_example' # character | An identifier of the tool version, scoped to this registry, for example `v1`

#List one specific tool version, acts as an anchor for self references
api.instance <- GA4GHToolRegistryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Ga4ghV1ToolsIdVersionsVersionIdGet(var.id, var.version.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| A unique identifier of the tool, scoped to this registry, for example &#x60;123456&#x60; | 
 **version.id** | **character**| An identifier of the tool version, scoped to this registry, for example &#x60;v1&#x60; | 

### Return type

[**ToolVersion**](ToolVersion.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A tool version. |  -  |

# **Ga4ghV1ToolsIdVersionsVersionIdTypeDescriptorGet**
> ToolDescriptor Ga4ghV1ToolsIdVersionsVersionIdTypeDescriptorGet(type, id, version.id)

Get the tool descriptor (WDL) for the specified tool.

Returns the WDL descriptor for the specified tool.

### Example
```R
library(openapi)

var.type <- 'type_example' # character | The output type of the descriptor. If not specified it is up to the underlying implementation to determine which output type to return. Plain types return the bare descriptor while the \"non-plain\" types return a descriptor wrapped with metadata. 
var.id <- 'id_example' # character | A unique identifier of the tool, scoped to this registry, for example `123456`.    *In FireCloud, this must be a namespace + \":\" + name. For instance, if your namespace   is 'foo' and name is 'bar', this must be 'foo:bar'.* 
var.version.id <- 'version.id_example' # character | An identifier of the tool version for this particular tool registry, for example `v1`.    *In FireCloud, this must be an integer representing the FireCloud snapshot id.* 

#Get the tool descriptor (WDL) for the specified tool.
api.instance <- GA4GHToolRegistryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Ga4ghV1ToolsIdVersionsVersionIdTypeDescriptorGet(var.type, var.id, var.version.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | Enum [WDL, plain-WDL] | The output type of the descriptor. If not specified it is up to the underlying implementation to determine which output type to return. Plain types return the bare descriptor while the \&quot;non-plain\&quot; types return a descriptor wrapped with metadata.  | 
 **id** | **character**| A unique identifier of the tool, scoped to this registry, for example &#x60;123456&#x60;.    *In FireCloud, this must be a namespace + \&quot;:\&quot; + name. For instance, if your namespace   is &#39;foo&#39; and name is &#39;bar&#39;, this must be &#39;foo:bar&#39;.*  | 
 **version.id** | **character**| An identifier of the tool version for this particular tool registry, for example &#x60;v1&#x60;.    *In FireCloud, this must be an integer representing the FireCloud snapshot id.*  | 

### Return type

[**ToolDescriptor**](ToolDescriptor.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The tool descriptor. |  -  |
| **404** | The tool can not be output in the specified type. |  -  |

