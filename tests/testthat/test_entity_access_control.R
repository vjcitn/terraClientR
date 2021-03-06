# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test EntityAccessControl")

model.instance <- EntityAccessControl$new()

test_that("method", {
  # tests for the property `method` (MethodShort)

  # uncomment below to test the property 
  #expect_equal(model.instance$`method`, "EXPECTED_RESULT")
})

test_that("referencedBy", {
  # tests for the property `referencedBy` (MethodConfigurationName)

  # uncomment below to test the property 
  #expect_equal(model.instance$`referencedBy`, "EXPECTED_RESULT")
})

test_that("acls", {
  # tests for the property `acls` (array[FireCloudPermission])
  # method repo ACLs for the referenced method

  # uncomment below to test the property 
  #expect_equal(model.instance$`acls`, "EXPECTED_RESULT")
})

test_that("message", {
  # tests for the property `message` (character)
  # error message generated when retrieving acls for this method

  # uncomment below to test the property 
  #expect_equal(model.instance$`message`, "EXPECTED_RESULT")
})

