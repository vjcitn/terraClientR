# CromIAMEngineForJobManagerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EngineVersionStatusGet**](CromIAMEngineForJobManagerApi.md#EngineVersionStatusGet) | **GET** /engine/{version}/status | Returns the current health status of any monitored subsystems
[**EngineVersionVersionGet**](CromIAMEngineForJobManagerApi.md#EngineVersionVersionGet) | **GET** /engine/{version}/version | Returns the version of the Cromwell Engine


# **EngineVersionStatusGet**
> StatusResponse EngineVersionStatusGet(version)

Returns the current health status of any monitored subsystems

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version

#Returns the current health status of any monitored subsystems
api.instance <- CromIAMEngineForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$EngineVersionStatusGet(var.version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]

### Return type

[**StatusResponse**](StatusResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All subsystems report an \&quot;ok\&quot; status |  -  |
| **500** | At least one subsystem does not have an \&quot;ok\&quot; status |  -  |

# **EngineVersionVersionGet**
> VersionResponse EngineVersionVersionGet(version)

Returns the version of the Cromwell Engine

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version

#Returns the version of the Cromwell Engine
api.instance <- CromIAMEngineForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$EngineVersionVersionGet(var.version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |

