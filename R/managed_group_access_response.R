# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ManagedGroupAccessResponse
#'
#' @description ManagedGroupAccessResponse Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field groupName  character 
#'
#' @field groupEmail  character 
#'
#' @field role  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ManagedGroupAccessResponse <- R6::R6Class(
  'ManagedGroupAccessResponse',
  public = list(
    `groupName` = NULL,
    `groupEmail` = NULL,
    `role` = NULL,
    initialize = function(
        `groupName`, `groupEmail`, `role`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`groupName`)) {
        stopifnot(is.character(`groupName`), length(`groupName`) == 1)
        self$`groupName` <- `groupName`
      }
      if (!missing(`groupEmail`)) {
        stopifnot(is.character(`groupEmail`), length(`groupEmail`) == 1)
        self$`groupEmail` <- `groupEmail`
      }
      if (!missing(`role`)) {
        stopifnot(is.character(`role`), length(`role`) == 1)
        self$`role` <- `role`
      }
    },
    toJSON = function() {
      ManagedGroupAccessResponseObject <- list()
      if (!is.null(self$`groupName`)) {
        ManagedGroupAccessResponseObject[['groupName']] <-
          self$`groupName`
      }
      if (!is.null(self$`groupEmail`)) {
        ManagedGroupAccessResponseObject[['groupEmail']] <-
          self$`groupEmail`
      }
      if (!is.null(self$`role`)) {
        ManagedGroupAccessResponseObject[['role']] <-
          self$`role`
      }

      ManagedGroupAccessResponseObject
    },
    fromJSON = function(ManagedGroupAccessResponseJson) {
      ManagedGroupAccessResponseObject <- jsonlite::fromJSON(ManagedGroupAccessResponseJson)
      if (!is.null(ManagedGroupAccessResponseObject$`groupName`)) {
        self$`groupName` <- ManagedGroupAccessResponseObject$`groupName`
      }
      if (!is.null(ManagedGroupAccessResponseObject$`groupEmail`)) {
        self$`groupEmail` <- ManagedGroupAccessResponseObject$`groupEmail`
      }
      if (!is.null(ManagedGroupAccessResponseObject$`role`)) {
        self$`role` <- ManagedGroupAccessResponseObject$`role`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`groupName`)) {
        sprintf(
        '"groupName":
          "%s"
                ',
        self$`groupName`
        )},
        if (!is.null(self$`groupEmail`)) {
        sprintf(
        '"groupEmail":
          "%s"
                ',
        self$`groupEmail`
        )},
        if (!is.null(self$`role`)) {
        sprintf(
        '"role":
          "%s"
                ',
        self$`role`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ManagedGroupAccessResponseJson) {
      ManagedGroupAccessResponseObject <- jsonlite::fromJSON(ManagedGroupAccessResponseJson)
      self$`groupName` <- ManagedGroupAccessResponseObject$`groupName`
      self$`groupEmail` <- ManagedGroupAccessResponseObject$`groupEmail`
      self$`role` <- ManagedGroupAccessResponseObject$`role`
      self
    }
  )
)

