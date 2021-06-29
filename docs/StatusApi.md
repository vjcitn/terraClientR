# StatusApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Error**](StatusApi.md#Error) | **GET** /error | An error status endpoint for load balancing purposes 
[**Health**](StatusApi.md#Health) | **GET** /health | A health status endpoint for load balancing purposes 
[**Status**](StatusApi.md#Status) | **GET** /status | An orchestrated status check that includes a health report of underlying systems 


# **Error**
> Error()

An error status endpoint for load balancing purposes 

### Example
```R
library(openapi)


#An error status endpoint for load balancing purposes 
api.instance <- StatusApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$Error()
```

### Parameters
This endpoint does not need any parameter.

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
| **503** | Service Unavailable |  -  |

# **Health**
> Health()

A health status endpoint for load balancing purposes 

### Example
```R
library(openapi)


#A health status endpoint for load balancing purposes 
api.instance <- StatusApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$Health()
```

### Parameters
This endpoint does not need any parameter.

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

# **Status**
> SystemStatus Status()

An orchestrated status check that includes a health report of underlying systems 

### Example
```R
library(openapi)


#An orchestrated status check that includes a health report of underlying systems 
api.instance <- StatusApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Status()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemStatus**](SystemStatus.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | This service is healthy; check payload for subsystem health. |  -  |
| **500** | This service is not healthy; therefore, payload may be missing or incomplete. |  -  |

