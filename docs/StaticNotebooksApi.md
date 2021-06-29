# StaticNotebooksApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertNotebook**](StaticNotebooksApi.md#ConvertNotebook) | **POST** /api/staticNotebooks/convert | Convert a Notebook ipynb file to a static HTML representation 


# **ConvertNotebook**
> ConvertNotebook(notebook)

Convert a Notebook ipynb file to a static HTML representation 

Convert a Notebook ipynb file to a static HTML representation 

### Example
```R
library(openapi)

var.notebook <- 'notebook_example' # character | Notebook ipynb file

#Convert a Notebook ipynb file to a static HTML representation 
api.instance <- StaticNotebooksApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ConvertNotebook(var.notebook)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notebook** | **character**| Notebook ipynb file | 

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
| **200** | Success |  -  |
| **500** | Internal Error |  -  |

