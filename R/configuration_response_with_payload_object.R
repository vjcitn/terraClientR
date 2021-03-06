# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ConfigurationResponseWithPayloadObject
#'
#' @description ConfigurationResponseWithPayloadObject Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field namespace  character [optional]
#'
#' @field name  character [optional]
#'
#' @field snapshotId  integer [optional]
#'
#' @field snapshotComment  character [optional]
#'
#' @field synopsis  character [optional]
#'
#' @field documentation  character [optional]
#'
#' @field createDate  character [optional]
#'
#' @field url  character [optional]
#'
#' @field payloadObject  \link{ConfigurationPayload} [optional]
#'
#' @field entityType  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConfigurationResponseWithPayloadObject <- R6::R6Class(
  'ConfigurationResponseWithPayloadObject',
  public = list(
    `namespace` = NULL,
    `name` = NULL,
    `snapshotId` = NULL,
    `snapshotComment` = NULL,
    `synopsis` = NULL,
    `documentation` = NULL,
    `createDate` = NULL,
    `url` = NULL,
    `payloadObject` = NULL,
    `entityType` = NULL,
    initialize = function(
        `namespace`='YOUR_NAMESPACE', `name`='BWA', `snapshotId`=NULL, `snapshotComment`='Improved spline reticulation', `synopsis`='Quickly aligns short nucleotide sequences.', `documentation`='BWA is a software package for mapping low-divergent sequences
against a large reference genome, such as the human genome.
It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM.
', `createDate`=NULL, `url`=NULL, `payloadObject`=NULL, `entityType`='Task', ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`namespace`)) {
        stopifnot(is.character(`namespace`), length(`namespace`) == 1)
        self$`namespace` <- `namespace`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!is.null(`snapshotId`)) {
        stopifnot(is.numeric(`snapshotId`), length(`snapshotId`) == 1)
        self$`snapshotId` <- `snapshotId`
      }
      if (!is.null(`snapshotComment`)) {
        stopifnot(is.character(`snapshotComment`), length(`snapshotComment`) == 1)
        self$`snapshotComment` <- `snapshotComment`
      }
      if (!is.null(`synopsis`)) {
        stopifnot(is.character(`synopsis`), length(`synopsis`) == 1)
        self$`synopsis` <- `synopsis`
      }
      if (!is.null(`documentation`)) {
        stopifnot(is.character(`documentation`), length(`documentation`) == 1)
        self$`documentation` <- `documentation`
      }
      if (!is.null(`createDate`)) {
        stopifnot(is.character(`createDate`), length(`createDate`) == 1)
        self$`createDate` <- `createDate`
      }
      if (!is.null(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!is.null(`payloadObject`)) {
        stopifnot(R6::is.R6(`payloadObject`))
        self$`payloadObject` <- `payloadObject`
      }
      if (!is.null(`entityType`)) {
        stopifnot(is.character(`entityType`), length(`entityType`) == 1)
        self$`entityType` <- `entityType`
      }
    },
    toJSON = function() {
      ConfigurationResponseWithPayloadObjectObject <- list()
      if (!is.null(self$`namespace`)) {
        ConfigurationResponseWithPayloadObjectObject[['namespace']] <-
          self$`namespace`
      }
      if (!is.null(self$`name`)) {
        ConfigurationResponseWithPayloadObjectObject[['name']] <-
          self$`name`
      }
      if (!is.null(self$`snapshotId`)) {
        ConfigurationResponseWithPayloadObjectObject[['snapshotId']] <-
          self$`snapshotId`
      }
      if (!is.null(self$`snapshotComment`)) {
        ConfigurationResponseWithPayloadObjectObject[['snapshotComment']] <-
          self$`snapshotComment`
      }
      if (!is.null(self$`synopsis`)) {
        ConfigurationResponseWithPayloadObjectObject[['synopsis']] <-
          self$`synopsis`
      }
      if (!is.null(self$`documentation`)) {
        ConfigurationResponseWithPayloadObjectObject[['documentation']] <-
          self$`documentation`
      }
      if (!is.null(self$`createDate`)) {
        ConfigurationResponseWithPayloadObjectObject[['createDate']] <-
          self$`createDate`
      }
      if (!is.null(self$`url`)) {
        ConfigurationResponseWithPayloadObjectObject[['url']] <-
          self$`url`
      }
      if (!is.null(self$`payloadObject`)) {
        ConfigurationResponseWithPayloadObjectObject[['payloadObject']] <-
          self$`payloadObject`$toJSON()
      }
      if (!is.null(self$`entityType`)) {
        ConfigurationResponseWithPayloadObjectObject[['entityType']] <-
          self$`entityType`
      }

      ConfigurationResponseWithPayloadObjectObject
    },
    fromJSON = function(ConfigurationResponseWithPayloadObjectJson) {
      ConfigurationResponseWithPayloadObjectObject <- jsonlite::fromJSON(ConfigurationResponseWithPayloadObjectJson)
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`namespace`)) {
        self$`namespace` <- ConfigurationResponseWithPayloadObjectObject$`namespace`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`name`)) {
        self$`name` <- ConfigurationResponseWithPayloadObjectObject$`name`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`snapshotId`)) {
        self$`snapshotId` <- ConfigurationResponseWithPayloadObjectObject$`snapshotId`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`snapshotComment`)) {
        self$`snapshotComment` <- ConfigurationResponseWithPayloadObjectObject$`snapshotComment`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`synopsis`)) {
        self$`synopsis` <- ConfigurationResponseWithPayloadObjectObject$`synopsis`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`documentation`)) {
        self$`documentation` <- ConfigurationResponseWithPayloadObjectObject$`documentation`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`createDate`)) {
        self$`createDate` <- ConfigurationResponseWithPayloadObjectObject$`createDate`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`url`)) {
        self$`url` <- ConfigurationResponseWithPayloadObjectObject$`url`
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`payloadObject`)) {
        payloadObjectObject <- ConfigurationPayload$new()
        payloadObjectObject$fromJSON(jsonlite::toJSON(ConfigurationResponseWithPayloadObjectObject$payloadObject, auto_unbox = TRUE, digits = NA))
        self$`payloadObject` <- payloadObjectObject
      }
      if (!is.null(ConfigurationResponseWithPayloadObjectObject$`entityType`)) {
        self$`entityType` <- ConfigurationResponseWithPayloadObjectObject$`entityType`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`namespace`)) {
        sprintf(
        '"namespace":
          "%s"
                ',
        self$`namespace`
        )},
        if (!is.null(self$`name`)) {
        sprintf(
        '"name":
          "%s"
                ',
        self$`name`
        )},
        if (!is.null(self$`snapshotId`)) {
        sprintf(
        '"snapshotId":
          %d
                ',
        self$`snapshotId`
        )},
        if (!is.null(self$`snapshotComment`)) {
        sprintf(
        '"snapshotComment":
          "%s"
                ',
        self$`snapshotComment`
        )},
        if (!is.null(self$`synopsis`)) {
        sprintf(
        '"synopsis":
          "%s"
                ',
        self$`synopsis`
        )},
        if (!is.null(self$`documentation`)) {
        sprintf(
        '"documentation":
          "%s"
                ',
        self$`documentation`
        )},
        if (!is.null(self$`createDate`)) {
        sprintf(
        '"createDate":
          "%s"
                ',
        self$`createDate`
        )},
        if (!is.null(self$`url`)) {
        sprintf(
        '"url":
          "%s"
                ',
        self$`url`
        )},
        if (!is.null(self$`payloadObject`)) {
        sprintf(
        '"payloadObject":
        %s
        ',
        jsonlite::toJSON(self$`payloadObject`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`entityType`)) {
        sprintf(
        '"entityType":
          "%s"
                ',
        self$`entityType`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ConfigurationResponseWithPayloadObjectJson) {
      ConfigurationResponseWithPayloadObjectObject <- jsonlite::fromJSON(ConfigurationResponseWithPayloadObjectJson)
      self$`namespace` <- ConfigurationResponseWithPayloadObjectObject$`namespace`
      self$`name` <- ConfigurationResponseWithPayloadObjectObject$`name`
      self$`snapshotId` <- ConfigurationResponseWithPayloadObjectObject$`snapshotId`
      self$`snapshotComment` <- ConfigurationResponseWithPayloadObjectObject$`snapshotComment`
      self$`synopsis` <- ConfigurationResponseWithPayloadObjectObject$`synopsis`
      self$`documentation` <- ConfigurationResponseWithPayloadObjectObject$`documentation`
      self$`createDate` <- ConfigurationResponseWithPayloadObjectObject$`createDate`
      self$`url` <- ConfigurationResponseWithPayloadObjectObject$`url`
      self$`payloadObject` <- ConfigurationPayload$new()$fromJSON(jsonlite::toJSON(ConfigurationResponseWithPayloadObjectObject$payloadObject, auto_unbox = TRUE, digits = NA))
      self$`entityType` <- ConfigurationResponseWithPayloadObjectObject$`entityType`
      self
    }
  )
)

