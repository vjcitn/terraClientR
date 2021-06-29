# BillingV2Api

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddUserToBillingProject**](BillingV2Api.md#AddUserToBillingProject) | **PUT** /api/billing/v2/{projectId}/members/{workbenchRole}/{email} | add user or group to billing project the caller owns
[**CreateBillingProjectFullV2**](BillingV2Api.md#CreateBillingProjectFullV2) | **POST** /api/billing/v2 | create billing project in rawls
[**DeleteBillingProject**](BillingV2Api.md#DeleteBillingProject) | **DELETE** /api/billing/v2/{projectId} | delete billing project
[**GetBillingProject**](BillingV2Api.md#GetBillingProject) | **GET** /api/billing/v2/{projectId} | get billing project
[**ListBillingProjectMembers**](BillingV2Api.md#ListBillingProjectMembers) | **GET** /api/billing/v2/{projectId}/members | list members of billing project the caller owns
[**RemoveUserFromBillingProject**](BillingV2Api.md#RemoveUserFromBillingProject) | **DELETE** /api/billing/v2/{projectId}/members/{workbenchRole}/{email} | remove user or group from billing project the caller owns


# **AddUserToBillingProject**
> AddUserToBillingProject(project.id, workbench.role, email)

add user or group to billing project the caller owns

add user or group to billing project the caller owns

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Project ID
var.workbench.role <- 'workbench.role_example' # character | role of user for project
var.email <- 'email_example' # character | email of user or group to add

#add user or group to billing project the caller owns
api.instance <- BillingV2Api$new()
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
| **200** | Successfully Added User/Group To Billing Project |  -  |
| **403** | You must be a project owner to add a user to a billing project |  -  |
| **404** | User not found |  -  |
| **500** | FireCloud Internal Error |  -  |

# **CreateBillingProjectFullV2**
> CreateBillingProjectFullV2(create.project.request)

create billing project in rawls

create new billing project in rawls

### Example
```R
library(openapi)

var.create.project.request <- CreateRawlsBillingProjectFullRequest$new("projectName_example", "billingAccount_example", "highSecurityNetwork_example", "enableFlowLogs_example", "privateIpGoogleAccess_example", "servicePerimeter_example") # CreateRawlsBillingProjectFullRequest | create project request

#create billing project in rawls
api.instance <- BillingV2Api$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$CreateBillingProjectFullV2(var.create.project.request)
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
| **201** | Successfully Created Billing Project in FireCloud |  -  |
| **400** | both you and firecloud billing user must be a user of the billing account |  -  |
| **409** | project already exists in rawls |  -  |
| **500** | FireCloud Internal Error |  -  |

# **DeleteBillingProject**
> DeleteBillingProject(project.id)

delete billing project

delete billing project

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Id of the billing project

#delete billing project
api.instance <- BillingV2Api$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DeleteBillingProject(var.project.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.id** | **character**| Id of the billing project | 

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
| **204** | OK |  -  |
| **404** | Project Not Found |  -  |
| **500** | Internal Server Error |  -  |

# **GetBillingProject**
> BillingProjectResponse GetBillingProject(project.id)

get billing project

get billing project

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Id of the billing project

#get billing project
api.instance <- BillingV2Api$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetBillingProject(var.project.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.id** | **character**| Id of the billing project | 

### Return type

[**BillingProjectResponse**](BillingProjectResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | Project Not Found |  -  |
| **500** | Internal Server Error |  -  |

# **ListBillingProjectMembers**
> array[BillingProjectMember] ListBillingProjectMembers(project.id)

list members of billing project the caller owns

list members of billing project the caller owns

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Project ID

#list members of billing project the caller owns
api.instance <- BillingV2Api$new()
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

remove user or group from billing project the caller owns

remove user or group from billing project the caller owns

### Example
```R
library(openapi)

var.project.id <- 'project.id_example' # character | Project ID
var.workbench.role <- 'workbench.role_example' # character | role of user for project
var.email <- 'email_example' # character | email of user or group to remove

#remove user or group from billing project the caller owns
api.instance <- BillingV2Api$new()
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

