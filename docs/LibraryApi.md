# LibraryApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DataIngest**](LibraryApi.md#DataIngest) | **POST** /duos/structuredData | Data Use Search ingest
[**DuosAutocomplete**](LibraryApi.md#DuosAutocomplete) | **GET** /duos/autocomplete/{queryTerm} | Passes through to DUOS&#39; autocomplete method to select ontology terms of disease type that match the query term. 
[**DuosConsentOrspId**](LibraryApi.md#DuosConsentOrspId) | **GET** /api/duos/consent/orsp/{orspId} | Find Consent by ORSP ID
[**DuosResearchPurposeQuery**](LibraryApi.md#DuosResearchPurposeQuery) | **POST** /duos/researchPurposeQuery | Generates an ElasticSearch clause for filtering by research purpose
[**FindDocuments**](LibraryApi.md#FindDocuments) | **POST** /api/library/search | searches published library datasets 
[**GetDiscoverableGroups**](LibraryApi.md#GetDiscoverableGroups) | **GET** /api/library/{workspaceNamespace}/{workspaceName}/discoverableGroups | get the groups that can discover this library dataset 
[**GetLibraryMetadata**](LibraryApi.md#GetLibraryMetadata) | **GET** /api/library/{workspaceNamespace}/{workspaceName}/metadata | get the entire metadata for a library dataset 
[**Groups**](LibraryApi.md#Groups) | **GET** /api/library/groups | returns groups that can be used for discoverable datasets 
[**PopulateSuggest**](LibraryApi.md#PopulateSuggest) | **GET** /api/library/populate/suggest/{field} | suggestions for populating a field 
[**PublishLibraryWorkspace**](LibraryApi.md#PublishLibraryWorkspace) | **POST** /api/library/{workspaceNamespace}/{workspaceName}/published | publish the workspace in the Library 
[**PutLibraryMetadata**](LibraryApi.md#PutLibraryMetadata) | **PUT** /api/library/{workspaceNamespace}/{workspaceName}/metadata | put the entire metadata for a library dataset 
[**ReindexAll**](LibraryApi.md#ReindexAll) | **POST** /api/library/admin/reindex | deletes and rebuilds the entire index of published library datasets 
[**SearchSuggest**](LibraryApi.md#SearchSuggest) | **POST** /api/library/suggest | search suggestions 
[**UnpublishLibraryWorkspace**](LibraryApi.md#UnpublishLibraryWorkspace) | **DELETE** /api/library/{workspaceNamespace}/{workspaceName}/published | unpublish the workspace in the Library 
[**UpdateDiscoverableGroups**](LibraryApi.md#UpdateDiscoverableGroups) | **PUT** /api/library/{workspaceNamespace}/{workspaceName}/discoverableGroups | set the groups that can discover this library dataset 


# **DataIngest**
> DataIngest(body)

Data Use Search ingest

The ingest API will take the answers to consent questions and return the elasticsearch structure to persist with the data reference.

### Example
```R
library(openapi)

var.body <- structuredDataRequest$new("generalResearchUse_example", "healthMedicalBiomedicalUseRequired_example", list("diseaseUseRequired_example"), "commercialUseProhibited_example", "forProfitUseProhibited_example", "methodsResearchProhibited_example", "aggregateLevelDataProhibited_example", "controlsUseProhibited_example", "genderUseRequired_example", "pediatricResearchRequired_example", "irbRequired_example", "prefix_example") # StructuredDataRequest | Structured Data Request

#Data Use Search ingest
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DataIngest(var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**StructuredDataRequest**](StructuredDataRequest.md)| Structured Data Request | 

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
| **500** | Internal Server Error |  -  |

# **DuosAutocomplete**
> DuosAutocomplete(query.term)

Passes through to DUOS' autocomplete method to select ontology terms of disease type that match the query term. 

### Example
```R
library(openapi)

var.query.term <- 'query.term_example' # character | The query term (word fragment) which the service should try and complete.

#Passes through to DUOS' autocomplete method to select ontology terms of disease type that match the query term. 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DuosAutocomplete(var.query.term)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query.term** | **character**| The query term (word fragment) which the service should try and complete. | 

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
| **200** | Array of results. |  -  |
| **500** | Internal Server Error |  -  |

# **DuosConsentOrspId**
> Consent DuosConsentOrspId(orsp.id)

Find Consent by ORSP ID

### Example
```R
library(openapi)

var.orsp.id <- 'orsp.id_example' # character | Finds the consent for the provided ORSP ID.

#Find Consent by ORSP ID
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$DuosConsentOrspId(var.orsp.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orsp.id** | **character**| Finds the consent for the provided ORSP ID. | 

### Return type

[**Consent**](Consent.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Consent |  -  |
| **400** | The consent associated with the provided name has not been approved. |  -  |
| **401** | Invalid authorization, must be a FireCloud user. |  -  |
| **404** | The consent associated with the provided name could not be found. |  -  |
| **500** | Internal Server Error |  -  |

# **DuosResearchPurposeQuery**
> DuosResearchPurposeQuery(body)

Generates an ElasticSearch clause for filtering by research purpose

### Example
```R
library(openapi)

var.body <- ResearchPurposeRequest$new(list("DS_example"), "NMDS_example", "NCTRL_example", "NAGR_example", "POA_example", "NCU_example", "prefix_example") # ResearchPurposeRequest | Research Purpose Request

#Generates an ElasticSearch clause for filtering by research purpose
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DuosResearchPurposeQuery(var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ResearchPurposeRequest**](ResearchPurposeRequest.md)| Research Purpose Request | 

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
| **200** | JSON of ES filter clause |  -  |

# **FindDocuments**
> FindDocuments(search.params=var.search.params)

searches published library datasets 

### Example
```R
library(openapi)

var.search.params <- SearchTermRef$new("searchString_example", TODO, ResearchPurpose$new(list("DS_example"), "NMDS_example", "NCTRL_example", "NAGR_example", "POA_example", "NCU_example"), TODO, 123, 123, "sortField_example", "sortDirection_example") # SearchTermRef | Search terms and pagination parameters

#searches published library datasets 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$FindDocuments(search.params=var.search.params)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search.params** | [**SearchTermRef**](SearchTermRef.md)| Search terms and pagination parameters | [optional] 

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
| **200** | Matching datasets |  -  |

# **GetDiscoverableGroups**
> array[character] GetDiscoverableGroups(workspace.namespace, workspace.name)

get the groups that can discover this library dataset 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#get the groups that can discover this library dataset 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetDiscoverableGroups(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

**array[character]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The groups that can discover the dataset |  -  |
| **403** | Insufficient permissions |  -  |
| **404** | Workspace not found |  -  |
| **500** | Error |  -  |

# **GetLibraryMetadata**
> object GetLibraryMetadata(workspace.namespace, workspace.name)

get the entire metadata for a library dataset 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#get the entire metadata for a library dataset 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetLibraryMetadata(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

**object**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | Workspace not found |  -  |
| **500** | Rawls Internal Error |  -  |

# **Groups**
> array[character] Groups()

returns groups that can be used for discoverable datasets 

### Example
```R
library(openapi)


#returns groups that can be used for discoverable datasets 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Groups()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**array[character]**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Names of the allowed groups |  -  |

# **PopulateSuggest**
> PopulateSuggest(field, q)

suggestions for populating a field 

### Example
```R
library(openapi)

var.field <- 'field_example' # character | the property to get suggestions for
var.q <- 'q_example' # character | the initial text to complete

#suggestions for populating a field 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$PopulateSuggest(var.field, var.q)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field** | **character**| the property to get suggestions for | 
 **q** | **character**| the initial text to complete | 

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
| **200** | Field specific suggestions |  -  |
| **400** | Bad Request, specified field that was not configured for suggestions |  -  |

# **PublishLibraryWorkspace**
> Workspace PublishLibraryWorkspace(workspace.namespace, workspace.name)

publish the workspace in the Library 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#publish the workspace in the Library 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$PublishLibraryWorkspace(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

[**Workspace**](Workspace.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **204** | Dataset already in requested published state |  -  |
| **403** | You must be the workspace owner and library curator to publish a workspace to the library |  -  |
| **500** | Rawls Internal Error |  -  |

# **PutLibraryMetadata**
> Workspace PutLibraryMetadata(workspace.namespace, workspace.name, library.metadata.json, validate=var.validate)

put the entire metadata for a library dataset 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.library.metadata.json <- NULL # object | Library metadata
var.validate <- 'validate_example' # character | Should the payload be validated? Validation is always enabled for published datasets and defaults to false for unpublished datasets. 

#put the entire metadata for a library dataset 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$PutLibraryMetadata(var.workspace.namespace, var.workspace.name, var.library.metadata.json, validate=var.validate)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **library.metadata.json** | **object**| Library metadata | 
 **validate** | **character**| Should the payload be validated? Validation is always enabled for published datasets and defaults to false for unpublished datasets.  | [optional] 

### Return type

[**Workspace**](Workspace.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | Workspace not found |  -  |
| **500** | Rawls Internal Error |  -  |

# **ReindexAll**
> LibraryBulkIndexResponse ReindexAll()

deletes and rebuilds the entire index of published library datasets 

### Example
```R
library(openapi)


#deletes and rebuilds the entire index of published library datasets 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ReindexAll()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LibraryBulkIndexResponse**](LibraryBulkIndexResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Indexing Success |  -  |
| **204** | No published datasets exist to index |  -  |
| **500** | Indexing Error |  -  |

# **SearchSuggest**
> SearchSuggest(search.params=var.search.params)

search suggestions 

### Example
```R
library(openapi)

var.search.params <- SearchTermRef$new("searchString_example", TODO, ResearchPurpose$new(list("DS_example"), "NMDS_example", "NCTRL_example", "NAGR_example", "POA_example", "NCU_example"), TODO, 123, 123, "sortField_example", "sortDirection_example") # SearchTermRef | Search terms and pagination parameters

#search suggestions 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$SearchSuggest(search.params=var.search.params)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search.params** | [**SearchTermRef**](SearchTermRef.md)| Search terms and pagination parameters | [optional] 

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
| **200** | Search suggestions, with highlighting |  -  |

# **UnpublishLibraryWorkspace**
> Workspace UnpublishLibraryWorkspace(workspace.namespace, workspace.name)

unpublish the workspace in the Library 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#unpublish the workspace in the Library 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$UnpublishLibraryWorkspace(var.workspace.namespace, var.workspace.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 

### Return type

[**Workspace**](Workspace.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **403** | You must be the workspace owner and library curator to unpublish a workspace from the library |  -  |
| **500** | Rawls Internal Error |  -  |

# **UpdateDiscoverableGroups**
> Workspace UpdateDiscoverableGroups(workspace.namespace, workspace.name, discoverable.groups)

set the groups that can discover this library dataset 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.discoverable.groups <- list("property_example") # array[character] | Json array of group names, or empty array for no restrictions

#set the groups that can discover this library dataset 
api.instance <- LibraryApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$UpdateDiscoverableGroups(var.workspace.namespace, var.workspace.name, var.discoverable.groups)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **discoverable.groups** | list( **character** )| Json array of group names, or empty array for no restrictions | 

### Return type

[**Workspace**](Workspace.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The workspace, after assigning groups to be able to discover the dataset |  -  |
| **400** | Invalid input |  -  |
| **403** | Insufficient permissions to change catalog permissions (must be owner or have grant or catalog with access to the workspace) |  -  |
| **404** | Workspace, user or group not found |  -  |
| **500** | Error |  -  |

