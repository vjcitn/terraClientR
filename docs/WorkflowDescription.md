# openapi::WorkflowDescription


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid** | **character** | Whether the workflow and inputs as submitted passed validation | 
**errors** | **array[character]** | The set of validation failure messages | 
**name** | **character** | For a source file with one workflow and zero or more tasks, the name of the workflow. For a single task, the name of the task. For a source file with multiple tasks but no workflows, the empty string. | 
**inputs** | [**array[ToolInputParameter]**](ToolInputParameter.md) | A list of inputs for this tool | 
**outputs** | [**array[ToolOutputParameter]**](ToolOutputParameter.md) | A list of outputs for this tool | 
**submittedDescriptorType** | [**DescriptorTypeAndVersion**](DescriptorTypeAndVersion.md) |  | 


