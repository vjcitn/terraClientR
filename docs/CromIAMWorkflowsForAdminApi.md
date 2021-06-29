# CromIAMWorkflowsForAdminApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiWorkflowsVersionCallcachingDiffGet**](CromIAMWorkflowsForAdminApi.md#ApiWorkflowsVersionCallcachingDiffGet) | **GET** /api/workflows/{version}/callcaching/diff | Return the hash differential between two calls
[**ApiWorkflowsVersionIdReleaseHoldPost**](CromIAMWorkflowsForAdminApi.md#ApiWorkflowsVersionIdReleaseHoldPost) | **POST** /api/workflows/{version}/{id}/releaseHold | Request Cromwell to release the hold on a workflow. It will switch the status of a workflow from ‘On Hold’ to ‘Submitted’ so it can be picked for running. For instance this might be necessary in cases where you have submitted a workflow with workflowOnHold &#x3D; true.


# **ApiWorkflowsVersionCallcachingDiffGet**
> WorkflowCacheDiffResponse ApiWorkflowsVersionCallcachingDiffGet(version, workflow.a, call.a, workflow.b, call.b, index.a=var.index.a, index.b=var.index.b)

Return the hash differential between two calls

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version
var.workflow.a <- 'workflow.a_example' # character | Workflow Id of the first workflow
var.call.a <- 'call.a_example' # character | Call FQN (including workflow name) of the first call
var.workflow.b <- 'workflow.b_example' # character | Workflow Id of the second workflow
var.call.b <- 'call.b_example' # character | Call FQN (including workflow name) of the second call
var.index.a <- 3.4 # numeric | Index of the first call
var.index.b <- 3.4 # numeric | Index of the second call

#Return the hash differential between two calls
api.instance <- CromIAMWorkflowsForAdminApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiWorkflowsVersionCallcachingDiffGet(var.version, var.workflow.a, var.call.a, var.workflow.b, var.call.b, index.a=var.index.a, index.b=var.index.b)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| API Version | [default to &#39;v1&#39;]
 **workflow.a** | **character**| Workflow Id of the first workflow | 
 **call.a** | **character**| Call FQN (including workflow name) of the first call | 
 **workflow.b** | **character**| Workflow Id of the second workflow | 
 **call.b** | **character**| Call FQN (including workflow name) of the second call | 
 **index.a** | **numeric**| Index of the first call | [optional] 
 **index.b** | **numeric**| Index of the second call | [optional] 

### Return type

[**WorkflowCacheDiffResponse**](WorkflowCacheDiffResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Malformed query parameters |  -  |
| **404** | No matching cache entry |  -  |
| **500** | Internal Error |  -  |

# **ApiWorkflowsVersionIdReleaseHoldPost**
> WorkflowStatusResponse ApiWorkflowsVersionIdReleaseHoldPost(version, id)

Request Cromwell to release the hold on a workflow. It will switch the status of a workflow from ‘On Hold’ to ‘Submitted’ so it can be picked for running. For instance this might be necessary in cases where you have submitted a workflow with workflowOnHold = true.

### Example
```R
library(openapi)

var.version <- 'v1' # character | API Version
var.id <- 'id_example' # character | Workflow ID

#Request Cromwell to release the hold on a workflow. It will switch the status of a workflow from ‘On Hold’ to ‘Submitted’ so it can be picked for running. For instance this might be necessary in cases where you have submitted a workflow with workflowOnHold = true.
api.instance <- CromIAMWorkflowsForAdminApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ApiWorkflowsVersionIdReleaseHoldPost(var.version, var.id)
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
| **403** | Malformed Request |  -  |
| **404** | Workflow ID Not Found |  -  |
| **500** | Internal Error |  -  |

