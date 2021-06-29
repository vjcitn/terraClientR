# openapi::SubmissionRequest

If the referenced method configuration takes no root entity, do not define `entityType`, `entityName` and `expression`.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**methodConfigurationNamespace** | **character** | Namespace of the method configuration to execute. | 
**methodConfigurationName** | **character** | Name of the method configuration to execute. | 
**entityType** | **character** | Type of root entity for expression. Optional if the method configuration has no root entity. | [optional] 
**entityName** | **character** | Name of root entity for expression. Optional if the method configuration has no root entity. | [optional] 
**expression** | **character** | Expression that resolves to one or more entities matching the entity type in the method configuration. Optional if the method configuration has no root entity. | [optional] 
**useCallCache** | **character** | Whether or not to read from cache for this submission. | 
**deleteIntermediateOutputFiles** | **character** | Whether or not to delete intermediate output files when the workflow completes. See Cromwell docs for more information. | [optional] 
**useReferenceDisks** | **character** | Whether or not to use pre-built disks for common genome references | [optional] 
**workflowFailureMode** | **character** | What happens after a task fails. Choose from ContinueWhilePossible and NoNewCalls. Defaults to NoNewCalls if not specified. See Cromwell docs for more information. | [optional] [default to &#39;NoNewCalls&#39;]


