<!-- README.md is generated from README.Rmd. Please edit that file -->
anagrammeR
==========

The goal of anagrammeR is to provide functionality for finding all words that can be made from a combination of letters (scrabble style).

`get_anagrams` returns a list of all subwords from a word; `permute` returns all possible permutations of a string using Heap's algorithm; `get_combos` returns a list of all possible letter combinations in a word; `swap` swaps the position of two elements of a vector (helper function for Heap's algorithm).

Example usage
-------------

``` r
# Get anagrams
words <- get_anagrams("words")
print(words)

# Get permutations 
perms <- permute("perms")
print(perms)

# Get Combos
combos <- get_combos("combo")

# Swap
x <- seq(1, 3, 1)
swap(x, 1, 3)
```
