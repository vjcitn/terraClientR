# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title WorkspaceACLUpdate
#'
#' @description WorkspaceACLUpdate Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field email  character 
#'
#' @field accessLevel  character 
#'
#' @field canShare  character [optional]
#'
#' @field canCompute  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkspaceACLUpdate <- R6::R6Class(
  'WorkspaceACLUpdate',
  public = list(
    `email` = NULL,
    `accessLevel` = NULL,
    `canShare` = NULL,
    `canCompute` = NULL,
    initialize = function(
        `email`, `accessLevel`, `canShare`=NULL, `canCompute`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`accessLevel`)) {
        stopifnot(is.character(`accessLevel`), length(`accessLevel`) == 1)
        self$`accessLevel` <- `accessLevel`
      }
      if (!is.null(`canShare`)) {
        self$`canShare` <- `canShare`
      }
      if (!is.null(`canCompute`)) {
        self$`canCompute` <- `canCompute`
      }
    },
    toJSON = function() {
      WorkspaceACLUpdateObject <- list()
      if (!is.null(self$`email`)) {
        WorkspaceACLUpdateObject[['email']] <-
          self$`email`
      }
      if (!is.null(self$`accessLevel`)) {
        WorkspaceACLUpdateObject[['accessLevel']] <-
          self$`accessLevel`
      }
      if (!is.null(self$`canShare`)) {
        WorkspaceACLUpdateObject[['canShare']] <-
          self$`canShare`
      }
      if (!is.null(self$`canCompute`)) {
        WorkspaceACLUpdateObject[['canCompute']] <-
          self$`canCompute`
      }

      WorkspaceACLUpdateObject
    },
    fromJSON = function(WorkspaceACLUpdateJson) {
      WorkspaceACLUpdateObject <- jsonlite::fromJSON(WorkspaceACLUpdateJson)
      if (!is.null(WorkspaceACLUpdateObject$`email`)) {
        self$`email` <- WorkspaceACLUpdateObject$`email`
      }
      if (!is.null(WorkspaceACLUpdateObject$`accessLevel`)) {
        self$`accessLevel` <- WorkspaceACLUpdateObject$`accessLevel`
      }
      if (!is.null(WorkspaceACLUpdateObject$`canShare`)) {
        self$`canShare` <- WorkspaceACLUpdateObject$`canShare`
      }
      if (!is.null(WorkspaceACLUpdateObject$`canCompute`)) {
        self$`canCompute` <- WorkspaceACLUpdateObject$`canCompute`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`email`)) {
        sprintf(
        '"email":
          "%s"
                ',
        self$`email`
        )},
        if (!is.null(self$`accessLevel`)) {
        sprintf(
        '"accessLevel":
          "%s"
                ',
        self$`accessLevel`
        )},
        if (!is.null(self$`canShare`)) {
        sprintf(
        '"canShare":
          "%s"
                ',
        self$`canShare`
        )},
        if (!is.null(self$`canCompute`)) {
        sprintf(
        '"canCompute":
          "%s"
                ',
        self$`canCompute`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(WorkspaceACLUpdateJson) {
      WorkspaceACLUpdateObject <- jsonlite::fromJSON(WorkspaceACLUpdateJson)
      self$`email` <- WorkspaceACLUpdateObject$`email`
      self$`accessLevel` <- WorkspaceACLUpdateObject$`accessLevel`
      self$`canShare` <- WorkspaceACLUpdateObject$`canShare`
      self$`canCompute` <- WorkspaceACLUpdateObject$`canCompute`
      self
    }
  )
)

