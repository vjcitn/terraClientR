# ServicePerimetersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddProjectToServicePerimeter**](ServicePerimetersApi.md#AddProjectToServicePerimeter) | **PUT** /servicePerimeters/{servicePerimeterName}/projects/{projectName} | Add a project to a service perimeter


# **AddProjectToServicePerimeter**
> AddProjectToServicePerimeter(service.perimeter.name, project.name)

Add a project to a service perimeter

Add a project to a service perimeter, must have 'add_to_service_perimeter' action on project and 'add_project' action on perimeter, included in owner role for both 

### Example
```R
library(openapi)

var.service.perimeter.name <- 'service.perimeter.name_example' # character | Fully qualified google service perimeter name in the form of accessPolicies/[POLICY NUMBER]/servicePerimeters/[NAME], url encoded 
var.project.name <- 'project.name_example' # character | Project name

#Add a project to a service perimeter
api.instance <- ServicePerimetersApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$AddProjectToServicePerimeter(var.service.perimeter.name, var.project.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service.perimeter.name** | **character**| Fully qualified google service perimeter name in the form of accessPolicies/[POLICY NUMBER]/servicePerimeters/[NAME], url encoded  | 
 **project.name** | **character**| Project name | 

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
| **202** | Successful request, check the project&#39;s status for completion |  -  |
| **400** | Project is already in perimeter or is not in &#39;Ready&#39; state |  -  |
| **403** | Project does not exist or you do not have access |  -  |
| **404** | Service Perimeter does not exist or you do not have access |  -  |
| **500** | Rawls Internal Error |  -  |

