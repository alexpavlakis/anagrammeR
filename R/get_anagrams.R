#' anagram function
#'
#' This function returns all possible words within a word, scrabble style
#' @param word a word (or vector of length one with multiple characters/digits)
#' @param dictionary which dictionary should be used to look up words?  current options are 'scrabble' for the official scrabble dictionary and 'words' for a more expansive dictionary (including e.g. "mr").
#' @keywords anagrams
#' @export
#' @examples
#' perms <- get_anagrams(word = "perms")
#' length(perms)
#' perms

get_anagrams <- function(word,
                         dictionary = "scrabble") {
  if(dictionary == "scrabble" || is.null(dictionary)) {
    dictionary <- scrabble
  } else {
    dictionary <- words
  }
  # Get all possible letter combinations
  combos <- get_combos(word)
  # Get all permutations of each combination
  permutations <- list()
  permutations[[1]] <- combos[[1]]
  for(j in 2:length(combos)) {
    permutations[[j]] <- list()
  }
  for(i in 1:length(combos)) {
    for(j in 1:length(combos[[i]])) {
      if(i > 1) {
        permutations[[i]][[j]] <- permute(combos[[i]][j])
      }
    }
  }
  # Lookup all possible permutations in the dictionary
  all_words <- list()
  for(i in 1:length(permutations)) {
    perms <- unlist(permutations[[i]])
    all_words[[i]] <- unique(perms[perms %in% words])
  }
  all_words
}
