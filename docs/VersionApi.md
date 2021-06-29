# VersionApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecutionEngineVersion**](VersionApi.md#ExecutionEngineVersion) | **GET** /version/executionEngine | Returns the currently deployed version of FireCloud&#39;s execution engine
[**OrchestrationVersion**](VersionApi.md#OrchestrationVersion) | **GET** /version | Returns the currently deployed version of this service.


# **ExecutionEngineVersion**
> ExecutionEngineVersion ExecutionEngineVersion()

Returns the currently deployed version of FireCloud's execution engine

### Example
```R
library(openapi)


#Returns the currently deployed version of FireCloud's execution engine
api.instance <- VersionApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ExecutionEngineVersion()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ExecutionEngineVersion**](ExecutionEngineVersion.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **OrchestrationVersion**
> OrchestrationVersion OrchestrationVersion()

Returns the currently deployed version of this service.

### Example
```R
library(openapi)


#Returns the currently deployed version of this service.
api.instance <- VersionApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$OrchestrationVersion()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrchestrationVersion**](OrchestrationVersion.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

