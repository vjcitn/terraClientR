# OAuthApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetRefreshTokenStatus**](OAuthApi.md#GetRefreshTokenStatus) | **GET** /api/refresh-token-status | deprecated
[**HandleOauthCode**](OAuthApi.md#HandleOauthCode) | **POST** /handle-oauth-code | deprecated


# **GetRefreshTokenStatus**
> object GetRefreshTokenStatus()

deprecated

This API is a deprecated noop. Previously, it returned the status of the current user's refresh token. Since refresh tokens are no longer used in the back end, this API is now hardcoded to respond as if the user's refresh token is valid. This API may be removed in a future release. 

### Example
```R
library(openapi)


#deprecated
api.instance <- OAuthApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetRefreshTokenStatus()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **HandleOauthCode**
> HandleOauthCode(body=var.body)

deprecated

This API is a deprecated noop. Previously, it allowed the server to acquire a refresh token. Since refresh tokens are no longer used in the back end, this API is now hardcoded to respond as if it successfully acquired a refresh token, without doing any actual work. This API may be removed in a future release. 

### Example
```R
library(openapi)

var.body <- inline_object_5$new("code_example", "redirectUri_example") # InlineObject5 | 

#deprecated
api.instance <- OAuthApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$HandleOauthCode(body=var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject5**](InlineObject5.md)|  | [optional] 

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
| **204** | All set |  -  |

