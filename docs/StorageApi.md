# StorageApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMetadata**](StorageApi.md#GetMetadata) | **GET** /api/storage/{bucket}/{object} | Get metadata about an object stored in GCS. 
[**GetStorageDownload**](StorageApi.md#GetStorageDownload) | **GET** /cookie-authed/download/b/{bucket}/o/{object} | Download GCS object using a cookie token 


# **GetMetadata**
> GetMetadata(bucket, object)

Get metadata about an object stored in GCS. 

Returns a subset of the metadata available from Google's Cloud Storage JSON API, as well as the estimated egress charge to North America. If you need the full metadata, we recommend you use Google's API directly; see https://cloud.google.com/storage/docs/json_api/v1/objects/get. 

### Example
```R
library(openapi)

var.bucket <- 'bucket_example' # character | Name of the bucket in which the object resides.
var.object <- 'object_example' # character | Name of the object. (be sure to urlencode)

#Get metadata about an object stored in GCS. 
api.instance <- StorageApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetMetadata(var.bucket, var.object)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **character**| Name of the bucket in which the object resides. | 
 **object** | **character**| Name of the object. (be sure to urlencode) | 

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
| **404** | Not Found |  -  |
| **500** | Internal Error |  -  |

# **GetStorageDownload**
> data.frame GetStorageDownload(bucket, object)

Download GCS object using a cookie token 

Download GCS object using a cookie token 

### Example
```R
library(openapi)

var.bucket <- 'bucket_example' # character | Name of the bucket in which the object resides.
var.object <- 'object_example' # character | Name of the object. (be sure to urlencode)

#Download GCS object using a cookie token 
api.instance <- StorageApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetStorageDownload(var.bucket, var.object)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket** | **character**| Name of the bucket in which the object resides. | 
 **object** | **character**| Name of the object. (be sure to urlencode) | 

### Return type

**data.frame**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | Not Found |  -  |
| **500** | Internal Error |  -  |

