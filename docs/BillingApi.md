# BillingApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddUserToBillingProject**](BillingApi.md#AddUserToBillingProject) | **PUT** /api/billing/{projectId}/{workbenchRole}/{email} | add user to billing project the caller owns
[**CreateBillingProjectFull**](BillingApi.md#CreateBillingProjectFull) | **POST** /api/billing | create billing project in FireCloud and google
[**DeleteBillingProject**](BillingApi.md#DeleteBillingProject) | **DELETE** /api/user/billing/{projectName} | delete billing project
[**ListBillingProjectMembers**](BillingApi.md#ListBillingProjectMembers) | **GET** /api/billing/{projectId}/members | list members of billing project the caller owns
[**RemoveUserFromBillingProject**](BillingApi.md#RemoveUserFromBillingProject) | **DELETE** /api/billing/{projectId}/{workbenchRole}/{email} | remove user from billing project the caller owns


# **AddUserToBillingProject**
> AddUserToBillingProject(project.id, workbench.role, email)

add user to billing project the caller owns

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Project ID
var.workbench.role <- 'workbench.role_example' # character | role of user for project
var.email <- 'email_example' # character | email of user or group to add

#add user to billing project the caller owns
api.instance <- BillingApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$AddUserToBillingProject(var.project.id, var.workbench.role, var.email)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.id** | **character**| Project ID | 
 **workbench.role** | Enum [user, owner] | role of user for project | 
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
| **200** | Successfully Added User To Billing Project |  -  |
| **403** | You must be a project owner to add a user to a billing project |  -  |
| **404** | User not found |  -  |
| **500** | FireCloud Internal Error |  -  |

# **CreateBillingProjectFull**
> CreateBillingProjectFull(create.project.request)

create billing project in FireCloud and google

### Example
```R
library(openapi)

var.create.project.request <- CreateRawlsBillingProjectFullRequest$new("projectName_example", "billingAccount_example", "highSecurityNetwork_example", "enableFlowLogs_example", "privateIpGoogleAccess_example", "servicePerimeter_example") # CreateRawlsBillingProjectFullRequest | create project request

#create billing project in FireCloud and google
api.instance <- BillingApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$CreateBillingProjectFull(var.create.project.request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create.project.request** | [**CreateRawlsBillingProjectFullRequest**](CreateRawlsBillingProjectFullRequest.md)| create project request | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | Successfully Created Billing Project in FireCloud and Google |  -  |
| **400** | FireCloud billing user must be an admin of the billing account |  -  |
| **403** | You must be an admin of the google billing account |  -  |
| **409** | project already exists in FireCloud or google |  -  |
| **500** | FireCloud Internal Error |  -  |

# **DeleteBillingProject**
> DeleteBillingProject(project.name)

delete billing project

delete billing project

### Example
```R
library(openapi)

var.project.name <- 'project.name_example' # character | Name of the billing project

#delete billing project
api.instance <- BillingApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DeleteBillingProject(var.project.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.name** | **character**| Name of the billing project | 

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
| **200** | Successfully delete billing project |  -  |
| **400** | Project cannot be deleted because it contains workspaces. |  -  |
| **403** | You must be a project owner to delete billing project |  -  |
| **500** | Rawls Internal Error |  -  |

# **ListBillingProjectMembers**
> array[BillingProjectMember] ListBillingProjectMembers(project.id)

list members of billing project the caller owns

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Project ID

#list members of billing project the caller owns
api.instance <- BillingApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ListBillingProjectMembers(var.project.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.id** | **character**| Project ID | 

### Return type

[**array[BillingProjectMember]**](BillingProjectMember.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **403** | You must be a project owner to view the members of a project |  -  |
| **500** | FireCloud Internal Error |  -  |

# **RemoveUserFromBillingProject**
> RemoveUserFromBillingProject(project.id, workbench.role, email)

remove user from billing project the caller owns

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Project ID
var.workbench.role <- 'workbench.role_example' # character | role of user for project
var.email <- 'email_example' # character | email of user or group to remove

#remove user from billing project the caller owns
api.instance <- BillingApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$RemoveUserFromBillingProject(var.project.id, var.workbench.role, var.email)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.id** | **character**| Project ID | 
 **workbench.role** | Enum [user, owner] | role of user for project | 
 **email** | **character**| email of user or group to remove | 

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
| **200** | Successfully Removed User From Billing Project |  -  |
| **403** | You must be a project owner to add a user to a billing project |  -  |
| **404** | User not found |  -  |
| **500** | FireCloud Internal Error |  -  |

