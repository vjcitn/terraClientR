# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title RemoveListMemberAllOf
#'
#' @description RemoveListMemberAllOf Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field attributeListName  character [optional]
#'
#' @field removeMember  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RemoveListMemberAllOf <- R6::R6Class(
  'RemoveListMemberAllOf',
  public = list(
    `attributeListName` = NULL,
    `removeMember` = NULL,
    initialize = function(
        `attributeListName`=NULL, `removeMember`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`attributeListName`)) {
        stopifnot(is.character(`attributeListName`), length(`attributeListName`) == 1)
        self$`attributeListName` <- `attributeListName`
      }
      if (!is.null(`removeMember`)) {
        stopifnot(is.character(`removeMember`), length(`removeMember`) == 1)
        self$`removeMember` <- `removeMember`
      }
    },
    toJSON = function() {
      RemoveListMemberAllOfObject <- list()
      if (!is.null(self$`attributeListName`)) {
        RemoveListMemberAllOfObject[['attributeListName']] <-
          self$`attributeListName`
      }
      if (!is.null(self$`removeMember`)) {
        RemoveListMemberAllOfObject[['removeMember']] <-
          self$`removeMember`
      }

      RemoveListMemberAllOfObject
    },
    fromJSON = function(RemoveListMemberAllOfJson) {
      RemoveListMemberAllOfObject <- jsonlite::fromJSON(RemoveListMemberAllOfJson)
      if (!is.null(RemoveListMemberAllOfObject$`attributeListName`)) {
        self$`attributeListName` <- RemoveListMemberAllOfObject$`attributeListName`
      }
      if (!is.null(RemoveListMemberAllOfObject$`removeMember`)) {
        self$`removeMember` <- RemoveListMemberAllOfObject$`removeMember`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`attributeListName`)) {
        sprintf(
        '"attributeListName":
          "%s"
                ',
        self$`attributeListName`
        )},
        if (!is.null(self$`removeMember`)) {
        sprintf(
        '"removeMember":
          "%s"
                ',
        self$`removeMember`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(RemoveListMemberAllOfJson) {
      RemoveListMemberAllOfObject <- jsonlite::fromJSON(RemoveListMemberAllOfJson)
      self$`attributeListName` <- RemoveListMemberAllOfObject$`attributeListName`
      self$`removeMember` <- RemoveListMemberAllOfObject$`removeMember`
      self
    }
  )
)

