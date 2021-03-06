# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test Workflow")

model.instance <- Workflow$new()

test_that("workflowId", {
  # tests for the property `workflowId` (character)
  # Workflow unique identifier

  # uncomment below to test the property 
  #expect_equal(model.instance$`workflowId`, "EXPECTED_RESULT")
})

test_that("status", {
  # tests for the property `status` (WorkflowStatus)

  # uncomment below to test the property 
  #expect_equal(model.instance$`status`, "EXPECTED_RESULT")
})

test_that("statusLastChangedDate", {
  # tests for the property `statusLastChangedDate` (character)
  # Status last-changed date

  # uncomment below to test the property 
  #expect_equal(model.instance$`statusLastChangedDate`, "EXPECTED_RESULT")
})

test_that("workflowEntity", {
  # tests for the property `workflowEntity` (AttributeEntityReference)

  # uncomment below to test the property 
  #expect_equal(model.instance$`workflowEntity`, "EXPECTED_RESULT")
})

test_that("inputResolutions", {
  # tests for the property `inputResolutions` (array[SubmissionValidationValue])
  # The evaluation of each input

  # uncomment below to test the property 
  #expect_equal(model.instance$`inputResolutions`, "EXPECTED_RESULT")
})

test_that("messages", {
  # tests for the property `messages` (array[character])
  # List of messages about this workflow

  # uncomment below to test the property 
  #expect_equal(model.instance$`messages`, "EXPECTED_RESULT")
})

test_that("cost", {
  # tests for the property `cost` (numeric)
  # The run cost of this workflow

  # uncomment below to test the property 
  #expect_equal(model.instance$`cost`, "EXPECTED_RESULT")
})

