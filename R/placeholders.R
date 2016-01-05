#' @title aNewHope
#' @description Episode specific lorem ipsum
#' @param ... \code{swli()} parameters
#' 
#' @export
#' @describeIn Episodes Returns Episode 4 content
#' @examples 
#' aNewHope(paragraphs = 1)
aNewHope <- function(...){
  swli(type="e4",  ...)
}

#' @title theEmpireStrikesBack
#' @export
#' @describeIn Episodes Returns Episode 5 content
#' @examples 
#' theEmpireStrikesBack(paragraphs = 1)
theEmpireStrikesBack <- function(...){
  swli(type="e5",  ...)
}

#' @title returnOfTheJedi
#' @export
#' @describeIn Episodes Returns Episode 6 content
#' @examples 
#' returnOfTheJedi(paragraphs = 1)
returnOfTheJedi <- function(...){
  swli(type="e6",  ...)
}

#' @title people
#' @description Star Wars proper nouns
#' @param ... \code{swli()} parameters
#' @export
#' @describeIn Namechecks Returns character names
#' @examples 
#' people(paragraphs = 1)
people <- function(...){
  swli(type="people",  ...)
}

#' @title places
#' @export
#' @describeIn Namechecks Returns place names
#' @examples 
#' places(paragraphs = 1)
places <- function(...){
  swli(type="places",  ...)
}
