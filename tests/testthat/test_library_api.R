# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test LibraryApi")

api.instance <- LibraryApi$new()

test_that("DataIngest", {
  # tests for DataIngest
  # base path: http://localhost
  # Data Use Search ingest
  # The ingest API will take the answers to consent questions and return the elasticsearch structure to persist with the data reference.
  # @param body StructuredDataRequest Structured Data Request
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("DuosAutocomplete", {
  # tests for DuosAutocomplete
  # base path: http://localhost
  # Passes through to DUOS&#39; autocomplete method to select ontology terms of disease type that match the query term. 
  # @param query.term character The query term (word fragment) which the service should try and complete.
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("DuosConsentOrspId", {
  # tests for DuosConsentOrspId
  # base path: http://localhost
  # Find Consent by ORSP ID
  # @param orsp.id character Finds the consent for the provided ORSP ID.
  # @return [Consent]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("DuosResearchPurposeQuery", {
  # tests for DuosResearchPurposeQuery
  # base path: http://localhost
  # Generates an ElasticSearch clause for filtering by research purpose
  # @param body ResearchPurposeRequest Research Purpose Request
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("FindDocuments", {
  # tests for FindDocuments
  # base path: http://localhost
  # searches published library datasets 
  # @param search.params SearchTermRef Search terms and pagination parameters (optional)
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetDiscoverableGroups", {
  # tests for GetDiscoverableGroups
  # base path: http://localhost
  # get the groups that can discover this library dataset 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [array[character]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetLibraryMetadata", {
  # tests for GetLibraryMetadata
  # base path: http://localhost
  # get the entire metadata for a library dataset 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [object]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("Groups", {
  # tests for Groups
  # base path: http://localhost
  # returns groups that can be used for discoverable datasets 
  # @return [array[character]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PopulateSuggest", {
  # tests for PopulateSuggest
  # base path: http://localhost
  # suggestions for populating a field 
  # @param field character the property to get suggestions for
  # @param q character the initial text to complete
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PublishLibraryWorkspace", {
  # tests for PublishLibraryWorkspace
  # base path: http://localhost
  # publish the workspace in the Library 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [Workspace]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("PutLibraryMetadata", {
  # tests for PutLibraryMetadata
  # base path: http://localhost
  # put the entire metadata for a library dataset 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param library.metadata.json object Library metadata
  # @param validate character Should the payload be validated? Validation is always enabled for published datasets and defaults to false for unpublished datasets.  (optional)
  # @return [Workspace]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ReindexAll", {
  # tests for ReindexAll
  # base path: http://localhost
  # deletes and rebuilds the entire index of published library datasets 
  # @return [LibraryBulkIndexResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("SearchSuggest", {
  # tests for SearchSuggest
  # base path: http://localhost
  # search suggestions 
  # @param search.params SearchTermRef Search terms and pagination parameters (optional)
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("UnpublishLibraryWorkspace", {
  # tests for UnpublishLibraryWorkspace
  # base path: http://localhost
  # unpublish the workspace in the Library 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [Workspace]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("UpdateDiscoverableGroups", {
  # tests for UpdateDiscoverableGroups
  # base path: http://localhost
  # set the groups that can discover this library dataset 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param discoverable.groups array[character] Json array of group names, or empty array for no restrictions
  # @return [Workspace]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

