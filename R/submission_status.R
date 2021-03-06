# FireCloud
#
# FireCloud API 
#
# The version of the OpenAPI document: 0.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title SubmissionStatus
#'
#' @description SubmissionStatus Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SubmissionStatus <- R6::R6Class(
    "SubmissionStatus",
    public = list(
        initialize = function(...) {
            local.optional.var <- list(...)
            val <- unlist(local.optional.var)
            enumvec <- .parse_SubmissionStatus()

            stopifnot(length(val) == 1L)

            if (!val %in% enumvec)
                stop("Use one of the valid values: ",
                    paste0(enumvec, collapse = ", "))
            private$value <- val
        },
        toJSON = function() {
            jsonlite::toJSON(private$value, auto_unbox = TRUE)
        },
        fromJSON = function(SubmissionStatusJson) {
            private$value <- jsonlite::fromJSON(SubmissionStatusJson,
                simplifyVector = FALSE)
            self
        },
        toJSONString = function() {
            as.character(jsonlite::toJSON(private$value,
                auto_unbox = TRUE))
        },
        fromJSONString = function(SubmissionStatusJson) {
            private$value <- jsonlite::fromJSON(SubmissionStatusJson,
                simplifyVector = FALSE)
            self
        }
    ),
    private = list(
        value = NULL
    )
)

# add to utils.R
.parse_SubmissionStatus <- function(vals) {
    res <- gsub("^\\[|\\]$", "",
        "[Accepted, Evaluating, Submitting, Submitted, Aborting, Aborted, Done]"
    )
    unlist(strsplit(res, ", "))
}


