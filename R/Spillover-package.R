#' Spillover
#' 
#' @name Spillover
#' @docType package
#' @aliases Spillover Spillover-package
#' @description Spillover index based on both, orthogonalized and generalized forecast error variance decomposition of a VAR(p) for n step ahead forecast. It computes both orthogonalized and generalized directional spillover indices proposed by Diebold and Yilmaz (2009, 2012)
#' @author Jilber Urbina
#' @keywords package
#' @references
#'  Diebold, F. X. & Yilmaz, K. (2009). \emph{Measuring Financial Asset Return and Volatility Spillovers, with Application to Global Equity Markets}. The Economic Journal, 119, 158-171.
#'  
#'  Diebold, F. X. & Yilmaz, K.(2012). \emph{Better to Give than to Receive: Predictive Directional Measurement of Volatility Spillovers}. International Journal of Forecasting. 28, 57–66.
#'  
#'  Hamilton, J. (1994), \emph{Time Series Analysis}, Princeton University Press, Princeton.
#'  
#'  Lutkepohl, H. (2006), \emph{New Introduction to Multiple Time Series Analysis}, Springer, New York.  
#'  
#'  Pesaran, M. H. and Shin, Y. (1998). \emph{Generalized impulse response analysis in linear multivariate models}. Economics Letters, 58(1):17-29. 
NULL

#' Daily Stock Prices 
#' 
#' A dataset consisting of 3507 daily observations on closed price for six leading stock indices: 
#' S&P 500 (US), FTSE 100 (UK), EURO STOXX 50 (Eurozone), BOVESPA (Brazil), NIKKEI 225 (Japan) and
#' S&P ASX 200 (Australia). EURO STOXX 50 covers 50 stocks from 12 Eurozone countries: Austria, Belgium, 
#' Finland, France, Germany, Greece, Ireland, Italy, Luxembourg, the Netherlands, Portugal and Spain.
#' The period for this dataset is from December 31, 1999 to June 10, 2013. All series are in US Dollars.
#' 
#' @name stock.prices
#' @docType data
#' @keywords dataset
#' @format a \code{zoo}-class dataset
#' @import zoo
#' @examples
#' data(stock.prices)
#' head(stock.prices)  # First 6 observations
#' tail(stock.prices)  # Last 6 observations
NULL

#' Two-days Rolling Average Returns
#' 
#' A dataset of class \code{zoo} consisting of 1632 two-days rolling average observations on returns based on 
#' closed price for six leading stock indices: 
#' S&P 500 (US), FTSE 100 (UK), EURO STOXX 50 (Eurozone), BOVESPA (Brazil), NIKKEI 225 (Japan) and
#' S&P ASX 200 (Australia). EURO STOXX 50 covers 50 stocks from 12 Eurozone countries: Austria, Belgium, 
#' Finland, France, Germany, Greece, Ireland, Italy, Luxembourg, the Netherlands, Portugal and Spain.
#' The period for this dataset is from June 16, 2003 to September 15, 2009. All series are in US Dollars.
#' 
#' @name rol.returns
#' @docType data
#' @keywords dataset
#' @format a \code{zoo}-class dataset
#' @import zoo
#' @examples
#' data(rol.returns)
#' head(rol.returns)  # First 6 observations
#' tail(rol.returns)  # Last 6 observations
NULL

#' Two-days Rolling Average Intra-day Volatilities
#' 
#' A dataset of class \code{zoo} consisting of 1633 two-days rolling average observations on 
#' intraday volatilities based on Garman and Klass (1980) for six leading stock indices: 
#' S&P 500 (US), FTSE 100 (UK), EURO STOXX 50 (Eurozone), BOVESPA (Brazil), NIKKEI 225 (Japan) and
#' S&P ASX 200 (Australia). EURO STOXX 50 covers 50 stocks from 12 Eurozone countries: Austria, Belgium, 
#' Finland, France, Germany, Greece, Ireland, Italy, Luxembourg, the Netherlands, Portugal and Spain.
#' The period for this dataset is from June 13, 2003 to September 15, 2009. All series are in US Dollars.
#' 
#' @name rol.vol
#' @docType data
#' @keywords dataset
#' @format a \code{zoo}-class dataset
#' @import zoo
#' @examples
#' data(rol.vol)
#' head(rol.vol)  # First 6 observations
#' tail(rol.vol)  # Last 6 observations
NULL

#' Diebold and Yilmaz (2012) dataset
#' 
#' A dataset consisting of 2771 log volatility daily observations of 4 variables: 
#' Stocks (SP500), Bonds (R_10Y), Commodities (DJUBSCOM) and  FX (USDX).
#' The period for this dataset is from Jan 25, 1999 to Jan 29, 2010.
#' 
#' @name dy2012
#' @docType data
#' @keywords dataset
#' @format a \code{data.frame}-class dataset
#' @references
#' Diebold, F. X. & Yilmaz, K.(2012). \emph{Better to Give than to Receive: Predictive Directional Measurement of Volatility Spillovers}. International Journal of Forecasting. 28, 57–66.
#' @examples
#' data(dy2012)
#' head(dy2012)  
#' summary(dy2012)  # Same as Diebold and Yilmaz (2012) summary statistics
NULL

#' Diebold and Yilmaz (2009) dataset
#' 
#' A dataset consisting of 829 weekly observations of Global Stock Market Returns, 10/1/1992 -- 23/11/2007.
#' Find details in Diebold and Yilmaz (2009)
#' 
#' @name dy2009
#' @docType data
#' @keywords dataset
#' @format a \code{data.frame}-class dataset
#' @references 
#'  Diebold, F. X. & Yilmaz, K. (2009). \emph{Measuring Financial Asset Return and Volatility Spillovers, with Application to Global Equity Markets}. The Economic Journal, 119, 158--171
#' @examples
#' data(dy2009)
#' head(dy2009)  
#' summary(dy2009)  # Same as Diebold and Yilmaz (2012) summary statistics
NULL
