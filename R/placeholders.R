#' @title aNewHope
#' @description Episode specific lorem ipsum
#' @param ... \code{swli()} parameters
#' 
#' @export
#' @describeIn Episodes Returns Episode 4 content
aNewHope<-function(...){
  swli(type="e4", ...)
}

#' @title theEmpireStrikesBack
#' @export
#' @describeIn Episodes Returns Episode 5 content
theEmpireStrikesBack<-function(...){
  swli(type="e5", ...)
}

#' @title returnOfTheJedi
#' @export
#' @describeIn Episodes Returns Episode 6 content
returnOfTheJedi<-function(...){
  swli(type="e6", ...)
}

#' @title people
#' @description Star Wars proper nouns
#' @param ... \code{swli()} parameters
#' @export
#' @describeIn Namechecks Returns character names
people<-function(...){
  swli(type="people", ...)
}

#' @title places
#' @export
#' @describeIn Namechecks Returns place names
places<-function(...){
  swli(type="places", ...)
}
