# openapi::WorkflowQueueStatusResponse

Information about the status of workflows and the workflow queue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**estimatedQueueTimeMS** | **integer** | estimated milliseconds until the current queue is submitted | 
**workflowsBeforeNextUserWorkflow** | **integer** | the number of workflows in the queue ahead of the user&#39;s first workflow | 
**workflowCountsByStatus** | **map(integer)** | Map[String,Int] | 


