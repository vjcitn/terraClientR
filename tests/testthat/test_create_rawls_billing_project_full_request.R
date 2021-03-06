# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test CreateRawlsBillingProjectFullRequest")

model.instance <- CreateRawlsBillingProjectFullRequest$new()

test_that("projectName", {
  # tests for the property `projectName` (character)
  # the name of the project to create

  # uncomment below to test the property 
  #expect_equal(model.instance$`projectName`, "EXPECTED_RESULT")
})

test_that("billingAccount", {
  # tests for the property `billingAccount` (character)
  # the id of the billing account to use, must start with &#39;billingAccounts/&#39;

  # uncomment below to test the property 
  #expect_equal(model.instance$`billingAccount`, "EXPECTED_RESULT")
})

test_that("highSecurityNetwork", {
  # tests for the property `highSecurityNetwork` (character)
  # Optional, false if not specified. If true, spin up all compute in a VPC network.

  # uncomment below to test the property 
  #expect_equal(model.instance$`highSecurityNetwork`, "EXPECTED_RESULT")
})

test_that("enableFlowLogs", {
  # tests for the property `enableFlowLogs` (character)
  # Requires highSecurityNetwork &#x3D; true. Optional, false if not specified. If true, enable flow logs within the high security network.

  # uncomment below to test the property 
  #expect_equal(model.instance$`enableFlowLogs`, "EXPECTED_RESULT")
})

test_that("privateIpGoogleAccess", {
  # tests for the property `privateIpGoogleAccess` (character)
  # Requires highSecurityNetwork &#x3D; true. Optional, false if not specified. If true, it configures the VPC network to only allow access to GCP APIs that are protected by the project&#39;s service perimeter and routes all allowed API traffic through a narrow IP range.

  # uncomment below to test the property 
  #expect_equal(model.instance$`privateIpGoogleAccess`, "EXPECTED_RESULT")
})

test_that("servicePerimeter", {
  # tests for the property `servicePerimeter` (character)
  # The fully qualified name of the GCP service perimeter to put this project into in the form accessPolicies/[POLICY NUMBER]/servicePerimeters/[NAME]. Caller must have the add_project action for this service perimeter in Sam.

  # uncomment below to test the property 
  #expect_equal(model.instance$`servicePerimeter`, "EXPECTED_RESULT")
})

