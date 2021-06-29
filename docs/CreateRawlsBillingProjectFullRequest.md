# openapi::CreateRawlsBillingProjectFullRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectName** | **character** | the name of the project to create | 
**billingAccount** | **character** | the id of the billing account to use, must start with &#39;billingAccounts/&#39; | 
**highSecurityNetwork** | **character** | Optional, false if not specified. If true, spin up all compute in a VPC network. | [optional] 
**enableFlowLogs** | **character** | Requires highSecurityNetwork &#x3D; true. Optional, false if not specified. If true, enable flow logs within the high security network. | [optional] 
**privateIpGoogleAccess** | **character** | Requires highSecurityNetwork &#x3D; true. Optional, false if not specified. If true, it configures the VPC network to only allow access to GCP APIs that are protected by the project&#39;s service perimeter and routes all allowed API traffic through a narrow IP range. | [optional] 
**servicePerimeter** | **character** | The fully qualified name of the GCP service perimeter to put this project into in the form accessPolicies/[POLICY NUMBER]/servicePerimeters/[NAME]. Caller must have the add_project action for this service perimeter in Sam. | [optional] 


