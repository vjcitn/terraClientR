# openapi::Submission


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**submissionId** | **character** | SubmissionRequest unique identifier | [optional] 
**submissionDate** | **character** | SubmissionRequest date | [optional] 
**submitter** | **character** | user that created the submission | [optional] 
**methodConfigurationNamespace** | **character** | Method configuration namespace | [optional] 
**methodConfigurationName** | **character** | Method configuration name | [optional] 
**submissionEntity** | [**AttributeEntityReference**](AttributeEntityReference.md) |  | [optional] 
**workflows** | [**array[Workflow]**](Workflow.md) | Status of Workflow(s) | [optional] 
**status** | [**SubmissionStatus**](SubmissionStatus.md) |  | [optional] 
**cost** | **numeric** | The compute cost of this submission | [optional] 
**useCallCache** | **character** | Whether or not to read from cache for this submission | [optional] 
**deleteIntermediateOutputFiles** | **character** | Whether or not to delete intermediate output files when the workflow completes. See Cromwell docs for more information. | [optional] 
**workflowFailureMode** | **character** | What happens after a task fails. Choose from ContinueWhilePossible and NoNewCalls. Defaults to NoNewCalls if not specified. See Cromwell docs for more information. | [optional] [default to &#39;NoNewCalls&#39;]


