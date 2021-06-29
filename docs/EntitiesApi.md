# EntitiesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BrowserDownloadEntitiesTSV**](EntitiesApi.md#BrowserDownloadEntitiesTSV) | **POST** /cookie-authed/workspaces/{workspaceNamespace}/{workspaceName}/entities/{entityType}/tsv | TSV file containing workspace entities of the specified type 
[**BrowserDownloadEntitiesTSVGet**](EntitiesApi.md#BrowserDownloadEntitiesTSVGet) | **GET** /cookie-authed/workspaces/{workspaceNamespace}/{workspaceName}/entities/{entityType}/tsv | TSV file containing workspace entities of the specified type 
[**CopyEntities**](EntitiesApi.md#CopyEntities) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities/copy | Copy entities from one workspace to another 
[**DeleteEntities**](EntitiesApi.md#DeleteEntities) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities/delete | Bulk delete entities from a workspace
[**DownloadEntitiesTSV**](EntitiesApi.md#DownloadEntitiesTSV) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities/{entityType}/tsv | TSV file containing workspace entities of the specified type 
[**EntityQuery**](EntitiesApi.md#EntityQuery) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/entityQuery/{entityType} | Paginated query for entities in a workspace
[**EvaluateEntityExpression**](EntitiesApi.md#EvaluateEntityExpression) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities/{entityType}/{entityName}/evaluate | Evaluate entity expression
[**FlexibleImportEntities**](EntitiesApi.md#FlexibleImportEntities) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/flexibleImportEntities | Import entities from a tsv file
[**GetEntities**](EntitiesApi.md#GetEntities) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities/{entityType} | List of entities in a workspace 
[**GetEntitiesWithType**](EntitiesApi.md#GetEntitiesWithType) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities_with_type | List of entities in a workspace with type and attribute information 
[**GetEntity**](EntitiesApi.md#GetEntity) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities/{entityType}/{entityName} | Get entity in a workspace
[**GetEntityTypes**](EntitiesApi.md#GetEntityTypes) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities | List of entity types in a workspace 
[**ImportBagit**](EntitiesApi.md#ImportBagit) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/importBagit | Import entity TSVs from a zipped [BagIt](https://tools.ietf.org/html/draft-kunze-bagit-14) directory, whose payload contains two files - participants.tsv and samples.tsv
[**ImportEntities**](EntitiesApi.md#ImportEntities) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/importEntities | Import entities from a tsv file
[**ImportPFB**](EntitiesApi.md#ImportPFB) | **POST** /api/workspaces/{workspaceNamespace}/{workspaceName}/importPFB | Import PFB data from an [Avro](https://avro.apache.org/) file
[**ImportPFBStatus**](EntitiesApi.md#ImportPFBStatus) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/importPFB/{jobId} | Report status on a PFB import job
[**ListImportPFBJobs**](EntitiesApi.md#ListImportPFBJobs) | **GET** /api/workspaces/{workspaceNamespace}/{workspaceName}/importPFB | List PFB import jobs in this workspace
[**UpdateEntity**](EntitiesApi.md#UpdateEntity) | **PATCH** /api/workspaces/{workspaceNamespace}/{workspaceName}/entities/{entityType}/{entityName} | Update entity in a workspace


# **BrowserDownloadEntitiesTSV**
> data.frame BrowserDownloadEntitiesTSV(workspace.namespace, workspace.name, entity.type, f.ctoken, attribute.names=var.attribute.names, model=var.model)

TSV file containing workspace entities of the specified type 

swagger-ui seems to not handle file downloads, so this endpoint won't function through the ui. It is here for documentation purposes only. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type
var.f.ctoken <- 'f.ctoken_example' # character | valid access token to use for authentication
var.attribute.names <- 'attribute.names_example' # character | comma separated list of ordered attribute names to be in downloaded tsv
var.model <- 'model_example' # character | flexible or firecloud (firecloud model will be used by default)

#TSV file containing workspace entities of the specified type 
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$BrowserDownloadEntitiesTSV(var.workspace.namespace, var.workspace.name, var.entity.type, var.f.ctoken, attribute.names=var.attribute.names, model=var.model)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 
 **f.ctoken** | **character**| valid access token to use for authentication | 
 **attribute.names** | **character**| comma separated list of ordered attribute names to be in downloaded tsv | [optional] 
 **model** | **character**| flexible or firecloud (firecloud model will be used by default) | [optional] 

### Return type

**data.frame**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace entities of specified type in TSV format |  -  |
| **404** | Workspace or entity type does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **BrowserDownloadEntitiesTSVGet**
> data.frame BrowserDownloadEntitiesTSVGet(workspace.namespace, workspace.name, entity.type, attribute.names=var.attribute.names, model=var.model)

TSV file containing workspace entities of the specified type 

swagger-ui seems to not handle file downloads, so this endpoint won't function through the ui. It is here for documentation purposes only. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type
var.attribute.names <- 'attribute.names_example' # character | comma separated list of ordered attribute names to be in downloaded tsv
var.model <- 'model_example' # character | flexible or firecloud (firecloud model will be used by default)

#TSV file containing workspace entities of the specified type 
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$BrowserDownloadEntitiesTSVGet(var.workspace.namespace, var.workspace.name, var.entity.type, attribute.names=var.attribute.names, model=var.model)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 
 **attribute.names** | **character**| comma separated list of ordered attribute names to be in downloaded tsv | [optional] 
 **model** | **character**| flexible or firecloud (firecloud model will be used by default) | [optional] 

### Return type

**data.frame**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace entities of specified type in TSV format |  -  |
| **404** | Workspace or entity type does not exist |  -  |
| **414** | URI length exceeds the configured limit of 2048 characters. Please use the POST endpoint when it&#39;s necessary to supply a large number of attribute names.  |  -  |
| **500** | Internal Server Error |  -  |

# **CopyEntities**
> EntityCopyResponse CopyEntities(workspace.namespace, workspace.name, body, link.existing.entities=FALSE)

Copy entities from one workspace to another 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Destination Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Destination Workspace Name
var.body <- CopyEntity$new(Namespace$new("namespace_example", "name_example"), "entityType_example", list("entityNames_example")) # CopyEntity | Entities to Copy
var.link.existing.entities <- FALSE # character | true to link new entities to existing entities, false to fail instead of link

#Copy entities from one workspace to another 
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$CopyEntities(var.workspace.namespace, var.workspace.name, var.body, link.existing.entities=var.link.existing.entities)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Destination Workspace Namespace | 
 **workspace.name** | **character**| Destination Workspace Name | 
 **body** | [**CopyEntity**](CopyEntity.md)| Entities to Copy | 
 **link.existing.entities** | **character**| true to link new entities to existing entities, false to fail instead of link | [optional] [default to FALSE]

### Return type

[**EntityCopyResponse**](EntityCopyResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful Request |  -  |
| **404** | Source Workspace or source entities does not exist |  -  |
| **409** | There are conflicts in your copy operation. Retry with the paramater linkExistingEntities&#x3D;true to link all soft conflicts to the entities that already exist in your workspace. |  -  |
| **422** | Destination workspace must match source&#39;s authorization domain, if the source has one |  -  |
| **500** | Internal Error |  -  |

# **DeleteEntities**
> DeleteEntities(workspace.namespace, workspace.name, body)

Bulk delete entities from a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.body <- list(EntityID$new("entityType_example", "entityName_example")) # array[EntityID] | Entities to delete

#Bulk delete entities from a workspace
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$DeleteEntities(var.workspace.namespace, var.workspace.name, var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **body** | list( [**EntityID**](EntityID.md) )| Entities to delete | 

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
| **204** | Successful Request |  -  |
| **400** | Not all Entities exist |  -  |
| **409** | Cannot create dangling references when deleting Entities - must specify whole set |  -  |
| **500** | Internal Server Error |  -  |

# **DownloadEntitiesTSV**
> data.frame DownloadEntitiesTSV(workspace.namespace, workspace.name, entity.type, attribute.names=var.attribute.names, model=var.model)

TSV file containing workspace entities of the specified type 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type
var.attribute.names <- 'attribute.names_example' # character | comma separated list of ordered attribute names to be in downloaded tsv
var.model <- 'model_example' # character | firecloud (default) or flexible

#TSV file containing workspace entities of the specified type 
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$DownloadEntitiesTSV(var.workspace.namespace, var.workspace.name, var.entity.type, attribute.names=var.attribute.names, model=var.model)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 
 **attribute.names** | **character**| comma separated list of ordered attribute names to be in downloaded tsv | [optional] 
 **model** | **character**| firecloud (default) or flexible | [optional] 

### Return type

**data.frame**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Workspace entities of specified type in TSV format |  -  |
| **404** | Workspace or entity type does not exist |  -  |
| **414** | URI length exceeds the configured limit of 2048 characters. Please use the POST endpoint when it&#39;s necessary to supply a large number of attribute names.  |  -  |
| **500** | Internal Server Error |  -  |

# **EntityQuery**
> EntityQueryResponse EntityQuery(workspace.namespace, workspace.name, entity.type, page=1, page.size=10, sort.field='name', sort.direction='asc', filter.terms=var.filter.terms)

Paginated query for entities in a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type
var.page <- 1 # integer | Page number, 1-indexed (default 1)
var.page.size <- 10 # integer | Page size (default 10)
var.sort.field <- 'name' # character | Sort field (default \"name\")
var.sort.direction <- 'asc' # character | Sort direction (asc or desc, default asc)
var.filter.terms <- 'filter.terms_example' # character | Filter terms

#Paginated query for entities in a workspace
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$EntityQuery(var.workspace.namespace, var.workspace.name, var.entity.type, page=var.page, page.size=var.page.size, sort.field=var.sort.field, sort.direction=var.sort.direction, filter.terms=var.filter.terms)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 
 **page** | **integer**| Page number, 1-indexed (default 1) | [optional] [default to 1]
 **page.size** | **integer**| Page size (default 10) | [optional] [default to 10]
 **sort.field** | **character**| Sort field (default \&quot;name\&quot;) | [optional] [default to &#39;name&#39;]
 **sort.direction** | Enum [asc, desc] | Sort direction (asc or desc, default asc) | [optional] [default to &#39;asc&#39;]
 **filter.terms** | **character**| Filter terms | [optional] 

### Return type

[**EntityQueryResponse**](EntityQueryResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of entities in workspace |  -  |
| **404** | Workspace or entity type does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **EvaluateEntityExpression**
> EvaluateEntityExpression(workspace.namespace, workspace.name, entity.type, entity.name, expression)

Evaluate entity expression

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type
var.entity.name <- 'entity.name_example' # character | Entity Name
var.expression <- 'expression_example' # character | Expression

#Evaluate entity expression
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$EvaluateEntityExpression(var.workspace.namespace, var.workspace.name, var.entity.type, var.entity.name, var.expression)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 
 **entity.name** | **character**| Entity Name | 
 **expression** | **character**| Expression | 

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
| **200** | Success |  -  |
| **400** | Invalid entity expression |  -  |
| **404** | Workspace or Entity does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **FlexibleImportEntities**
> FlexibleImportEntities(workspace.namespace, workspace.name, entities)

Import entities from a tsv file

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Destination Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Destination Workspace Name
var.entities <- File.new('/path/to/file') # data.frame | A valid TSV import file

#Import entities from a tsv file
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$FlexibleImportEntities(var.workspace.namespace, var.workspace.name, var.entities)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Destination Workspace Namespace | 
 **workspace.name** | **character**| Destination Workspace Name | 
 **entities** | **data.frame**| A valid TSV import file | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Bad Request |  -  |
| **404** | Source Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **GetEntities**
> array[Entity] GetEntities(workspace.namespace, workspace.name, entity.type)

List of entities in a workspace 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type

#List of entities in a workspace 
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetEntities(var.workspace.namespace, var.workspace.name, var.entity.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 

### Return type

[**array[Entity]**](Entity.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of entities in workspace |  -  |
| **404** | Workspace or entity type does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **GetEntitiesWithType**
> GetEntitiesWithType(workspace.namespace, workspace.name)

List of entities in a workspace with type and attribute information 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#List of entities in a workspace with type and attribute information 
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetEntitiesWithType(var.workspace.namespace, var.workspace.name)
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
| **200** | List of entities |  -  |
| **404** | Workspace or entities not found. |  -  |
| **500** | Internal Server Error |  -  |

# **GetEntity**
> GetEntity(workspace.namespace, workspace.name, entity.type, entity.name)

Get entity in a workspace

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type
var.entity.name <- 'entity.name_example' # character | Entity Name

#Get entity in a workspace
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetEntity(var.workspace.namespace, var.workspace.name, var.entity.type, var.entity.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 
 **entity.name** | **character**| Entity Name | 

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
| **200** | Success |  -  |
| **404** | Workspace or Entity does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **GetEntityTypes**
> GetEntityTypes(workspace.namespace, workspace.name)

List of entity types in a workspace 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name

#List of entity types in a workspace 
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$GetEntityTypes(var.workspace.namespace, var.workspace.name)
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
| **200** | List of entity types in workspace |  -  |
| **404** | Workspace does not exist |  -  |
| **500** | Internal Server Error |  -  |

# **ImportBagit**
> ImportBagit(workspace.namespace, workspace.name, bagit.import.request)

Import entity TSVs from a zipped [BagIt](https://tools.ietf.org/html/draft-kunze-bagit-14) directory, whose payload contains two files - participants.tsv and samples.tsv

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.bagit.import.request <- BagitRequest$new("bagitURL_example", "TSV") # BagitRequest | JSON object containing bagit URL

#Import entity TSVs from a zipped [BagIt](https://tools.ietf.org/html/draft-kunze-bagit-14) directory, whose payload contains two files - participants.tsv and samples.tsv
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ImportBagit(var.workspace.namespace, var.workspace.name, var.bagit.import.request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **bagit.import.request** | [**BagitRequest**](BagitRequest.md)| JSON object containing bagit URL | 

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
| **200** | Successful Request |  -  |
| **400** | Bad Request |  -  |
| **404** | Source Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **ImportEntities**
> ImportEntities(workspace.namespace, workspace.name, entities)

Import entities from a tsv file

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Destination Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Destination Workspace Name
var.entities <- File.new('/path/to/file') # data.frame | A valid TSV import file

#Import entities from a tsv file
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$ImportEntities(var.workspace.namespace, var.workspace.name, var.entities)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Destination Workspace Namespace | 
 **workspace.name** | **character**| Destination Workspace Name | 
 **entities** | **data.frame**| A valid TSV import file | 

### Return type

void (empty response body)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Bad Request |  -  |
| **404** | Source Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **ImportPFB**
> PFBResponse ImportPFB(workspace.namespace, workspace.name, pfb.import.request)

Import PFB data from an [Avro](https://avro.apache.org/) file

This API will return a jobID representing the import operation. The import itself will continue asynchronously in the background. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.pfb.import.request <- PFBRequest$new("url_example") # PFBRequest | JSON object containing PFB URL

#Import PFB data from an [Avro](https://avro.apache.org/) file
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ImportPFB(var.workspace.namespace, var.workspace.name, var.pfb.import.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **pfb.import.request** | [**PFBRequest**](PFBRequest.md)| JSON object containing PFB URL | 

### Return type

[**PFBResponse**](PFBResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Successful Request |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized access to Workspace |  -  |
| **403** | Forbidden access to Workspace |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **ImportPFBStatus**
> PFBStatusResponse ImportPFBStatus(workspace.namespace, workspace.name, job.id)

Report status on a PFB import job

This API will return status of an import jobID. The jobID was returned from a previous import request. 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.job.id <- 'job.id_example' # character | job ID of the import to check

#Report status on a PFB import job
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ImportPFBStatus(var.workspace.namespace, var.workspace.name, var.job.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **job.id** | **character**| job ID of the import to check | 

### Return type

[**PFBStatusResponse**](PFBStatusResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **404** | workspace or job ID not found |  -  |
| **500** | Internal Error |  -  |

# **ListImportPFBJobs**
> array[PFBStatusResponse] ListImportPFBJobs(workspace.namespace, workspace.name, running.only=FALSE)

List PFB import jobs in this workspace

Lists all imports for this workspace, optionally filtered to only those imports currently in progress 

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.running.only <- FALSE # character | When true, filters to only those imports currently in progress

#List PFB import jobs in this workspace
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ListImportPFBJobs(var.workspace.namespace, var.workspace.name, running.only=var.running.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **running.only** | **character**| When true, filters to only those imports currently in progress | [optional] [default to FALSE]

### Return type

[**array[PFBStatusResponse]**](PFBStatusResponse.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Request |  -  |
| **400** | Bad Request |  -  |
| **404** | Workspace not found |  -  |
| **500** | Internal Error |  -  |

# **UpdateEntity**
> Entity UpdateEntity(workspace.namespace, workspace.name, entity.type, entity.name, attribute.update.json=var.attribute.update.json)

Update entity in a workspace

Update an entity

### Example
```R
library(openapi)

var.workspace.namespace <- 'workspace.namespace_example' # character | Workspace Namespace
var.workspace.name <- 'workspace.name_example' # character | Workspace Name
var.entity.type <- 'entity.type_example' # character | Entity Type
var.entity.name <- 'entity.name_example' # character | Entity Name
var.attribute.update.json <- list(AttributeUpdateOperation$new("AddUpdateAttribute")) # array[AttributeUpdateOperation] | Update operations for attributes

#Update entity in a workspace
api.instance <- EntitiesApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$UpdateEntity(var.workspace.namespace, var.workspace.name, var.entity.type, var.entity.name, attribute.update.json=var.attribute.update.json)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace.namespace** | **character**| Workspace Namespace | 
 **workspace.name** | **character**| Workspace Name | 
 **entity.type** | **character**| Entity Type | 
 **entity.name** | **character**| Entity Name | 
 **attribute.update.json** | list( [**AttributeUpdateOperation**](AttributeUpdateOperation.md) )| Update operations for attributes | [optional] 

### Return type

[**Entity**](Entity.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Entity updated |  -  |
| **400** | Attribute does not exist |  -  |
| **403** | User does not have permission to update attributes in the namespace |  -  |
| **404** | Workspace or Entity not found |  -  |
| **500** | Rawls Internal Error |  -  |

