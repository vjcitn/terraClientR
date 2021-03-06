# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title StructuredDataRequest
#'
#' @description StructuredDataRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field generalResearchUse  character 
#'
#' @field healthMedicalBiomedicalUseRequired  character 
#'
#' @field diseaseUseRequired  list( character ) 
#'
#' @field commercialUseProhibited  character 
#'
#' @field forProfitUseProhibited  character 
#'
#' @field methodsResearchProhibited  character 
#'
#' @field aggregateLevelDataProhibited  character 
#'
#' @field controlsUseProhibited  character 
#'
#' @field genderUseRequired  character 
#'
#' @field pediatricResearchRequired  character 
#'
#' @field irbRequired  character 
#'
#' @field prefix  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StructuredDataRequest <- R6::R6Class(
  'StructuredDataRequest',
  public = list(
    `generalResearchUse` = NULL,
    `healthMedicalBiomedicalUseRequired` = NULL,
    `diseaseUseRequired` = NULL,
    `commercialUseProhibited` = NULL,
    `forProfitUseProhibited` = NULL,
    `methodsResearchProhibited` = NULL,
    `aggregateLevelDataProhibited` = NULL,
    `controlsUseProhibited` = NULL,
    `genderUseRequired` = NULL,
    `pediatricResearchRequired` = NULL,
    `irbRequired` = NULL,
    `prefix` = NULL,
    initialize = function(
        `generalResearchUse`, `healthMedicalBiomedicalUseRequired`, `diseaseUseRequired`, `commercialUseProhibited`, `forProfitUseProhibited`, `methodsResearchProhibited`, `aggregateLevelDataProhibited`, `controlsUseProhibited`, `genderUseRequired`, `pediatricResearchRequired`, `irbRequired`, `prefix`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`generalResearchUse`)) {
        self$`generalResearchUse` <- `generalResearchUse`
      }
      if (!missing(`healthMedicalBiomedicalUseRequired`)) {
        self$`healthMedicalBiomedicalUseRequired` <- `healthMedicalBiomedicalUseRequired`
      }
      if (!missing(`diseaseUseRequired`)) {
        stopifnot(is.vector(`diseaseUseRequired`), length(`diseaseUseRequired`) != 0)
        sapply(`diseaseUseRequired`, function(x) stopifnot(is.character(x)))
        self$`diseaseUseRequired` <- `diseaseUseRequired`
      }
      if (!missing(`commercialUseProhibited`)) {
        self$`commercialUseProhibited` <- `commercialUseProhibited`
      }
      if (!missing(`forProfitUseProhibited`)) {
        self$`forProfitUseProhibited` <- `forProfitUseProhibited`
      }
      if (!missing(`methodsResearchProhibited`)) {
        self$`methodsResearchProhibited` <- `methodsResearchProhibited`
      }
      if (!missing(`aggregateLevelDataProhibited`)) {
        self$`aggregateLevelDataProhibited` <- `aggregateLevelDataProhibited`
      }
      if (!missing(`controlsUseProhibited`)) {
        self$`controlsUseProhibited` <- `controlsUseProhibited`
      }
      if (!missing(`genderUseRequired`)) {
        stopifnot(is.character(`genderUseRequired`), length(`genderUseRequired`) == 1)
        self$`genderUseRequired` <- `genderUseRequired`
      }
      if (!missing(`pediatricResearchRequired`)) {
        self$`pediatricResearchRequired` <- `pediatricResearchRequired`
      }
      if (!missing(`irbRequired`)) {
        self$`irbRequired` <- `irbRequired`
      }
      if (!is.null(`prefix`)) {
        stopifnot(is.character(`prefix`), length(`prefix`) == 1)
        self$`prefix` <- `prefix`
      }
    },
    toJSON = function() {
      StructuredDataRequestObject <- list()
      if (!is.null(self$`generalResearchUse`)) {
        StructuredDataRequestObject[['generalResearchUse']] <-
          self$`generalResearchUse`
      }
      if (!is.null(self$`healthMedicalBiomedicalUseRequired`)) {
        StructuredDataRequestObject[['healthMedicalBiomedicalUseRequired']] <-
          self$`healthMedicalBiomedicalUseRequired`
      }
      if (!is.null(self$`diseaseUseRequired`)) {
        StructuredDataRequestObject[['diseaseUseRequired']] <-
          self$`diseaseUseRequired`
      }
      if (!is.null(self$`commercialUseProhibited`)) {
        StructuredDataRequestObject[['commercialUseProhibited']] <-
          self$`commercialUseProhibited`
      }
      if (!is.null(self$`forProfitUseProhibited`)) {
        StructuredDataRequestObject[['forProfitUseProhibited']] <-
          self$`forProfitUseProhibited`
      }
      if (!is.null(self$`methodsResearchProhibited`)) {
        StructuredDataRequestObject[['methodsResearchProhibited']] <-
          self$`methodsResearchProhibited`
      }
      if (!is.null(self$`aggregateLevelDataProhibited`)) {
        StructuredDataRequestObject[['aggregateLevelDataProhibited']] <-
          self$`aggregateLevelDataProhibited`
      }
      if (!is.null(self$`controlsUseProhibited`)) {
        StructuredDataRequestObject[['controlsUseProhibited']] <-
          self$`controlsUseProhibited`
      }
      if (!is.null(self$`genderUseRequired`)) {
        StructuredDataRequestObject[['genderUseRequired']] <-
          self$`genderUseRequired`
      }
      if (!is.null(self$`pediatricResearchRequired`)) {
        StructuredDataRequestObject[['pediatricResearchRequired']] <-
          self$`pediatricResearchRequired`
      }
      if (!is.null(self$`irbRequired`)) {
        StructuredDataRequestObject[['irbRequired']] <-
          self$`irbRequired`
      }
      if (!is.null(self$`prefix`)) {
        StructuredDataRequestObject[['prefix']] <-
          self$`prefix`
      }

      StructuredDataRequestObject
    },
    fromJSON = function(StructuredDataRequestJson) {
      StructuredDataRequestObject <- jsonlite::fromJSON(StructuredDataRequestJson)
      if (!is.null(StructuredDataRequestObject$`generalResearchUse`)) {
        self$`generalResearchUse` <- StructuredDataRequestObject$`generalResearchUse`
      }
      if (!is.null(StructuredDataRequestObject$`healthMedicalBiomedicalUseRequired`)) {
        self$`healthMedicalBiomedicalUseRequired` <- StructuredDataRequestObject$`healthMedicalBiomedicalUseRequired`
      }
      if (!is.null(StructuredDataRequestObject$`diseaseUseRequired`)) {
        self$`diseaseUseRequired` <- ApiClient$new()$deserializeObj(StructuredDataRequestObject$`diseaseUseRequired`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(StructuredDataRequestObject$`commercialUseProhibited`)) {
        self$`commercialUseProhibited` <- StructuredDataRequestObject$`commercialUseProhibited`
      }
      if (!is.null(StructuredDataRequestObject$`forProfitUseProhibited`)) {
        self$`forProfitUseProhibited` <- StructuredDataRequestObject$`forProfitUseProhibited`
      }
      if (!is.null(StructuredDataRequestObject$`methodsResearchProhibited`)) {
        self$`methodsResearchProhibited` <- StructuredDataRequestObject$`methodsResearchProhibited`
      }
      if (!is.null(StructuredDataRequestObject$`aggregateLevelDataProhibited`)) {
        self$`aggregateLevelDataProhibited` <- StructuredDataRequestObject$`aggregateLevelDataProhibited`
      }
      if (!is.null(StructuredDataRequestObject$`controlsUseProhibited`)) {
        self$`controlsUseProhibited` <- StructuredDataRequestObject$`controlsUseProhibited`
      }
      if (!is.null(StructuredDataRequestObject$`genderUseRequired`)) {
        self$`genderUseRequired` <- StructuredDataRequestObject$`genderUseRequired`
      }
      if (!is.null(StructuredDataRequestObject$`pediatricResearchRequired`)) {
        self$`pediatricResearchRequired` <- StructuredDataRequestObject$`pediatricResearchRequired`
      }
      if (!is.null(StructuredDataRequestObject$`irbRequired`)) {
        self$`irbRequired` <- StructuredDataRequestObject$`irbRequired`
      }
      if (!is.null(StructuredDataRequestObject$`prefix`)) {
        self$`prefix` <- StructuredDataRequestObject$`prefix`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`generalResearchUse`)) {
        sprintf(
        '"generalResearchUse":
          "%s"
                ',
        self$`generalResearchUse`
        )},
        if (!is.null(self$`healthMedicalBiomedicalUseRequired`)) {
        sprintf(
        '"healthMedicalBiomedicalUseRequired":
          "%s"
                ',
        self$`healthMedicalBiomedicalUseRequired`
        )},
        if (!is.null(self$`diseaseUseRequired`)) {
        sprintf(
        '"diseaseUseRequired":
           [%s]
        ',
        paste(unlist(lapply(self$`diseaseUseRequired`, function(x) paste0('"', x, '"'))), collapse=",")
        )},
        if (!is.null(self$`commercialUseProhibited`)) {
        sprintf(
        '"commercialUseProhibited":
          "%s"
                ',
        self$`commercialUseProhibited`
        )},
        if (!is.null(self$`forProfitUseProhibited`)) {
        sprintf(
        '"forProfitUseProhibited":
          "%s"
                ',
        self$`forProfitUseProhibited`
        )},
        if (!is.null(self$`methodsResearchProhibited`)) {
        sprintf(
        '"methodsResearchProhibited":
          "%s"
                ',
        self$`methodsResearchProhibited`
        )},
        if (!is.null(self$`aggregateLevelDataProhibited`)) {
        sprintf(
        '"aggregateLevelDataProhibited":
          "%s"
                ',
        self$`aggregateLevelDataProhibited`
        )},
        if (!is.null(self$`controlsUseProhibited`)) {
        sprintf(
        '"controlsUseProhibited":
          "%s"
                ',
        self$`controlsUseProhibited`
        )},
        if (!is.null(self$`genderUseRequired`)) {
        sprintf(
        '"genderUseRequired":
          "%s"
                ',
        self$`genderUseRequired`
        )},
        if (!is.null(self$`pediatricResearchRequired`)) {
        sprintf(
        '"pediatricResearchRequired":
          "%s"
                ',
        self$`pediatricResearchRequired`
        )},
        if (!is.null(self$`irbRequired`)) {
        sprintf(
        '"irbRequired":
          "%s"
                ',
        self$`irbRequired`
        )},
        if (!is.null(self$`prefix`)) {
        sprintf(
        '"prefix":
          "%s"
                ',
        self$`prefix`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(StructuredDataRequestJson) {
      StructuredDataRequestObject <- jsonlite::fromJSON(StructuredDataRequestJson)
      self$`generalResearchUse` <- StructuredDataRequestObject$`generalResearchUse`
      self$`healthMedicalBiomedicalUseRequired` <- StructuredDataRequestObject$`healthMedicalBiomedicalUseRequired`
      self$`diseaseUseRequired` <- ApiClient$new()$deserializeObj(StructuredDataRequestObject$`diseaseUseRequired`, "array[character]", loadNamespace("openapi"))
      self$`commercialUseProhibited` <- StructuredDataRequestObject$`commercialUseProhibited`
      self$`forProfitUseProhibited` <- StructuredDataRequestObject$`forProfitUseProhibited`
      self$`methodsResearchProhibited` <- StructuredDataRequestObject$`methodsResearchProhibited`
      self$`aggregateLevelDataProhibited` <- StructuredDataRequestObject$`aggregateLevelDataProhibited`
      self$`controlsUseProhibited` <- StructuredDataRequestObject$`controlsUseProhibited`
      self$`genderUseRequired` <- StructuredDataRequestObject$`genderUseRequired`
      self$`pediatricResearchRequired` <- StructuredDataRequestObject$`pediatricResearchRequired`
      self$`irbRequired` <- StructuredDataRequestObject$`irbRequired`
      self$`prefix` <- StructuredDataRequestObject$`prefix`
      self
    }
  )
)

