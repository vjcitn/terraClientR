# ProfileApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Billing**](ProfileApi.md#Billing) | **GET** /api/profile/billing | List billing projects for a user
[**BillingAccounts**](ProfileApi.md#BillingAccounts) | **GET** /api/profile/billingAccounts | List billing accounts for a user
[**BillingProjectStatus**](ProfileApi.md#BillingProjectStatus) | **GET** /api/profile/billing/{projectName} | billing project status
[**GetAll**](ProfileApi.md#GetAll) | **GET** /register/profile | Returns a list of all keys and values stored in the user profile service for the currently logged-in user.
[**GetProxyGroup**](ProfileApi.md#GetProxyGroup) | **GET** /api/proxyGroup/{email} | Returns the proxy group email for the current user
[**GetTerraPreference**](ProfileApi.md#GetTerraPreference) | **GET** /api/profile/terra | Returns the current user&#39;s preference for Terra UI vs. Legacy view
[**GetUserStatus**](ProfileApi.md#GetUserStatus) | **GET** /register | Passes through to the Rawls userinfo API and returns its response
[**ImportStatus**](ProfileApi.md#ImportStatus) | **GET** /api/profile/importstatus | Check the user&#39;s ability to import a method config into a workspace
[**IsCurator**](ProfileApi.md#IsCurator) | **GET** /api/library/user/role/curator | Query to see if you&#39;re a library curator
[**Me**](ProfileApi.md#Me) | **GET** /me | Returns registration and activation status for the current user
[**SetFCPreference**](ProfileApi.md#SetFCPreference) | **DELETE** /api/profile/terra | Sets the current user&#39;s preference to use Legacy view, not Terra UI
[**SetProfile**](ProfileApi.md#SetProfile) | **POST** /register/profile | Sets a profile object in the user profile service for the currently logged-in user.
[**SetTerraPreference**](ProfileApi.md#SetTerraPreference) | **POST** /api/profile/terra | Sets the current user&#39;s preference to use Terra UI, not Legacy view
[**UpdateProfile**](ProfileApi.md#UpdateProfile) | **POST** /api/profile/preferences | Update the preferences for the user
[**UserInfo**](ProfileApi.md#UserInfo) | **GET** /register/userinfo | Passes through to Google&#39;s userinfo API and returns its response


# **Billing**
> array[BillingProjectMembership] Billing()

List billing projects for a user

### Example
```R
library(openapi)


#List billing projects for a user
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Billing()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[BillingProjectMembership]**](BillingProjectMembership.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | User Not Found |  -  |
| **500** | Internal Server Error |  -  |

# **BillingAccounts**
> array[BillingAccount] BillingAccounts()

List billing accounts for a user

### Example
```R
library(openapi)


#List billing accounts for a user
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$BillingAccounts()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[BillingAccount]**](BillingAccount.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **403** | Forbidden - redirect to Google to enable appropriate scopes |  -  |
| **500** | Internal Server Error |  -  |

# **BillingProjectStatus**
> BillingProjectStatus BillingProjectStatus(project.name)

billing project status

billing project status

### Example
```R
library(openapi)

var.project.name <- 'project.name_example' # character | Name of the billing project

#billing project status
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$BillingProjectStatus(var.project.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.name** | **character**| Name of the billing project | 

### Return type

[**BillingProjectStatus**](BillingProjectStatus.md)

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

# **GetAll**
> RegisterProfile GetAll()

Returns a list of all keys and values stored in the user profile service for the currently logged-in user.

### Example
```R
library(openapi)


#Returns a list of all keys and values stored in the user profile service for the currently logged-in user.
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetAll()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RegisterProfile**](RegisterProfile.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Internal server error |  -  |

# **GetProxyGroup**
> character GetProxyGroup(email)

Returns the proxy group email for the current user

### Example
```R
library(openapi)

var.email <- 'email_example' # character | User email whose proxy group to retrieve

#Returns the proxy group email for the current user
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetProxyGroup(var.email)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **character**| User email whose proxy group to retrieve | 

### Return type

**character**

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | user proxy group |  -  |
| **404** | user not found |  -  |
| **500** | Internal Error |  -  |

# **GetTerraPreference**
> TerraPreference GetTerraPreference()

Returns the current user's preference for Terra UI vs. Legacy view

### Example
```R
library(openapi)


#Returns the current user's preference for Terra UI vs. Legacy view
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetTerraPreference()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TerraPreference**](TerraPreference.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **500** | Internal Server Error |  -  |

# **GetUserStatus**
> RawlsMe GetUserStatus()

Passes through to the Rawls userinfo API and returns its response

### Example
```R
library(openapi)


#Passes through to the Rawls userinfo API and returns its response
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$GetUserStatus()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RawlsMe**](RawlsMe.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **404** | User Not Found. |  -  |
| **500** | Internal Server Error determining Rawls user status. |  -  |

# **ImportStatus**
> UserImportPermission ImportStatus()

Check the user's ability to import a method config into a workspace

### Example
```R
library(openapi)


#Check the user's ability to import a method config into a workspace
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$ImportStatus()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserImportPermission**](UserImportPermission.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **500** | Internal Server Error |  -  |

# **IsCurator**
> CuratorStatus IsCurator()

Query to see if you're a library curator

gets the curator status of a user

### Example
```R
library(openapi)


#Query to see if you're a library curator
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$IsCurator()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CuratorStatus**](CuratorStatus.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | are you a curator? |  -  |
| **500** | Rawls Internal Error |  -  |

# **Me**
> Me Me(user.details.only=FALSE)

Returns registration and activation status for the current user

### Example
```R
library(openapi)

var.user.details.only <- FALSE # character | when set to true does not check the various enabled statuses of the user

#Returns registration and activation status for the current user
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$Me(user.details.only=var.user.details.only)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.details.only** | **character**| when set to true does not check the various enabled statuses of the user | [optional] [default to FALSE]

### Return type

[**Me**](Me.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Unauthorized. User is not allowed in FireCloud or has not signed in. |  -  |
| **403** | Forbidden. User is registered in FireCloud, but not activated. |  -  |
| **404** | Not Found. User is authenticated to Google but not a FireCloud member. |  -  |
| **500** | Internal Server Error determining user status. |  -  |
| **503** | Service Unavailable. Could not reach underlying services to determine user status. |  -  |

# **SetFCPreference**
> TerraPreference SetFCPreference()

Sets the current user's preference to use Legacy view, not Terra UI

### Example
```R
library(openapi)


#Sets the current user's preference to use Legacy view, not Terra UI
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$SetFCPreference()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TerraPreference**](TerraPreference.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **500** | Internal Server Error |  -  |

# **SetProfile**
> SetProfile(profile=var.profile)

Sets a profile object in the user profile service for the currently logged-in user.

### Example
```R
library(openapi)

var.profile <- Profile$new("firstName_example", "lastName_example", "title_example", "institute_example", "institutionalProgram_example", "programLocationCity_example", "programLocationState_example", "programLocationCountry_example", "pi_example", "nonProfitStatus_example", "contactEmail_example") # Profile | A complete profile

#Sets a profile object in the user profile service for the currently logged-in user.
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$SetProfile(profile=var.profile)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profile** | [**Profile**](Profile.md)| A complete profile | [optional] 

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
| **200** | OK |  -  |
| **400** | Bad request |  -  |
| **500** | Internal server error |  -  |

# **SetTerraPreference**
> TerraPreference SetTerraPreference()

Sets the current user's preference to use Terra UI, not Legacy view

### Example
```R
library(openapi)


#Sets the current user's preference to use Terra UI, not Legacy view
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
result <- api.instance$SetTerraPreference()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TerraPreference**](TerraPreference.md)

### Authorization

[googleoauth](../README.md#googleoauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **500** | Internal Server Error |  -  |

# **UpdateProfile**
> UpdateProfile(preferences)

Update the preferences for the user

### Example
```R
library(openapi)

var.preferences <- TODO # map(character) | The preferences to set as a Map[String, String]

#Update the preferences for the user
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$UpdateProfile(var.preferences)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preferences** | named list( [**map(character)**](character.md) )| The preferences to set as a Map[String, String] | 

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
| **204** | Success (No Content) |  -  |
| **500** | Internal Server Error |  -  |

# **UserInfo**
> UserInfo()

Passes through to Google's userinfo API and returns its response

See https://developers.google.com/+/web/api/rest/openidconnect/getOpenIdConnect for response info. Userinfo endpoint lives at https://www.googleapis.com/oauth2/v3/userinfo. 

### Example
```R
library(openapi)


#Passes through to Google's userinfo API and returns its response
api.instance <- ProfileApi$new()
# Configure OAuth2 access token for authorization: googleoauth
api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
api.instance$UserInfo()
```

### Parameters
This endpoint does not need any parameter.

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
| **200** | OK |  -  |

