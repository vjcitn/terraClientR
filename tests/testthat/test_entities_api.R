# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test EntitiesApi")

api.instance <- EntitiesApi$new()

test_that("BrowserDownloadEntitiesTSV", {
  # tests for BrowserDownloadEntitiesTSV
  # base path: http://localhost
  # TSV file containing workspace entities of the specified type 
  # swagger-ui seems to not handle file downloads, so this endpoint won&#39;t function through the ui. It is here for documentation purposes only. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @param f.ctoken character valid access token to use for authentication
  # @param attribute.names character comma separated list of ordered attribute names to be in downloaded tsv (optional)
  # @param model character flexible or firecloud (firecloud model will be used by default) (optional)
  # @return [data.frame]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("BrowserDownloadEntitiesTSVGet", {
  # tests for BrowserDownloadEntitiesTSVGet
  # base path: http://localhost
  # TSV file containing workspace entities of the specified type 
  # swagger-ui seems to not handle file downloads, so this endpoint won&#39;t function through the ui. It is here for documentation purposes only. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @param attribute.names character comma separated list of ordered attribute names to be in downloaded tsv (optional)
  # @param model character flexible or firecloud (firecloud model will be used by default) (optional)
  # @return [data.frame]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("CopyEntities", {
  # tests for CopyEntities
  # base path: http://localhost
  # Copy entities from one workspace to another 
  # @param workspace.namespace character Destination Workspace Namespace
  # @param workspace.name character Destination Workspace Name
  # @param body CopyEntity Entities to Copy
  # @param link.existing.entities character true to link new entities to existing entities, false to fail instead of link (optional)
  # @return [EntityCopyResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("DeleteEntities", {
  # tests for DeleteEntities
  # base path: http://localhost
  # Bulk delete entities from a workspace
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param body array[EntityID] Entities to delete
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("DownloadEntitiesTSV", {
  # tests for DownloadEntitiesTSV
  # base path: http://localhost
  # TSV file containing workspace entities of the specified type 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @param attribute.names character comma separated list of ordered attribute names to be in downloaded tsv (optional)
  # @param model character firecloud (default) or flexible (optional)
  # @return [data.frame]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("EntityQuery", {
  # tests for EntityQuery
  # base path: http://localhost
  # Paginated query for entities in a workspace
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @param page integer Page number, 1-indexed (default 1) (optional)
  # @param page.size integer Page size (default 10) (optional)
  # @param sort.field character Sort field (default \"name\") (optional)
  # @param sort.direction character Sort direction (asc or desc, default asc) (optional)
  # @param filter.terms character Filter terms (optional)
  # @return [EntityQueryResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("EvaluateEntityExpression", {
  # tests for EvaluateEntityExpression
  # base path: http://localhost
  # Evaluate entity expression
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @param entity.name character Entity Name
  # @param expression character Expression
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("FlexibleImportEntities", {
  # tests for FlexibleImportEntities
  # base path: http://localhost
  # Import entities from a tsv file
  # @param workspace.namespace character Destination Workspace Namespace
  # @param workspace.name character Destination Workspace Name
  # @param entities data.frame A valid TSV import file
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetEntities", {
  # tests for GetEntities
  # base path: http://localhost
  # List of entities in a workspace 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @return [array[Entity]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetEntitiesWithType", {
  # tests for GetEntitiesWithType
  # base path: http://localhost
  # List of entities in a workspace with type and attribute information 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetEntity", {
  # tests for GetEntity
  # base path: http://localhost
  # Get entity in a workspace
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @param entity.name character Entity Name
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("GetEntityTypes", {
  # tests for GetEntityTypes
  # base path: http://localhost
  # List of entity types in a workspace 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ImportBagit", {
  # tests for ImportBagit
  # base path: http://localhost
  # Import entity TSVs from a zipped [BagIt](https://tools.ietf.org/html/draft-kunze-bagit-14) directory, whose payload contains two files - participants.tsv and samples.tsv
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param bagit.import.request BagitRequest JSON object containing bagit URL
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ImportEntities", {
  # tests for ImportEntities
  # base path: http://localhost
  # Import entities from a tsv file
  # @param workspace.namespace character Destination Workspace Namespace
  # @param workspace.name character Destination Workspace Name
  # @param entities data.frame A valid TSV import file
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ImportPFB", {
  # tests for ImportPFB
  # base path: http://localhost
  # Import PFB data from an [Avro](https://avro.apache.org/) file
  # This API will return a jobID representing the import operation. The import itself will continue asynchronously in the background. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param pfb.import.request PFBRequest JSON object containing PFB URL
  # @return [PFBResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ImportPFBStatus", {
  # tests for ImportPFBStatus
  # base path: http://localhost
  # Report status on a PFB import job
  # This API will return status of an import jobID. The jobID was returned from a previous import request. 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param job.id character job ID of the import to check
  # @return [PFBStatusResponse]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("ListImportPFBJobs", {
  # tests for ListImportPFBJobs
  # base path: http://localhost
  # List PFB import jobs in this workspace
  # Lists all imports for this workspace, optionally filtered to only those imports currently in progress 
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param running.only character When true, filters to only those imports currently in progress (optional)
  # @return [array[PFBStatusResponse]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("UpdateEntity", {
  # tests for UpdateEntity
  # base path: http://localhost
  # Update entity in a workspace
  # Update an entity
  # @param workspace.namespace character Workspace Namespace
  # @param workspace.name character Workspace Name
  # @param entity.type character Entity Type
  # @param entity.name character Entity Name
  # @param attribute.update.json array[AttributeUpdateOperation] Update operations for attributes (optional)
  # @return [Entity]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

