# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test WorkflowQueueStatusResponse")

model.instance <- WorkflowQueueStatusResponse$new()

test_that("estimatedQueueTimeMS", {
  # tests for the property `estimatedQueueTimeMS` (integer)
  # estimated milliseconds until the current queue is submitted

  # uncomment below to test the property 
  #expect_equal(model.instance$`estimatedQueueTimeMS`, "EXPECTED_RESULT")
})

test_that("workflowsBeforeNextUserWorkflow", {
  # tests for the property `workflowsBeforeNextUserWorkflow` (integer)
  # the number of workflows in the queue ahead of the user&#39;s first workflow

  # uncomment below to test the property 
  #expect_equal(model.instance$`workflowsBeforeNextUserWorkflow`, "EXPECTED_RESULT")
})

test_that("workflowCountsByStatus", {
  # tests for the property `workflowCountsByStatus` (map(integer))
  # Map[String,Int]

  # uncomment below to test the property 
  #expect_equal(model.instance$`workflowCountsByStatus`, "EXPECTED_RESULT")
})

