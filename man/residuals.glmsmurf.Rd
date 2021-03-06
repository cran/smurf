% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/residuals.R
\name{residuals.glmsmurf}
\alias{residuals.glmsmurf}
\alias{resid.glmsmurf}
\title{Residuals of Estimated Model}
\usage{
\method{residuals}{glmsmurf}(
  object,
  type = c("deviance", "pearson", "working", "response", "partial"),
  ...
)

\method{resid}{glmsmurf}(
  object,
  type = c("deviance", "pearson", "working", "response", "partial"),
  ...
)
}
\arguments{
\item{object}{An object of class '\code{\link[=glmsmurf-class]{glmsmurf}}', typically the result of a call to \code{\link{glmsmurf}} or \code{\link{glmsmurf.fit}}.}

\item{type}{Type of residuals that should be returned. One of \code{"deviance"} (default), 
\code{"pearson"}, \code{"working"}, \code{"response"} or \code{"partial"}.}

\item{...}{Additional arguments which are currently ignored.}
}
\value{
A vector containing the residuals of the estimated model in \code{object}.
}
\description{
Function to extract the residuals of the estimated model. 
             \code{resid} is an \emph{alias} for it.
}
\details{
See \code{\link[stats]{glm.summaries}} for an overview of the different types of residuals.
}
\examples{
## See example(glmsmurf) for examples
  
}
\seealso{
\code{\link{residuals_reest}}, \code{\link{residuals}}, \code{\link[stats]{glm.summaries}}, \code{\link{glmsmurf-class}}
}
