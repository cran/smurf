#' Rent prices in Munich
#'
#' A dataset containing the rent prices for appartments in Munich.
#'
#' @encoding UTF-8
#' @format A data frame with 2053 rows and 13 variables:
#' \describe{
#'   \item{rent}{Rent price, in Euro.}
#'   \item{rentm}{Rent price per square metre, in Euro/square metre.}
#'   \item{size}{Floor area of the appartment, in square metres.}
#'   \item{rooms}{Number of rooms in the appartment.}
#'   \item{year}{Construction year of the building.}
#'   \item{area}{Urban district of the appartment, see Oelker and Tutz (2017).}
#'   \item{good}{The quality of the house has levels "fair", "good" and "excellent".
#'   These levels correspond to 0, 1 and 2 and can be computed using the formula \eqn{good + 2 * best}.}
#'   \item{best}{See \code{good}.}
#'   \item{warm}{Is a hot water supply present?, yes/no (0/1).}
#'   \item{central}{Is central heating present?, yes/no (0/1).} 
#'   \item{tiles}{Does the bathroom have tiles?, yes/no (0/1).}     
#'   \item{bathextra}{Is there supplementary equipment in the bathroom?, no/yes (0/1).}  
#'   \item{kitchen}{Is the kitchen well-equiped?, no/yes (0/1).}  
#' }
#' @source This dataset was originally contained in the package \pkg{catdata} which is scheduled to be archived on CRAN on 14 February 2020.
#' 
#' @references Fahrmeir, L., Belitz, C., Biller, C., Brezger, A., Heim, S., Hennerfeind, A. and Jerak, A. (2007). "Statistik. Dokumentation
#'und Analysen", \emph{Landeshauptstadt München, Sozialreferat, Amt für Wohnen und Migration}.
#'
#' Gertheiss, J. and Tutz, G. (2010). "Sparse modeling of categorial explanatory variables", \emph{The Annals of Applied Statistics}, 4(4), 2150--2180.
#'
#' Oelker, M.-R. and Tutz, G. (2017). "A uniform framework for the combination of penalties in generalized structured models", \emph{Advances in Data Analysis and Classification}, 11(1), 97--120.
"rent"


