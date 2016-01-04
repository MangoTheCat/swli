#' `swli` returns lorem ipsum text from Star Wars
#' 
#' Based on the forcem javascript library that generates
#' Star Wars text from different episodes. The installed
#' .js file is different to the github version - 
#' \code{window} was replaced with \code{global}.
#' 
#' When 0 paragraphs are requested, 5 are returned.
#'
#' @param paragraphs How many paragraphs should be returned
#' @param type Provide the episode (3 - 6) or proper noun type
#'               \code{c("e4", "e5", "e6", "places","people")}
#' @param src Change default value to pull from github
#'
#' @return swl Star Wars lorem ipsum vector
#' @export
swli<-function(paragraphs=3,type="e4",src="installed"){
  stopifnot(is.numeric(paragraphs)
            ,is.character(type)
            ,is.character(src)
            ,type %in% c("e4", "e5", "e6", "places","people")
            )
  ct<-new_context()
  jsLib<-ifelse(src=="installed"
                ,system.file("js","forcem.js", package = "swli")
                ,"https://raw.githubusercontent.com/scottyg/ForcemJS/master/forcem.js")
  ct$source(jsLib)
  swli<-ct$call("forcem",type,paragraphs)
  return(swli)
  }