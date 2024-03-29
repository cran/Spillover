% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamic_spillover.R
\name{dynamic.spillover}
\alias{dynamic.spillover}
\title{dynamnic_spillover is a function for estimating DY directional spillovers.}
\usage{
dynamic.spillover(
  data,
  width,
  n.ahead = 10,
  standardized = TRUE,
  na.fill = FALSE,
  remove.own = TRUE,
  ...
)
}
\arguments{
\item{data}{a data.frame consisting of dates in its first column and numeric variables for the others}

\item{width}{a integer specifying the window width in number of observations.}

\item{n.ahead}{An integer indicating the how many steps ahead the spillover should be forecasted.}

\item{standardized}{A logical value indicating whether the values should be divided by the number of columns to get a percentage.}

\item{na.fill}{A logical value for filling with NA at the begining window due to \code{width}.}

\item{remove.own}{should own directional spillover be removed?}

\item{...}{Further arguments to be passed to var function}
}
\value{
A list of data.frames holding all directional spillovers as described in Diebold and Yilmaz (2012)
}
\description{
dynamnic_spillover is a function for estimating DY directional spillovers.
}
\examples{
data(dy2012)
\donttest{
dy_results <- dynamic.spillover(data=dy2012, width=200, remove.own = FALSE) 
} 

}
