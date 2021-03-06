# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title RegisterProfile
#'
#' @description RegisterProfile Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field userId  character [optional]
#'
#' @field keyValuePairs  list( \link{KeyValuePair} ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RegisterProfile <- R6::R6Class(
  'RegisterProfile',
  public = list(
    `userId` = NULL,
    `keyValuePairs` = NULL,
    initialize = function(
        `userId`=NULL, `keyValuePairs`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`userId`)) {
        stopifnot(is.character(`userId`), length(`userId`) == 1)
        self$`userId` <- `userId`
      }
      if (!is.null(`keyValuePairs`)) {
        stopifnot(is.vector(`keyValuePairs`), length(`keyValuePairs`) != 0)
        sapply(`keyValuePairs`, function(x) stopifnot(R6::is.R6(x)))
        self$`keyValuePairs` <- `keyValuePairs`
      }
    },
    toJSON = function() {
      RegisterProfileObject <- list()
      if (!is.null(self$`userId`)) {
        RegisterProfileObject[['userId']] <-
          self$`userId`
      }
      if (!is.null(self$`keyValuePairs`)) {
        RegisterProfileObject[['keyValuePairs']] <-
          lapply(self$`keyValuePairs`, function(x) x$toJSON())
      }

      RegisterProfileObject
    },
    fromJSON = function(RegisterProfileJson) {
      RegisterProfileObject <- jsonlite::fromJSON(RegisterProfileJson)
      if (!is.null(RegisterProfileObject$`userId`)) {
        self$`userId` <- RegisterProfileObject$`userId`
      }
      if (!is.null(RegisterProfileObject$`keyValuePairs`)) {
        self$`keyValuePairs` <- ApiClient$new()$deserializeObj(RegisterProfileObject$`keyValuePairs`, "array[KeyValuePair]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`userId`)) {
        sprintf(
        '"userId":
          "%s"
                ',
        self$`userId`
        )},
        if (!is.null(self$`keyValuePairs`)) {
        sprintf(
        '"keyValuePairs":
        [%s]
',
        paste(sapply(self$`keyValuePairs`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(RegisterProfileJson) {
      RegisterProfileObject <- jsonlite::fromJSON(RegisterProfileJson)
      self$`userId` <- RegisterProfileObject$`userId`
      self$`keyValuePairs` <- ApiClient$new()$deserializeObj(RegisterProfileObject$`keyValuePairs`, "array[KeyValuePair]", loadNamespace("openapi"))
      self
    }
  )
)

