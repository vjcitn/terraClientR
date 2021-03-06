# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title BillingProjectStatus
#'
#' @description BillingProjectStatus Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field projectName  character 
#'
#' @field creationStatus  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BillingProjectStatus <- R6::R6Class(
  'BillingProjectStatus',
  public = list(
    `projectName` = NULL,
    `creationStatus` = NULL,
    initialize = function(
        `projectName`, `creationStatus`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`projectName`)) {
        stopifnot(is.character(`projectName`), length(`projectName`) == 1)
        self$`projectName` <- `projectName`
      }
      if (!missing(`creationStatus`)) {
        stopifnot(is.character(`creationStatus`), length(`creationStatus`) == 1)
        self$`creationStatus` <- `creationStatus`
      }
    },
    toJSON = function() {
      BillingProjectStatusObject <- list()
      if (!is.null(self$`projectName`)) {
        BillingProjectStatusObject[['projectName']] <-
          self$`projectName`
      }
      if (!is.null(self$`creationStatus`)) {
        BillingProjectStatusObject[['creationStatus']] <-
          self$`creationStatus`
      }

      BillingProjectStatusObject
    },
    fromJSON = function(BillingProjectStatusJson) {
      BillingProjectStatusObject <- jsonlite::fromJSON(BillingProjectStatusJson)
      if (!is.null(BillingProjectStatusObject$`projectName`)) {
        self$`projectName` <- BillingProjectStatusObject$`projectName`
      }
      if (!is.null(BillingProjectStatusObject$`creationStatus`)) {
        self$`creationStatus` <- BillingProjectStatusObject$`creationStatus`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`projectName`)) {
        sprintf(
        '"projectName":
          "%s"
                ',
        self$`projectName`
        )},
        if (!is.null(self$`creationStatus`)) {
        sprintf(
        '"creationStatus":
          "%s"
                ',
        self$`creationStatus`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(BillingProjectStatusJson) {
      BillingProjectStatusObject <- jsonlite::fromJSON(BillingProjectStatusJson)
      self$`projectName` <- BillingProjectStatusObject$`projectName`
      self$`creationStatus` <- BillingProjectStatusObject$`creationStatus`
      self
    }
  )
)

