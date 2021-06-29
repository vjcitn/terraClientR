# SubmissionsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AbortSubmission**](SubmissionsApi.md#AbortSubmission) | **DELETE** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions/{submissionId} | abort a submission 
[**CountSubmissions**](SubmissionsApi.md#CountSubmissions) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissionsCount | Count submissions by status
[**CreateSubmission**](SubmissionsApi.md#CreateSubmission) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions | Create a submission. 
[**ListSubmissions**](SubmissionsApi.md#ListSubmissions) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions | List submissions. 
[**MonitorSubmission**](SubmissionsApi.md#MonitorSubmission) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions/{submissionId} | Monitor submission status 
[**ValidateSubmission**](SubmissionsApi.md#ValidateSubmission) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions/validate | Validate submission
[**WorkflowCostInSubmission**](SubmissionsApi.md#WorkflowCostInSubmission) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions/{submissionId}/workflows/{workflowId}/cost | Retrieve workflow cost, if available. 
[**WorkflowMetadata**](SubmissionsApi.md#WorkflowMetadata) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions/{submissionId}/workflows/{workflowId} | Get call-level metadata for workflow
[**WorkflowOutputsInSubmission**](SubmissionsApi.md#WorkflowOutputsInSubmission) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/submissions/{submissionId}/workflows/{workflowId}/outputs | Get workflow outputs. 
[**WorkflowQueueStatus**](SubmissionsApi.md#WorkflowQueueStatus) | **GET** /api/submissions/queueStatus | workflow queue status


# **AbortSubmission**
> AbortSubmission(workspace.namespace, workspace.name, submission.id)

abort a submission 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.submission.id <- 'submission.id_example' # character | Submission ID

#abort a submission 
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$AbortSubmission(var.workspace.namespace, var.workspace.name, var.submission.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **submission.id** | **character**| Submission ID | 

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
| **204** | Aborted successfully |  -  |
| **404** | Submission not found |  -  |
| **500** | Internal Error |  -  |

# **CountSubmissions**
> SubmissionsCountResponse CountSubmissions(workspace.namespace, workspace.name)

Count submissions by status

Counts all submissions run in the workspace, grouped by status. Returns a map of status:count.

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#Count submissions by status
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$CountSubmissions(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

[**SubmissionsCountResponse**](SubmissionsCountResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **CreateSubmission**
> CreateSubmission(workspace.namespace, workspace.name, submission)

Create a submission. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.submission <- SubmissionRequest$new("methodConfigurationNamespace_example", "methodConfigurationName_example", "useCallCache_example", "entityType_example", "entityName_example", "expression_example", "deleteIntermediateOutputFiles_example", "useReferenceDisks_example", "NoNewCalls") # SubmissionRequest | Post Submission

#Create a submission. 
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$CreateSubmission(var.workspace.namespace, var.workspace.name, var.submission)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **submission** | [**SubmissionRequest**](SubmissionRequest.md)| Post Submission | 

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
| **201** | Successful Request |  -  |
| **400** | Expression eval failed or entities are not of type required by method config |  -  |
| **404** | Method Configuration or Entity not found |  -  |
| **409** | Method Configuration failed to resolve input expressions with the supplied Entity |  -  |
| **500** | Internal Error |  -  |

# **ListSubmissions**
> ListSubmissions(workspace.namespace, workspace.name)

List submissions. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#List submissions. 
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ListSubmissions(var.workspace.namespace, var.workspace.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

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
| **200** | List of submissions |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **MonitorSubmission**
> Submission MonitorSubmission(workspace.namespace, workspace.name, submission.id)

Monitor submission status 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.submission.id <- 'submission.id_example' # character | Submission ID

#Monitor submission status 
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$MonitorSubmission(var.workspace.namespace, var.workspace.name, var.submission.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **submission.id** | **character**| Submission ID | 

### Return type

[**Submission**](Submission.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | Submission not found |  -  |
| **500** | Internal Error |  -  |

# **ValidateSubmission**
> SubmissionValidationReport ValidateSubmission(workspace.namespace, workspace.name, submission)

Validate submission

Validate expression syntax for a submission

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.submission <- SubmissionRequest$new("methodConfigurationNamespace_example", "methodConfigurationName_example", "useCallCache_example", "entityType_example", "entityName_example", "expression_example", "deleteIntermediateOutputFiles_example", "useReferenceDisks_example", "NoNewCalls") # SubmissionRequest | Description of a submission.

#Validate submission
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ValidateSubmission(var.workspace.namespace, var.workspace.name, var.submission)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **submission** | [**SubmissionRequest**](SubmissionRequest.md)| Description of a submission. | 

### Return type

[**SubmissionValidationReport**](SubmissionValidationReport.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Validation Response |  -  |
| **400** | Expression evaluation failed or entities are not of type required by method config |  -  |
| **404** | Workspace, Method Configuration or Entity not found |  -  |
| **500** | Rawls Internal Error |  -  |
| **502** | Trouble talking to Agora |  -  |

# **WorkflowCostInSubmission**
> WorkflowCost WorkflowCostInSubmission(workspace.namespace, workspace.name, submission.id, workflow.id)

Retrieve workflow cost, if available. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.submission.id <- 'submission.id_example' # character | Submission ID
var.workflow.id <- 'workflow.id_example' # character | Workflow ID

#Retrieve workflow cost, if available. 
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$WorkflowCostInSubmission(var.workspace.namespace, var.workspace.name, var.submission.id, var.workflow.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **submission.id** | **character**| Submission ID | 
 **workflow.id** | **character**| Workflow ID | 

### Return type

[**WorkflowCost**](WorkflowCost.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | Workspace, Submission or Workflow not found |  -  |
| **500** | Internal Error |  -  |

# **WorkflowMetadata**
> WorkflowMetadata(workspace.namespace, workspace.name, submission.id, workflow.id, include.key=var.include.key, exclude.key=var.exclude.key, expand.sub.workflows=FALSE)

Get call-level metadata for workflow

Get call-level metadata for workflow

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.submission.id <- 'submission.id_example' # character | Submission ID
var.workflow.id <- 'workflow.id_example' # character | Workflow ID
var.include.key <- list("inner_example") # array[character] | When specified, return only these keys in the response. Matches any key in the response, including within nested blocks. May not be used with excludeKey. 
var.exclude.key <- list("inner_example") # array[character] | When specified, omit these keys from the response. Matches any key in the response, including within nested blocks. May not be used with includeKey. 
var.expand.sub.workflows <- FALSE # character | When true, metadata for sub workflows will be fetched and inserted automatically in the metadata response. 

#Get call-level metadata for workflow
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$WorkflowMetadata(var.workspace.namespace, var.workspace.name, var.submission.id, var.workflow.id, include.key=var.include.key, exclude.key=var.exclude.key, expand.sub.workflows=var.expand.sub.workflows)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **submission.id** | **character**| Submission ID | 
 **workflow.id** | **character**| Workflow ID | 
 **include.key** | list( **character** )| When specified, return only these keys in the response. Matches any key in the response, including within nested blocks. May not be used with excludeKey.  | [optional] 
 **exclude.key** | list( **character** )| When specified, omit these keys from the response. Matches any key in the response, including within nested blocks. May not be used with includeKey.  | [optional] 
 **expand.sub.workflows** | **character**| When true, metadata for sub workflows will be fetched and inserted automatically in the metadata response.  | [optional] [default to FALSE]

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
| **200** | Successful Request |  -  |
| **404** | Workspace, Submission or Workflow not found |  -  |
| **500** | Rawls Internal Error |  -  |

# **WorkflowOutputsInSubmission**
> WorkflowOutputsInSubmission(workspace.namespace, workspace.name, submission.id, workflow.id)

Get workflow outputs. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.submission.id <- 'submission.id_example' # character | Submission ID
var.workflow.id <- 'workflow.id_example' # character | Workflow ID

#Get workflow outputs. 
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$WorkflowOutputsInSubmission(var.workspace.namespace, var.workspace.name, var.submission.id, var.workflow.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **submission.id** | **character**| Submission ID | 
 **workflow.id** | **character**| Workflow ID | 

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
| **200** | Get workflow outputs |  -  |
| **404** | Workspace, Submission or Workflow not found |  -  |
| **500** | Internal Error |  -  |

# **WorkflowQueueStatus**
> WorkflowQueueStatusResponse WorkflowQueueStatus()

workflow queue status

List workflow counts by queueing state

### Example
```R
library(openapi)


#workflow queue status
api.instance <- SubmissionsApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$WorkflowQueueStatus()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WorkflowQueueStatusResponse**](WorkflowQueueStatusResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **500** | Rawls Internal Error |  -  |

