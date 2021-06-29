# CromIAMWorkflowsForJobManagerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiWorkflowsVersionIdAbortPost**](CromIAMWorkflowsForJobManagerApi.md#ApiWorkflowsVersionIdAbortPost) | **POST** /api/workflows/{version}/{id}/abort | Abort a workflow based on workflow id
[**ApiWorkflowsVersionIdBackendMetadataBackendIdGet**](CromIAMWorkflowsForJobManagerApi.md#ApiWorkflowsVersionIdBackendMetadataBackendIdGet) | **GET** /api/workflows/{version}/{id}/backend/metadata/{backendId} | Get backend (e.g. PAPI) metadata for a job
[**ApiWorkflowsVersionIdLabelsPatch**](CromIAMWorkflowsForJobManagerApi.md#ApiWorkflowsVersionIdLabelsPatch) | **PATCH** /api/workflows/{version}/{id}/labels | Add new labels or update values for existing label keys by workflow id.
[**ApiWorkflowsVersionIdMetadataGet**](CromIAMWorkflowsForJobManagerApi.md#ApiWorkflowsVersionIdMetadataGet) | **GET** /api/workflows/{version}/{id}/metadata | Query for workflow and call-level metadata for a specified workflow
[**ApiWorkflowsVersionQueryGet**](CromIAMWorkflowsForJobManagerApi.md#ApiWorkflowsVersionQueryGet) | **GET** /api/workflows/{version}/query | Query workflows by start dates, end dates, names, ids, or statuses.
[**ApiWorkflowsVersionQueryPost**](CromIAMWorkflowsForJobManagerApi.md#ApiWorkflowsVersionQueryPost) | **POST** /api/workflows/{version}/query | Query workflows by start dates, end dates, names, ids, or statuses.


# **ApiWorkflowsVersionIdAbortPost**
> WorkflowStatusResponse ApiWorkflowsVersionIdAbortPost(version, id)

Abort a workflow based on workflow id

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version
var.id <- 'id_example' # character | Workflow ID

#Abort a workflow based on workflow id
api.instance <- CromIAMWorkflowsForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiWorkflowsVersionIdAbortPost(var.version, var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]
 **id** | **character**| Workflow ID | 

### Return type

[**WorkflowStatusResponse**](WorkflowStatusResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Malformed Workflow ID |  -  |
| **403** | Workflow in terminal status |  -  |
| **404** | Workflow ID Not Found |  -  |
| **500** | Internal Error |  -  |

# **ApiWorkflowsVersionIdBackendMetadataBackendIdGet**
> ApiWorkflowsVersionIdBackendMetadataBackendIdGet(version, id, backend.id)

Get backend (e.g. PAPI) metadata for a job

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version
var.id <- 'id_example' # character | Workflow ID
var.backend.id <- 'backend.id_example' # character | Backend ID, must be a job that is part of the workflow

#Get backend (e.g. PAPI) metadata for a job
api.instance <- CromIAMWorkflowsForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ApiWorkflowsVersionIdBackendMetadataBackendIdGet(var.version, var.id, var.backend.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]
 **id** | **character**| Workflow ID | 
 **backend.id** | **character**| Backend ID, must be a job that is part of the workflow | 

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
| **200** | Successful Request, format is backend dependent |  -  |
| **404** | Workflow or Backend ID Not Found |  -  |
| **500** | Internal Error |  -  |

# **ApiWorkflowsVersionIdLabelsPatch**
> LabelsResponse ApiWorkflowsVersionIdLabelsPatch(version, id, labels)

Add new labels or update values for existing label keys by workflow id.

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version
var.id <- 'id_example' # character | Workflow ID
var.labels <- NULL # object | Custom labels submitted as JSON. Example: {\"key-1\":\"value-1\",\"key-2\":\"value-2\"} 

#Add new labels or update values for existing label keys by workflow id.
api.instance <- CromIAMWorkflowsForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiWorkflowsVersionIdLabelsPatch(var.version, var.id, var.labels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]
 **id** | **character**| Workflow ID | 
 **labels** | **object**| Custom labels submitted as JSON. Example: {\&quot;key-1\&quot;:\&quot;value-1\&quot;,\&quot;key-2\&quot;:\&quot;value-2\&quot;}  | 

### Return type

[**LabelsResponse**](LabelsResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Malformed Workflow ID |  -  |
| **404** | Workflow ID Not Found |  -  |
| **500** | Internal Error |  -  |

# **ApiWorkflowsVersionIdMetadataGet**
> WorkflowMetadataResponse ApiWorkflowsVersionIdMetadataGet(version, id, include.key=var.include.key, exclude.key=var.exclude.key, expand.sub.workflows=FALSE)

Query for workflow and call-level metadata for a specified workflow

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version
var.id <- 'id_example' # character | Workflow ID
var.include.key <- list("inner_example") # array[character] | When specified key(s) to include from the metadata. Matches any key starting with the value. May not be used with excludeKey. 
var.exclude.key <- list("inner_example") # array[character] | When specified key(s) to exclude from the metadata. Matches any key starting with the value. May not be used with includeKey. 
var.expand.sub.workflows <- FALSE # character | When true, metadata for sub workflows will be fetched and inserted automatically in the metadata response. 

#Query for workflow and call-level metadata for a specified workflow
api.instance <- CromIAMWorkflowsForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiWorkflowsVersionIdMetadataGet(var.version, var.id, include.key=var.include.key, exclude.key=var.exclude.key, expand.sub.workflows=var.expand.sub.workflows)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]
 **id** | **character**| Workflow ID | 
 **include.key** | list( **character** )| When specified key(s) to include from the metadata. Matches any key starting with the value. May not be used with excludeKey.  | [optional] 
 **exclude.key** | list( **character** )| When specified key(s) to exclude from the metadata. Matches any key starting with the value. May not be used with includeKey.  | [optional] 
 **expand.sub.workflows** | **character**| When true, metadata for sub workflows will be fetched and inserted automatically in the metadata response.  | [optional] [default to FALSE]

### Return type

[**WorkflowMetadataResponse**](WorkflowMetadataResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, workflowName, calls, outputs, id, inputs, submission, status, end, start

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Malformed Workflow ID |  -  |
| **404** | Workflow ID Not Found |  -  |
| **500** | Internal Error |  -  |

# **ApiWorkflowsVersionQueryGet**
> WorkflowQueryResponse ApiWorkflowsVersionQueryGet(version, start=var.start, end=var.end, status=var.status, name=var.name, id=var.id)

Query workflows by start dates, end dates, names, ids, or statuses.

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version
var.start <- 'start_example' # character | Returns only workflows with an equal or later start datetime.  Can be specified at most once. If both start and end date are specified, start date must be before or equal to end date. 
var.end <- 'end_example' # character | Returns only workflows with an equal or earlier end datetime.  Can be specified at most once. If both start and end date are specified, start date must be before or equal to end date. 
var.status <- list("inner_example") # array[character] | Returns only workflows with the specified status.  If specified multiple times, returns workflows in any of the specified statuses. 
var.name <- list("inner_example") # array[character] | Returns only workflows with the specified name.  If specified multiple times, returns workflows with any of the specified names. 
var.id <- list("inner_example") # array[character] | Returns only workflows with the specified workflow id.  If specified multiple times, returns workflows with any of the specified workflow ids. 

#Query workflows by start dates, end dates, names, ids, or statuses.
api.instance <- CromIAMWorkflowsForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiWorkflowsVersionQueryGet(var.version, start=var.start, end=var.end, status=var.status, name=var.name, id=var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]
 **start** | **character**| Returns only workflows with an equal or later start datetime.  Can be specified at most once. If both start and end date are specified, start date must be before or equal to end date.  | [optional] 
 **end** | **character**| Returns only workflows with an equal or earlier end datetime.  Can be specified at most once. If both start and end date are specified, start date must be before or equal to end date.  | [optional] 
 **status** | Enum [Submitted, Running, Aborting, Failed, Succeeded, Aborted] | Returns only workflows with the specified status.  If specified multiple times, returns workflows in any of the specified statuses.  | [optional] 
 **name** | list( **character** )| Returns only workflows with the specified name.  If specified multiple times, returns workflows with any of the specified names.  | [optional] 
 **id** | list( **character** )| Returns only workflows with the specified workflow id.  If specified multiple times, returns workflows with any of the specified workflow ids.  | [optional] 

### Return type

[**WorkflowQueryResponse**](WorkflowQueryResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **403** | Malformed Request |  -  |
| **500** | Internal Error |  -  |

# **ApiWorkflowsVersionQueryPost**
> WorkflowQueryResponse ApiWorkflowsVersionQueryPost(version, parameters)

Query workflows by start dates, end dates, names, ids, or statuses.

### Example
```R
library(openapi)

var.version <- 'v1' # character | API version
var.parameters <- list(WorkflowQueryParameter$new("start_example", "end_example", "Submitted", "name_example", "id_example")) # array[WorkflowQueryParameter] | Same query parameters as GET /query endpoint, submitted as a json list. Example: [{\"status\":\"Success\"},{\"status\":\"Failed\"}] 

#Query workflows by start dates, end dates, names, ids, or statuses.
api.instance <- CromIAMWorkflowsForJobManagerApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiWorkflowsVersionQueryPost(var.version, var.parameters)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API version | [default to &#39;v1&#39;]
 **parameters** | list( [**WorkflowQueryParameter**](WorkflowQueryParameter.md) )| Same query parameters as GET /query endpoint, submitted as a json list. Example: [{\&quot;status\&quot;:\&quot;Success\&quot;},{\&quot;status\&quot;:\&quot;Failed\&quot;}]  | 

### Return type

[**WorkflowQueryResponse**](WorkflowQueryResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Malformed Request |  -  |
| **500** | Internal Error |  -  |

