#' swap function
#'
#' This function allows you to swap the position of two elements of a vector
#' @param x a vector
#' @param from the first element to swap
#' @param to the second element to swap
#' @keywords swap
#' @export
#' @examples
#' x <- c(1, 2, 3)
#' swap(x, 1, 3)

swap <- function(x, from, to) {
  x_swap <- x
  x_swap[from] <- x[to]
  x_swap[to] <- x[from]
  x_swap
}
