# WomtoolApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Describe**](WomtoolApi.md#Describe) | **POST** /api/womtool/{version}/describe | Machine-readable description of a workflow, including inputs and outputs


# **Describe**
> WorkflowDescription Describe(version, workflow.source=var.workflow.source, workflow.url=var.workflow.url, workflow.inputs=var.workflow.inputs, workflow.type=var.workflow.type, workflow.type.version=var.workflow.type.version)

Machine-readable description of a workflow, including inputs and outputs

### Example
```R
library(openapi)

var.version <- 'v1' # character | Cromwell API Version
var.workflow.source <- File.new('/path/to/file') # data.frame | The workflow source file to submit for execution. Either workflow source or workflow url is required.
var.workflow.url <- 'workflow.url_example' # character | URL which points to the workflow. Either workflow source or workflow url is required.
var.workflow.inputs <- File.new('/path/to/file') # data.frame | JSON or YAML file containing the inputs as an object.
var.workflow.type <- 'workflow.type_example' # character | The workflow language for the file you submitted. Cromwell currently supports WDL and CWL.
var.workflow.type.version <- 'workflow.type.version_example' # character | The specification version for the workflow language being used. For WDL, Cromwell currently supports draft-2 and 1.0. For CWL, Cromwell currently supports v1.0.

#Machine-readable description of a workflow, including inputs and outputs
api.instance <- WomtoolApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Describe(var.version, workflow.source=var.workflow.source, workflow.url=var.workflow.url, workflow.inputs=var.workflow.inputs, workflow.type=var.workflow.type, workflow.type.version=var.workflow.type.version)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **character**| Cromwell API Version | [default to &#39;v1&#39;]
 **workflow.source** | **data.frame**| The workflow source file to submit for execution. Either workflow source or workflow url is required. | [optional] 
 **workflow.url** | **character**| URL which points to the workflow. Either workflow source or workflow url is required. | [optional] 
 **workflow.inputs** | **data.frame**| JSON or YAML file containing the inputs as an object. | [optional] 
 **workflow.type** | Enum [WDL, CWL] | The workflow language for the file you submitted. Cromwell currently supports WDL and CWL. | [optional] 
 **workflow.type.version** | Enum [draft-2, 1.0, v1.0] | The specification version for the workflow language being used. For WDL, Cromwell currently supports draft-2 and 1.0. For CWL, Cromwell currently supports v1.0. | [optional] 

### Return type

[**WorkflowDescription**](WorkflowDescription.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workflow description. |  -  |

