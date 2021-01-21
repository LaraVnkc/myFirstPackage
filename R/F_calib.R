#' the function calib
#'
#' Some more explanation
#'
#' @section Warning:
#' This function is not exported
#'
#' @param conc desc
#' @param OD desc
#'
#' @export
calib <- function(conc, OD){

  tmp <- data.frame(conc,OD)
  lm(conc ~ OD, data = tmp)

}
