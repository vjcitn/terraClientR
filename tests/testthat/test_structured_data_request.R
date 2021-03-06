# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test StructuredDataRequest")

model.instance <- StructuredDataRequest$new()

test_that("generalResearchUse", {
  # tests for the property `generalResearchUse` (character)
  # Is the data available for future general research use?

  # uncomment below to test the property 
  #expect_equal(model.instance$`generalResearchUse`, "EXPECTED_RESULT")
})

test_that("healthMedicalBiomedicalUseRequired", {
  # tests for the property `healthMedicalBiomedicalUseRequired` (character)
  # Is future use limited for health/medical/biomedical research?

  # uncomment below to test the property 
  #expect_equal(model.instance$`healthMedicalBiomedicalUseRequired`, "EXPECTED_RESULT")
})

test_that("diseaseUseRequired", {
  # tests for the property `diseaseUseRequired` (array[character])
  # Future use is limited to research involving the following disease area(s). These values must be urls such as \&quot;http://purl.obolibrary.org/obo/DOID_12345\&quot;.

  # uncomment below to test the property 
  #expect_equal(model.instance$`diseaseUseRequired`, "EXPECTED_RESULT")
})

test_that("commercialUseProhibited", {
  # tests for the property `commercialUseProhibited` (character)
  # Is future commercial use prohibited?

  # uncomment below to test the property 
  #expect_equal(model.instance$`commercialUseProhibited`, "EXPECTED_RESULT")
})

test_that("forProfitUseProhibited", {
  # tests for the property `forProfitUseProhibited` (character)
  # Is future use by for-profit entities prohibited?

  # uncomment below to test the property 
  #expect_equal(model.instance$`forProfitUseProhibited`, "EXPECTED_RESULT")
})

test_that("methodsResearchProhibited", {
  # tests for the property `methodsResearchProhibited` (character)
  # Is future use for methods research (analytic/software/technology development) outside the bounds of the other specified restrictions prohibited?

  # uncomment below to test the property 
  #expect_equal(model.instance$`methodsResearchProhibited`, "EXPECTED_RESULT")
})

test_that("aggregateLevelDataProhibited", {
  # tests for the property `aggregateLevelDataProhibited` (character)
  # Is future use of aggregate-level data for general research purposes prohibited?

  # uncomment below to test the property 
  #expect_equal(model.instance$`aggregateLevelDataProhibited`, "EXPECTED_RESULT")
})

test_that("controlsUseProhibited", {
  # tests for the property `controlsUseProhibited` (character)
  # Is future use as a control set for diseases other than those specified prohibited?

  # uncomment below to test the property 
  #expect_equal(model.instance$`controlsUseProhibited`, "EXPECTED_RESULT")
})

test_that("genderUseRequired", {
  # tests for the property `genderUseRequired` (character)
  # If future use is limited to research involving a particular gender, specify \&quot;male\&quot; or \&quot;female\&quot;. Any other value will be read as false. This field is case-insensitive.

  # uncomment below to test the property 
  #expect_equal(model.instance$`genderUseRequired`, "EXPECTED_RESULT")
})

test_that("pediatricResearchRequired", {
  # tests for the property `pediatricResearchRequired` (character)
  # Is future use limited to pediatric research?

  # uncomment below to test the property 
  #expect_equal(model.instance$`pediatricResearchRequired`, "EXPECTED_RESULT")
})

test_that("irbRequired", {
  # tests for the property `irbRequired` (character)
  # Should the requester provide documentation of local IRB/REC approval?

  # uncomment below to test the property 
  #expect_equal(model.instance$`irbRequired`, "EXPECTED_RESULT")
})

test_that("prefix", {
  # tests for the property `prefix` (character)
  # Optional. A prefix that is prepended to the field names of the responses. This is purely for personalization.

  # uncomment below to test the property 
  #expect_equal(model.instance$`prefix`, "EXPECTED_RESULT")
})

