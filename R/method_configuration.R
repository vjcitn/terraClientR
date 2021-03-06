# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title MethodConfiguration
#'
#' @description MethodConfiguration Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field namespace  character 
#'
#' @field name  character 
#'
#' @field rootEntityType  character [optional]
#'
#' @field prerequisites  named list( character ) [optional]
#'
#' @field inputs  named list( character ) 
#'
#' @field outputs  named list( character ) [optional]
#'
#' @field methodRepoMethod  \link{MethodRepoMethod} 
#'
#' @field methodConfigVersion  integer [optional]
#'
#' @field deleted  character [optional]
#'
#' @field dataReferenceName  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MethodConfiguration <- R6::R6Class(
  'MethodConfiguration',
  public = list(
    `namespace` = NULL,
    `name` = NULL,
    `rootEntityType` = NULL,
    `prerequisites` = NULL,
    `inputs` = NULL,
    `outputs` = NULL,
    `methodRepoMethod` = NULL,
    `methodConfigVersion` = NULL,
    `deleted` = NULL,
    `dataReferenceName` = NULL,
    initialize = function(
        `namespace`, `name`, `inputs`, `methodRepoMethod`, `rootEntityType`=NULL, `prerequisites`=NULL, `outputs`=NULL, `methodConfigVersion`=NULL, `deleted`=NULL, `dataReferenceName`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`namespace`)) {
        stopifnot(is.character(`namespace`), length(`namespace`) == 1)
        self$`namespace` <- `namespace`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`inputs`)) {
        stopifnot(is.vector(`inputs`), length(`inputs`) != 0)
        sapply(`inputs`, function(x) stopifnot(is.character(x)))
        self$`inputs` <- `inputs`
      }
      if (!missing(`methodRepoMethod`)) {
        stopifnot(R6::is.R6(`methodRepoMethod`))
        self$`methodRepoMethod` <- `methodRepoMethod`
      }
      if (!is.null(`rootEntityType`)) {
        stopifnot(is.character(`rootEntityType`), length(`rootEntityType`) == 1)
        self$`rootEntityType` <- `rootEntityType`
      }
      if (!is.null(`prerequisites`)) {
        stopifnot(is.vector(`prerequisites`), length(`prerequisites`) != 0)
        sapply(`prerequisites`, function(x) stopifnot(is.character(x)))
        self$`prerequisites` <- `prerequisites`
      }
      if (!is.null(`outputs`)) {
        stopifnot(is.vector(`outputs`), length(`outputs`) != 0)
        sapply(`outputs`, function(x) stopifnot(is.character(x)))
        self$`outputs` <- `outputs`
      }
      if (!is.null(`methodConfigVersion`)) {
        stopifnot(is.numeric(`methodConfigVersion`), length(`methodConfigVersion`) == 1)
        self$`methodConfigVersion` <- `methodConfigVersion`
      }
      if (!is.null(`deleted`)) {
        self$`deleted` <- `deleted`
      }
      if (!is.null(`dataReferenceName`)) {
        stopifnot(is.character(`dataReferenceName`), length(`dataReferenceName`) == 1)
        self$`dataReferenceName` <- `dataReferenceName`
      }
    },
    toJSON = function() {
      MethodConfigurationObject <- list()
      if (!is.null(self$`namespace`)) {
        MethodConfigurationObject[['namespace']] <-
          self$`namespace`
      }
      if (!is.null(self$`name`)) {
        MethodConfigurationObject[['name']] <-
          self$`name`
      }
      if (!is.null(self$`rootEntityType`)) {
        MethodConfigurationObject[['rootEntityType']] <-
          self$`rootEntityType`
      }
      if (!is.null(self$`prerequisites`)) {
        MethodConfigurationObject[['prerequisites']] <-
          self$`prerequisites`
      }
      if (!is.null(self$`inputs`)) {
        MethodConfigurationObject[['inputs']] <-
          self$`inputs`
      }
      if (!is.null(self$`outputs`)) {
        MethodConfigurationObject[['outputs']] <-
          self$`outputs`
      }
      if (!is.null(self$`methodRepoMethod`)) {
        MethodConfigurationObject[['methodRepoMethod']] <-
          self$`methodRepoMethod`$toJSON()
      }
      if (!is.null(self$`methodConfigVersion`)) {
        MethodConfigurationObject[['methodConfigVersion']] <-
          self$`methodConfigVersion`
      }
      if (!is.null(self$`deleted`)) {
        MethodConfigurationObject[['deleted']] <-
          self$`deleted`
      }
      if (!is.null(self$`dataReferenceName`)) {
        MethodConfigurationObject[['dataReferenceName']] <-
          self$`dataReferenceName`
      }

      MethodConfigurationObject
    },
    fromJSON = function(MethodConfigurationJson) {
      MethodConfigurationObject <- jsonlite::fromJSON(MethodConfigurationJson)
      if (!is.null(MethodConfigurationObject$`namespace`)) {
        self$`namespace` <- MethodConfigurationObject$`namespace`
      }
      if (!is.null(MethodConfigurationObject$`name`)) {
        self$`name` <- MethodConfigurationObject$`name`
      }
      if (!is.null(MethodConfigurationObject$`rootEntityType`)) {
        self$`rootEntityType` <- MethodConfigurationObject$`rootEntityType`
      }
      if (!is.null(MethodConfigurationObject$`prerequisites`)) {
        self$`prerequisites` <- ApiClient$new()$deserializeObj(MethodConfigurationObject$`prerequisites`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(MethodConfigurationObject$`inputs`)) {
        self$`inputs` <- ApiClient$new()$deserializeObj(MethodConfigurationObject$`inputs`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(MethodConfigurationObject$`outputs`)) {
        self$`outputs` <- ApiClient$new()$deserializeObj(MethodConfigurationObject$`outputs`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(MethodConfigurationObject$`methodRepoMethod`)) {
        methodRepoMethodObject <- MethodRepoMethod$new()
        methodRepoMethodObject$fromJSON(jsonlite::toJSON(MethodConfigurationObject$methodRepoMethod, auto_unbox = TRUE, digits = NA))
        self$`methodRepoMethod` <- methodRepoMethodObject
      }
      if (!is.null(MethodConfigurationObject$`methodConfigVersion`)) {
        self$`methodConfigVersion` <- MethodConfigurationObject$`methodConfigVersion`
      }
      if (!is.null(MethodConfigurationObject$`deleted`)) {
        self$`deleted` <- MethodConfigurationObject$`deleted`
      }
      if (!is.null(MethodConfigurationObject$`dataReferenceName`)) {
        self$`dataReferenceName` <- MethodConfigurationObject$`dataReferenceName`
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
        if (!is.null(self$`rootEntityType`)) {
        sprintf(
        '"rootEntityType":
          "%s"
                ',
        self$`rootEntityType`
        )},
        if (!is.null(self$`prerequisites`)) {
        sprintf(
        '"prerequisites":
          "%s"
        ',
        jsonlite::toJSON(lapply(self$`prerequisites`, function(x){ x }), auto_unbox = TRUE, digits=NA)
        )},
        if (!is.null(self$`inputs`)) {
        sprintf(
        '"inputs":
          "%s"
        ',
        jsonlite::toJSON(lapply(self$`inputs`, function(x){ x }), auto_unbox = TRUE, digits=NA)
        )},
        if (!is.null(self$`outputs`)) {
        sprintf(
        '"outputs":
          "%s"
        ',
        jsonlite::toJSON(lapply(self$`outputs`, function(x){ x }), auto_unbox = TRUE, digits=NA)
        )},
        if (!is.null(self$`methodRepoMethod`)) {
        sprintf(
        '"methodRepoMethod":
        %s
        ',
        jsonlite::toJSON(self$`methodRepoMethod`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`methodConfigVersion`)) {
        sprintf(
        '"methodConfigVersion":
          %d
                ',
        self$`methodConfigVersion`
        )},
        if (!is.null(self$`deleted`)) {
        sprintf(
        '"deleted":
          "%s"
                ',
        self$`deleted`
        )},
        if (!is.null(self$`dataReferenceName`)) {
        sprintf(
        '"dataReferenceName":
          "%s"
                ',
        self$`dataReferenceName`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(MethodConfigurationJson) {
      MethodConfigurationObject <- jsonlite::fromJSON(MethodConfigurationJson)
      self$`namespace` <- MethodConfigurationObject$`namespace`
      self$`name` <- MethodConfigurationObject$`name`
      self$`rootEntityType` <- MethodConfigurationObject$`rootEntityType`
      self$`prerequisites` <- ApiClient$new()$deserializeObj(MethodConfigurationObject$`prerequisites`, "map(character)", loadNamespace("openapi"))
      self$`inputs` <- ApiClient$new()$deserializeObj(MethodConfigurationObject$`inputs`, "map(character)", loadNamespace("openapi"))
      self$`outputs` <- ApiClient$new()$deserializeObj(MethodConfigurationObject$`outputs`, "map(character)", loadNamespace("openapi"))
      self$`methodRepoMethod` <- MethodRepoMethod$new()$fromJSON(jsonlite::toJSON(MethodConfigurationObject$methodRepoMethod, auto_unbox = TRUE, digits = NA))
      self$`methodConfigVersion` <- MethodConfigurationObject$`methodConfigVersion`
      self$`deleted` <- MethodConfigurationObject$`deleted`
      self$`dataReferenceName` <- MethodConfigurationObject$`dataReferenceName`
      self
    }
  )
)

