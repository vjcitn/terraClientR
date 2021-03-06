# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test StatusApi")

api.instance <- StatusApi$new()

test_that("Error", {
  # tests for Error
  # base path: http://localhost
  # An error status endpoint for load balancing purposes 
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("Health", {
  # tests for Health
  # base path: http://localhost
  # A health status endpoint for load balancing purposes 
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("Status", {
  # tests for Status
  # base path: http://localhost
  # An orchestrated status check that includes a health report of underlying systems 
  # @return [SystemStatus]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

