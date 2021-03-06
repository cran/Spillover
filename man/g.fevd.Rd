% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/g.fevd.R
\name{g.fevd}
\alias{g.fevd}
\title{Generalized Forecast Error Variance Decomposition}
\usage{
g.fevd(x, n.ahead = 10, normalized = TRUE)
}
\arguments{
\item{x}{Object of class \sQuote{\code{varest}} generated by \code{VAR()} from vars package.}

\item{n.ahead}{Integer specifying the steps ahead.}

\item{normalized}{a logical value indicating whether the result should be normalized to sum up to 1, see Details}
}
\value{
A list of length \emph{K} holding the generalized forecast error variances as matrices. This is an object of class \sQuote{\code{varfevd}} from vars package.
}
\description{
Computes the generalized forecast error variance decomposition of a VAR(p) for \code{n.ahead} steps.
}
\details{
When \code{normalized=FALSE} this function computes the generalized forecast error variance decomposition proposed by Pesaran and Shin (1998) which takes the form:
 \deqn{
     \alpha _{ij}^{g}(h) = \frac{\sigma_{ii}^{-1}\sum_{l=0}^{h-1}(\mathbf{e'}_{i}\Theta _{l}\Sigma_{\varepsilon}\mathbf{e}_{j})^{2}}{\sum_{l=0}^{h-1}(\mathbf{e'}_{i}\Theta _{l}\Sigma _{\varepsilon }\Theta'_{l}\mathbf{e}_{i})}, \quad i,j = 0,1,2\ldots, K
     }{
     \alpha_ij^g(h) = \sigma_ii^-1 \sum_l=0^h-1 (e'_i \Theta_l \Sigma_\epsilon e_j)^2 / \sum_l=0^h-1 (e'_i \Theta_l \Sigma_\epsilon \Theta'_l e_i),       i,j = 0,1,2 ..., K 
     }
     
 Where \eqn{\mathbf{\Theta}_{l}}{\Theta_l}, are the coefficients matrix of the MA representation of the VAR model, \eqn{\mathbf{\Sigma}_{\varepsilon}}{\Sigma_\epsilon} 
 is the variance matrix of the reduced-form error vector \eqn{\varepsilon}{\epsilon}, \eqn{\sigma_{ii}}{\sigma_ii} is the standard deviation of the error term for the 
 \eqn{ith}{ith} equation and \eqn{e_{i}}{e_i} and \eqn{e_{j}}{e_j} are selection vectors with ones as the \emph{ith} element and zeros elsewhere. 
   
 If \code{normalized=TRUE} (the default value) then \code{g.fevd} computes:
 \deqn{
 \tilde{a}_{ij}^{g}(h) = \frac{a_{ij}^{g}(h)} {\sum_{j=1}^{K} a_{ij}^{g}(h)} 
 }{
 \tilde{a}_ij^g(h) = a_ij^g(h) / \sum_j=1^K a_ij^g(h) 
 } 
 This fact implies the normalization is simply each entry of the generalized fevd divided by the its corresponding row sum.
}
\examples{
library(vars)
data(stock.prices)
stocks <- stock.prices[,1:2]
VAR.1 <- VAR(stocks)
g.fevd(VAR.1, n.ahead = 10) # normalized 
g.fevd(VAR.1, n.ahead = 10, normalized=FALSE) # Not normalized 
}
\references{
Pesaran, M. H. and Shin, Y. (1998). \emph{Generalized impulse response analysis in linear multivariate models}. Economics Letters, 58(1):17-29.
}
\author{
Jilber Urbina
}
\keyword{Generalized}
\keyword{decomposition}
\keyword{error}
\keyword{fevd}
\keyword{g.fevd}
\keyword{variance}
