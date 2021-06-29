# openapi::CallMetadata

Stuff you need to know about calls

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inputs** | **map(object)** | map from input names onto resolved values | [optional] 
**executionStatus** | **character** | status of call | [optional] 
**executionEvents** | [**array[ExecutionEvent]**](ExecutionEvent.md) |  | [optional] 
**backendStatus** | **character** | status of the backend | [optional] 
**backendLogs** | **map(character)** | map of log files from backend | [optional] 
**outputs** | **map(character)** | map from output names to local files | [optional] 
**start** | **character** | starting time of call | [optional] 
**end** | **character** | ending time of call | [optional] 
**jobId** | **character** | unique ID of job | [optional] 
**returnCode** | **integer** | result code | [optional] 
**backend** | **character** | type of backend executing the call | [optional] 
**stdout** | **character** | location of stdout | [optional] 
**stderr** | **character** | location of stderr | [optional] 
**shardIndex** | **integer** | call index within a scatter block, as reported by execution service | [optional] 


