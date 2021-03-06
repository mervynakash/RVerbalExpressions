% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/digit.R
\name{rx_digit}
\alias{rx_digit}
\alias{rx_digits}
\title{Match a digit (0–9).}
\usage{
rx_digit(.data = NULL, inverse = FALSE)

rx_digits(.data = NULL, n = 1, inverse = FALSE)
}
\arguments{
\item{.data}{Expression to append, typically pulled from the pipe \code{\%>\%}}

\item{inverse}{Invert match behavior, defaults to \code{FALSE} (match
digit characters). Use \code{FALSE} to \emph{not} match digit characters.}

\item{n}{Exact number of digits to match.}
}
\description{
The function \code{rx_digit()}looks for tabs with the following
expression: \code{\%\%d} and matches single digit. Plural version matches
specified number of digits \code{n} (equivalent to \code{rx_digit() \%>\% rx_count(n)}).
}
\examples{
rx_digit()
rx_digit(inverse = TRUE)

# create an expression
x <- rx_digit()

# create input
string <- "1 apple"

# extract match
regmatches(string, regexpr(x, string))
}
