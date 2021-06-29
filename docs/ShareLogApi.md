# ShareLogApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSharees**](ShareLogApi.md#GetSharees) | **GET** /api/sharelog/sharees | Get a list of users with whom current user has shared a Workspace. 


# **GetSharees**
> array[character] GetSharees()

Get a list of users with whom current user has shared a Workspace. 

Get a list of users with whom current user has shared a Workspace. 

### Example
```R
library(openapi)


#Get a list of users with whom current user has shared a Workspace. 
api.instance <- ShareLogApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetSharees()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

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
| **200** | Success |  -  |
| **500** | Internal Error |  -  |

