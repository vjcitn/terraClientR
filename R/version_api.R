# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Version operations
#' @description openapi.Version
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ ExecutionEngineVersion } \emph{ Returns the currently deployed version of FireCloud&#39;s execution engine }
#' 
#'
#' \itemize{
#' \item \emph{ @returnType } \link{ExecutionEngineVersion} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : ExecutionEngineVersion 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ OrchestrationVersion } \emph{ Returns the currently deployed version of this service. }
#' 
#'
#' \itemize{
#' \item \emph{ @returnType } \link{OrchestrationVersion} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : OrchestrationVersion 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  ExecutionEngineVersion  ####################
#'
#' library(openapi)
#'
#' #Returns the currently deployed version of FireCloud's execution engine
#' api.instance <- VersionApi$new()
#'
#' # Configure OAuth2 access token for authorization: googleoauth
#' api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
#'
#' result <- api.instance$ExecutionEngineVersion()
#'
#'
#' ####################  OrchestrationVersion  ####################
#'
#' library(openapi)
#'
#' #Returns the currently deployed version of this service.
#' api.instance <- VersionApi$new()
#'
#' # Configure OAuth2 access token for authorization: googleoauth
#' api.instance$apiClient$accessToken <- 'TODO_YOUR_ACCESS_TOKEN';
#'
#' result <- api.instance$OrchestrationVersion()
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
VersionApi <- R6::R6Class(
  'VersionApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    ExecutionEngineVersion = function(...){
      apiResponse <- self$ExecutionEngineVersionWithHttpInfo(...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    ExecutionEngineVersionWithHttpInfo = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      body <- NULL
      urlPath <- "/version/executionEngine"
      # OAuth token
      headerParams['Authorization'] <- paste("Bearer", self$apiClient$accessToken, sep=" ")

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "ExecutionEngineVersion", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    OrchestrationVersion = function(...){
      apiResponse <- self$OrchestrationVersionWithHttpInfo(...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    OrchestrationVersionWithHttpInfo = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      body <- NULL
      urlPath <- "/version"
      # OAuth token
      headerParams['Authorization'] <- paste("Bearer", self$apiClient$accessToken, sep=" ")

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "OrchestrationVersion", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
