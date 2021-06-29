# openapi::Workflow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workflowId** | **character** | Workflow unique identifier | [optional] 
**status** | [**WorkflowStatus**](WorkflowStatus.md) |  | [optional] 
**statusLastChangedDate** | **character** | Status last-changed date | [optional] 
**workflowEntity** | [**AttributeEntityReference**](AttributeEntityReference.md) |  | [optional] 
**inputResolutions** | [**array[SubmissionValidationValue]**](SubmissionValidationValue.md) | The evaluation of each input | [optional] 
**messages** | **array[character]** | List of messages about this workflow | [optional] 
**cost** | **numeric** | The run cost of this workflow | [optional] 


