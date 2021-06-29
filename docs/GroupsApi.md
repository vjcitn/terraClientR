# GroupsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddUserToGroup**](GroupsApi.md#AddUserToGroup) | **PUT** /api/groups/{groupName}/{role}/{email} | add a user to a group the caller owns
[**CreateGroup**](GroupsApi.md#CreateGroup) | **POST** /api/groups/{groupName} | create a new group
[**DeleteGroup**](GroupsApi.md#DeleteGroup) | **DELETE** /api/groups/{groupName} | delete a group that the caller owns
[**GetGroup**](GroupsApi.md#GetGroup) | **GET** /api/groups/{groupName} | view the members in a group
[**GetGroups**](GroupsApi.md#GetGroups) | **GET** /api/groups | get the list of the groups that the caller is a member of
[**RemoveUserFromGroup**](GroupsApi.md#RemoveUserFromGroup) | **DELETE** /api/groups/{groupName}/{role}/{email} | remove a user from a group the caller owns
[**RequestAccessToGroup**](GroupsApi.md#RequestAccessToGroup) | **POST** /api/groups/{groupName}/requestAccess | request access to a group


# **AddUserToGroup**
> AddUserToGroup(group.name, role, email)

add a user to a group the caller owns

### Example
```R
library(openapi)

var.group.name <- 'group.name_example' # character | Group name
var.role <- 'role_example' # character | role of user for group
var.email <- 'email_example' # character | email of user or group to add

#add a user to a group the caller owns
api.instance <- GroupsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$AddUserToGroup(var.group.name, var.role, var.email)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group.name** | **character**| Group name | 
 **role** | Enum [member, admin] | role of user for group | 
 **email** | **character**| email of user or group to add | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successfully Added User To Group |  -  |
| **403** | You must be an admin of this group in order to add members |  -  |
| **404** | User not found |  -  |
| **500** | FireCloud Internal Error |  -  |

# **CreateGroup**
> ManagedGroupWithMembers CreateGroup(group.name)

create a new group

### Example
```R
library(openapi)

var.group.name <- 'group.name_example' # character | Group name

#create a new group
api.instance <- GroupsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$CreateGroup(var.group.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group.name** | **character**| Group name | 

### Return type

[**ManagedGroupWithMembers**](ManagedGroupWithMembers.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successfully created group |  -  |
| **409** | Group already exists |  -  |
| **500** | FireCloud Internal Error |  -  |

# **DeleteGroup**
> DeleteGroup(group.name)

delete a group that the caller owns

### Example
```R
library(openapi)

var.group.name <- 'group.name_example' # character | Group name

#delete a group that the caller owns
api.instance <- GroupsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DeleteGroup(var.group.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group.name** | **character**| Group name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successfully Deleted Group |  -  |
| **403** | You must be an admin of this group in order to delete it |  -  |
| **404** | Group not found |  -  |
| **409** | Group is in use and cannot be deleted |  -  |
| **500** | FireCloud Internal Error |  -  |

# **GetGroup**
> ManagedGroupWithMembers GetGroup(group.name)

view the members in a group

### Example
```R
library(openapi)

var.group.name <- 'group.name_example' # character | Group name

#view the members in a group
api.instance <- GroupsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetGroup(var.group.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group.name** | **character**| Group name | 

### Return type

[**ManagedGroupWithMembers**](ManagedGroupWithMembers.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully loaded group |  -  |
| **403** | You must be an admin of this group in order to view members |  -  |
| **404** | Group not found |  -  |
| **500** | FireCloud Internal Error |  -  |

# **GetGroups**
> array[ManagedGroupAccessResponse] GetGroups()

get the list of the groups that the caller is a member of

### Example
```R
library(openapi)


#get the list of the groups that the caller is a member of
api.instance <- GroupsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetGroups()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[ManagedGroupAccessResponse]**](ManagedGroupAccessResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully listed group membership |  -  |
| **500** | FireCloud Internal Error |  -  |

# **RemoveUserFromGroup**
> RemoveUserFromGroup(group.name, role, email)

remove a user from a group the caller owns

### Example
```R
library(openapi)

var.group.name <- 'group.name_example' # character | Group name
var.role <- 'role_example' # character | role of user for group
var.email <- 'email_example' # character | email of user or group to add

#remove a user from a group the caller owns
api.instance <- GroupsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$RemoveUserFromGroup(var.group.name, var.role, var.email)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group.name** | **character**| Group name | 
 **role** | Enum [member, admin] | role of user for group | 
 **email** | **character**| email of user or group to add | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successfully Removed User From Group |  -  |
| **403** | You must be an admin of this group in order to remove members |  -  |
| **404** | User not found |  -  |
| **500** | FireCloud Internal Error |  -  |

# **RequestAccessToGroup**
> RequestAccessToGroup(group.name)

request access to a group

### Example
```R
library(openapi)

var.group.name <- 'group.name_example' # character | Group name

#request access to a group
api.instance <- GroupsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$RequestAccessToGroup(var.group.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group.name** | **character**| Group name | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successfully requested access |  -  |
| **404** | Group not found |  -  |
| **500** | FireCloud Internal Error |  -  |

