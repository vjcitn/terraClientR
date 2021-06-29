# openapi::WorkflowQueryParameter

Workflow query parameters

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start** | **character** | Returns only workflows with an equal or later start datetime.  Can be specified at most once. If both start and end date are specified, start date must be before or equal to end date.  | [optional] 
**end** | **character** | Returns only workflows with an equal or earlier end datetime.  Can be specified at most once. If both start and end date are specified, start date must be before or equal to end date.  | [optional] 
**status** | **character** | Returns only workflows with the specified status.  If specified multiple times, returns workflows in any of the specified statuses.  | [optional] 
**name** | **character** | Returns only workflows with the specified name.  If specified multiple times, returns workflows with any of the specified names.  | [optional] 
**id** | **character** | Returns only workflows with the specified workflow id.  If specified multiple times, returns workflows with any of the specified workflow ids.  | [optional] 


