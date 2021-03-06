% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_combos.R
\name{get_combos}
\alias{get_combos}
\title{combination function}
\usage{
get_combos(word)
}
\arguments{
\item{word}{a word (or vector of length one with multiple characters/digits)}
}
\description{
This function obtains all possible letter combinations within a word
}
\examples{
perms <- get_combos(word = "perms")
length(perms)
perms
}
\keyword{combinations}
