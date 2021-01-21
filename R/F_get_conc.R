#' get a new concentration (title)
#'
#' It calculates a new concentration based on a calbration curve (description).
#'  It uses internally the function \code{\link{calib}}.
#'
#' here you can give more details
#'
#' those details they can be multiple paragraphs
#'
#' @param conc takes a numeric vector with concentrations
#' @param OD takes optical densities
#' @param new takes vector with...
#' @param ... currently disregarded
#'
#' @return the predictions
#'
#' @seealso \code{\link{calib}}.
#'
#' @examples
#' conc <- 1:10
#' OD <- 10:1
#' get_conc(conc, OD, 4.5)
#'
#' @export
get_conc <- function(conc, OD, new, ...){
  tmp <- calib(conc, OD)
  tmp[1] + new*tmp[2]
}
