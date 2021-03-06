# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test SubmissionsApi")

api.instance <- SubmissionsApi$new()

test_that("AbortSubmission", {
  # tests for AbortSubmission
  # base path: http://localhost
  # abort a submission 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param submission.id character Submission ID
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CountSubmissions", {
  # tests for CountSubmissions
  # base path: http://localhost
  # Count submissions by status
  # Counts all submissions run in the workspace, grouped by status. Returns a map of status:count.
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [SubmissionsCountResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CreateSubmission", {
  # tests for CreateSubmission
  # base path: http://localhost
  # Create a submission. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param submission SubmissionRequest Post Submission
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ListSubmissions", {
  # tests for ListSubmissions
  # base path: http://localhost
  # List submissions. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("MonitorSubmission", {
  # tests for MonitorSubmission
  # base path: http://localhost
  # Monitor submission status 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param submission.id character Submission ID
  # @return [Submission]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ValidateSubmission", {
  # tests for ValidateSubmission
  # base path: http://localhost
  # Validate submission
  # Validate expression syntax for a submission
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param submission SubmissionRequest Description of a submission.
  # @return [SubmissionValidationReport]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("WorkflowCostInSubmission", {
  # tests for WorkflowCostInSubmission
  # base path: http://localhost
  # Retrieve workflow cost, if available. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param submission.id character Submission ID
  # @param workflow.id character Workflow ID
  # @return [WorkflowCost]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("WorkflowMetadata", {
  # tests for WorkflowMetadata
  # base path: http://localhost
  # Get call-level metadata for workflow
  # Get call-level metadata for workflow
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param submission.id character Submission ID
  # @param workflow.id character Workflow ID
  # @param include.key array[character] When specified, return only these keys in the response. Matches any key in the response, including within nested blocks. May not be used with excludeKey.  (optional)
  # @param exclude.key array[character] When specified, omit these keys from the response. Matches any key in the response, including within nested blocks. May not be used with includeKey.  (optional)
  # @param expand.sub.workflows character When true, metadata for sub workflows will be fetched and inserted automatically in the metadata response.  (optional)
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("WorkflowOutputsInSubmission", {
  # tests for WorkflowOutputsInSubmission
  # base path: http://localhost
  # Get workflow outputs. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param submission.id character Submission ID
  # @param workflow.id character Workflow ID
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("WorkflowQueueStatus", {
  # tests for WorkflowQueueStatus
  # base path: http://localhost
  # workflow queue status
  # List workflow counts by queueing state
  # @return [WorkflowQueueStatusResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

