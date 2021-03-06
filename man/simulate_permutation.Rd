% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SimPermutation.R
\name{simulate_permutation}
\alias{simulate_permutation}
\title{Rolling Time Series Permutation.}
\usage{
simulate_permutation(logrets, window, cluster = NULL, overlapping = FALSE)
}
\arguments{
\item{logrets}{zoo :: A logarithmic return time series.}

\item{window}{numeric :: The window size over which to permute.}

\item{cluster}{SOCKCluster :: A cluster for running this in parallel.}

\item{overlapping}{logical :: Compute overlapping permutations? TRUE or FALSE.}
}
\value{
The logarithmic returns shuffled locally in time in time chunks window-size big.
}
\description{
Produce a variation of the given time series by means of a rolling-window permutation transformation.
}
\details{
This function is used to compute a rolling-window permutation of the given time series. This permutation
has the same moments of the original data over any length of returns sufficiently larger than the window size but
has a randomized order. This is a good benchmark for randomness tests because it does not assume any prior returns
distribution, also called a specification, against which the returns are being tested e.g. Gaussian. Two options are
available for the permutation: overlapping or non-overlapping. Overlapping permutations do not place a strict bound
on the distance any two originally subsequent returns may be from one another in the permutated returns.
}

