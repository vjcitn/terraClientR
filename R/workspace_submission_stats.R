# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title WorkspaceSubmissionStats
#'
#' @description WorkspaceSubmissionStats Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field lastSuccessDate  character [optional]
#'
#' @field lastFailureDate  character [optional]
#'
#' @field runningSubmissionsCount  integer 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkspaceSubmissionStats <- R6::R6Class(
  'WorkspaceSubmissionStats',
  public = list(
    `lastSuccessDate` = NULL,
    `lastFailureDate` = NULL,
    `runningSubmissionsCount` = NULL,
    initialize = function(
        `runningSubmissionsCount`, `lastSuccessDate`=NULL, `lastFailureDate`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`runningSubmissionsCount`)) {
        stopifnot(is.numeric(`runningSubmissionsCount`), length(`runningSubmissionsCount`) == 1)
        self$`runningSubmissionsCount` <- `runningSubmissionsCount`
      }
      if (!is.null(`lastSuccessDate`)) {
        stopifnot(is.character(`lastSuccessDate`), length(`lastSuccessDate`) == 1)
        self$`lastSuccessDate` <- `lastSuccessDate`
      }
      if (!is.null(`lastFailureDate`)) {
        stopifnot(is.character(`lastFailureDate`), length(`lastFailureDate`) == 1)
        self$`lastFailureDate` <- `lastFailureDate`
      }
    },
    toJSON = function() {
      WorkspaceSubmissionStatsObject <- list()
      if (!is.null(self$`lastSuccessDate`)) {
        WorkspaceSubmissionStatsObject[['lastSuccessDate']] <-
          self$`lastSuccessDate`
      }
      if (!is.null(self$`lastFailureDate`)) {
        WorkspaceSubmissionStatsObject[['lastFailureDate']] <-
          self$`lastFailureDate`
      }
      if (!is.null(self$`runningSubmissionsCount`)) {
        WorkspaceSubmissionStatsObject[['runningSubmissionsCount']] <-
          self$`runningSubmissionsCount`
      }

      WorkspaceSubmissionStatsObject
    },
    fromJSON = function(WorkspaceSubmissionStatsJson) {
      WorkspaceSubmissionStatsObject <- jsonlite::fromJSON(WorkspaceSubmissionStatsJson)
      if (!is.null(WorkspaceSubmissionStatsObject$`lastSuccessDate`)) {
        self$`lastSuccessDate` <- WorkspaceSubmissionStatsObject$`lastSuccessDate`
      }
      if (!is.null(WorkspaceSubmissionStatsObject$`lastFailureDate`)) {
        self$`lastFailureDate` <- WorkspaceSubmissionStatsObject$`lastFailureDate`
      }
      if (!is.null(WorkspaceSubmissionStatsObject$`runningSubmissionsCount`)) {
        self$`runningSubmissionsCount` <- WorkspaceSubmissionStatsObject$`runningSubmissionsCount`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`lastSuccessDate`)) {
        sprintf(
        '"lastSuccessDate":
          "%s"
                ',
        self$`lastSuccessDate`
        )},
        if (!is.null(self$`lastFailureDate`)) {
        sprintf(
        '"lastFailureDate":
          "%s"
                ',
        self$`lastFailureDate`
        )},
        if (!is.null(self$`runningSubmissionsCount`)) {
        sprintf(
        '"runningSubmissionsCount":
          %d
                ',
        self$`runningSubmissionsCount`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(WorkspaceSubmissionStatsJson) {
      WorkspaceSubmissionStatsObject <- jsonlite::fromJSON(WorkspaceSubmissionStatsJson)
      self$`lastSuccessDate` <- WorkspaceSubmissionStatsObject$`lastSuccessDate`
      self$`lastFailureDate` <- WorkspaceSubmissionStatsObject$`lastFailureDate`
      self$`runningSubmissionsCount` <- WorkspaceSubmissionStatsObject$`runningSubmissionsCount`
      self
    }
  )
)

