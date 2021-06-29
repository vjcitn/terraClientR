# NotificationsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GeneralNotifications**](NotificationsApi.md#GeneralNotifications) | **GET** /api/notifications/general | Gets the general notifications available
[**WorkspaceNotifications**](NotificationsApi.md#WorkspaceNotifications) | **GET** /api/notifications/workspace/{workspaceNamespace}/{workspaceName} | Gets the notifications available for a workspace


# **GeneralNotifications**
> array[NotificationType] GeneralNotifications()

Gets the general notifications available

### Example
```R
library(openapi)


#Gets the general notifications available
api.instance <- NotificationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GeneralNotifications()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[NotificationType]**](NotificationType.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **WorkspaceNotifications**
> array[NotificationType] WorkspaceNotifications(workspace.namespace, workspace.name)

Gets the notifications available for a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | workspace namespace
var.workspace.name <- 'workspace.name_example' # character | workspace name

#Gets the notifications available for a workspace
api.instance <- NotificationsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$WorkspaceNotifications(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| workspace namespace | 
 **workspace.name** | **character**| workspace name | 

### Return type

[**array[NotificationType]**](NotificationType.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

