# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test WorkspaceResponse")

model.instance <- WorkspaceResponse$new()

test_that("accessLevel", {
  # tests for the property `accessLevel` (WorkspaceAccessLevel)

  # uncomment below to test the property 
  #expect_equal(model.instance$`accessLevel`, "EXPECTED_RESULT")
})

test_that("bucketOptions", {
  # tests for the property `bucketOptions` (WorkspaceBucketOptions)

  # uncomment below to test the property 
  #expect_equal(model.instance$`bucketOptions`, "EXPECTED_RESULT")
})

test_that("canCompute", {
  # tests for the property `canCompute` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`canCompute`, "EXPECTED_RESULT")
})

test_that("canShare", {
  # tests for the property `canShare` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`canShare`, "EXPECTED_RESULT")
})

test_that("catalog", {
  # tests for the property `catalog` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`catalog`, "EXPECTED_RESULT")
})

test_that("owners", {
  # tests for the property `owners` (array[character])
  # Owners of this workspace. This API only lists owners; use the get-workspace-ACL API to get the full list of all users at all permission levels. 

  # uncomment below to test the property 
  #expect_equal(model.instance$`owners`, "EXPECTED_RESULT")
})

test_that("workspace", {
  # tests for the property `workspace` (WorkspaceDetails)

  # uncomment below to test the property 
  #expect_equal(model.instance$`workspace`, "EXPECTED_RESULT")
})

test_that("workspaceSubmissionStats", {
  # tests for the property `workspaceSubmissionStats` (WorkspaceSubmissionStats)

  # uncomment below to test the property 
  #expect_equal(model.instance$`workspaceSubmissionStats`, "EXPECTED_RESULT")
})

