# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title BillingProjectMember
#'
#' @description BillingProjectMember Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field email  character 
#'
#' @field role  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BillingProjectMember <- R6::R6Class(
  'BillingProjectMember',
  public = list(
    `email` = NULL,
    `role` = NULL,
    initialize = function(
        `email`, `role`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`role`)) {
        stopifnot(is.character(`role`), length(`role`) == 1)
        self$`role` <- `role`
      }
    },
    toJSON = function() {
      BillingProjectMemberObject <- list()
      if (!is.null(self$`email`)) {
        BillingProjectMemberObject[['email']] <-
          self$`email`
      }
      if (!is.null(self$`role`)) {
        BillingProjectMemberObject[['role']] <-
          self$`role`
      }

      BillingProjectMemberObject
    },
    fromJSON = function(BillingProjectMemberJson) {
      BillingProjectMemberObject <- jsonlite::fromJSON(BillingProjectMemberJson)
      if (!is.null(BillingProjectMemberObject$`email`)) {
        self$`email` <- BillingProjectMemberObject$`email`
      }
      if (!is.null(BillingProjectMemberObject$`role`)) {
        self$`role` <- BillingProjectMemberObject$`role`
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
    fromJSONString = function(BillingProjectMemberJson) {
      BillingProjectMemberObject <- jsonlite::fromJSON(BillingProjectMemberJson)
      self$`email` <- BillingProjectMemberObject$`email`
      self$`role` <- BillingProjectMemberObject$`role`
      self
    }
  )
)

