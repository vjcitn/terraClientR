# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test SystemStatus")

model.instance <- SystemStatus$new()

test_that("ok", {
  # tests for the property `ok` (character)
  # whether any system(s) need attention

  # uncomment below to test the property 
  #expect_equal(model.instance$`ok`, "EXPECTED_RESULT")
})

test_that("systems", {
  # tests for the property `systems` (map(object))
  # Map[String, SubsystemStatus]

  # uncomment below to test the property 
  #expect_equal(model.instance$`systems`, "EXPECTED_RESULT")
})

