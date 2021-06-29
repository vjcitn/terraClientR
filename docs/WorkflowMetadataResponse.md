# openapi::WorkflowMetadataResponse

Workflow and call level metadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | The identifier of the workflow | 
**status** | **character** | The status of the workflow | 
**submission** | **character** | Submission datetime of the workflow in ISO8601 format with milliseconds | 
**start** | **character** | Start datetime of the workflow in ISO8601 format with milliseconds | [optional] 
**end** | **character** | End datetime of the workflow in ISO8601 format with milliseconds | [optional] 
**inputs** | **map(object)** | Map of input keys to input values | [optional] 
**outputs** | **map(object)** | Map of output keys to output values | [optional] 
**calls** | [**CallMetadata**](CallMetadata.md) |  | [optional] 
**failures** | [**FailureMessage**](FailureMessage.md) |  | [optional] 


