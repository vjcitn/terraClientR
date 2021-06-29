# NIHApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**NIHCallback**](NIHApi.md#NIHCallback) | **POST** /api/nih/callback | Updates a user&#39;s NIH link from a JWT
[**NIHStatus**](NIHApi.md#NIHStatus) | **GET** /api/nih/status | Retrieves info about a user&#39;s NIH link


# **NIHCallback**
> NihStatus NIHCallback(jwt)

Updates a user's NIH link from a JWT

### Example
```R
library(openapi)

var.jwt <- JWTWrapper$new("jwt_example") # JWTWrapper | JWT from NIH login

#Updates a user's NIH link from a JWT
api.instance <- NIHApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$NIHCallback(var.jwt)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwt** | [**JWTWrapper**](JWTWrapper.md)| JWT from NIH login | 

### Return type

[**NihStatus**](NihStatus.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully updated NIH link |  -  |
| **400** | Invalid or malformed JWT |  -  |
| **401** | Unauthorized |  -  |
| **500** | Internal server error saving NIH link to profile |  -  |

# **NIHStatus**
> NihStatus NIHStatus()

Retrieves info about a user's NIH link

### Example
```R
library(openapi)


#Retrieves info about a user's NIH link
api.instance <- NIHApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$NIHStatus()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NihStatus**](NihStatus.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved NIH status |  -  |
| **404** | linkedNihUsername key missing from status |  -  |
| **500** | Internal server error retrieving NIH status |  -  |

