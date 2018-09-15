#' permutation function
#'
#' This function uses Heap's algorithm to obtain all permutations of a word
#' @param word a word (or vector of length one with multiple characters/digits)
#' @keywords permute
#' @export
#' @examples
#' perms <- permute("perms")
#' length(perms)
#' head(perms)

permute <- function(word) {
  if(!is.character(word)) {
    word <- as.character(word)
  }
  split_word <- unlist(strsplit(word, ""))
  n <- length(split_word)
  A <- split_word
  cl <- rep(1, n)
  perms <- word
  i = 1
  while(i < (n + 1)) {
    if(cl[i] < i) {
      if((i-1)%%2 == 0) {
        temp_perm <- paste(swap(A, 1, i), collapse = "")
      } else {
        temp_perm <- paste(swap(A, cl[i], i), collapse = "")
      }
      index <- length(perms) + 1
      perms[index] <- temp_perm
      A <- unlist(strsplit(temp_perm, ""))
      cl[i] <- cl[i] + 1
      i <- 1
    } else {
      cl[i] <- 1
      i = i + 1
    }
  }
  perms
}
