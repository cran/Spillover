% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/roll_net.R
\name{roll.net}
\alias{roll.net}
\title{Dynamic Spillover Index}
\usage{
roll.net(
  data,
  width,
  n.ahead = 10,
  index = c("orthogonalized", "generalized"),
  ortho.type = c("partial", "total"),
  ...
)
}
\arguments{
\item{data}{Object of class \sQuote{\code{zoo}}.}

\item{width}{An integer specifying the window width which is aligned to the original sample.}

\item{n.ahead}{An integer indicating the how many steps ahead the spillover should be forecasted.}

\item{index}{A character string indicating whether the orthogonalized or the generalized index is computed.}

\item{ortho.type}{A character string indicating the type of orthogonalized index is required. \code{"partial"} takes a random sample out of all the possible combinations generated for the Choleski decomposition, while \code{"total"} uses all the combinations, therefore it takes more time to finish.}

\item{...}{Further arguments to be passed to \code{VAR} function from vars package.}
}
\value{
A \code{zoo} object holding all the net spillover index estimations.
}
\description{
Estimates the dynamic spillover index given a moving window as described in Diebold and Yilmaz (2012). We recommend switching to \code{dynamic.spillover}.
}
\examples{
\donttest{
data(dy2012) 
G_net <- roll.net(as.zoo(dy2012[1:300,c(2,3,4)]), width = 200, index="generalized")

data(dy2012)
# orthogonalized rolling net spillover index, based on a VAR(2)
O_net_dy2012 <- roll.net(as.zoo(dy2012[,-1]), width = 200) 
# Generalized rolling net spillover index, based on a VAR(2)
G_net_dy2012 <- roll.net(as.zoo(dy2012[,-1]), width = 200, index="generalized")
}
}
\references{
Diebold, F. X. & Yilmaz, K.(2012). \emph{Better to Give than to Receive: Predictive Directional Measurement of Volatility Spillovers}. International Journal of Forecasting.
}
\author{
Jilber Urbina
}
