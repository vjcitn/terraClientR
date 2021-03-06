# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title BillingAccountRedirect
#'
#' @description BillingAccountRedirect Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field redirect  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BillingAccountRedirect <- R6::R6Class(
  'BillingAccountRedirect',
  public = list(
    `redirect` = NULL,
    initialize = function(
        `redirect`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`redirect`)) {
        stopifnot(is.character(`redirect`), length(`redirect`) == 1)
        self$`redirect` <- `redirect`
      }
    },
    toJSON = function() {
      BillingAccountRedirectObject <- list()
      if (!is.null(self$`redirect`)) {
        BillingAccountRedirectObject[['redirect']] <-
          self$`redirect`
      }

      BillingAccountRedirectObject
    },
    fromJSON = function(BillingAccountRedirectJson) {
      BillingAccountRedirectObject <- jsonlite::fromJSON(BillingAccountRedirectJson)
      if (!is.null(BillingAccountRedirectObject$`redirect`)) {
        self$`redirect` <- BillingAccountRedirectObject$`redirect`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`redirect`)) {
        sprintf(
        '"redirect":
          "%s"
                ',
        self$`redirect`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(BillingAccountRedirectJson) {
      BillingAccountRedirectObject <- jsonlite::fromJSON(BillingAccountRedirectJson)
      self$`redirect` <- BillingAccountRedirectObject$`redirect`
      self
    }
  )
)

