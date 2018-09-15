#' combination function
#'
#' This function obtains all possible letter combinations within a word
#' @param word a word (or vector of length one with multiple characters/digits)
#' @keywords combinations
#' @export
#' @examples
#' perms <- get_combos("perms")
#' length(perms)
#' perms

get_combos <- function(word) {
  combos <- list()
  for(i in 1:nchar(word)) {
    all_perms <- permute(word)
    all_perms_i <- unlist(lapply(all_perms, substr, 1, i))
    all_perms_i_letter <- lapply(strsplit(all_perms_i, ""), sort)
    unique_perms <- lapply(unique(all_perms_i_letter), paste, collapse = "")
    combos[[i]] <- unlist(unique_perms)
  }
  combos
}

get_combos(word)
