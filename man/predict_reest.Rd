% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.R
\name{predict_reest}
\alias{predict_reest}
\alias{predict_reest.glmsmurf}
\title{Predictions Using Re-estimated Model}
\usage{
predict_reest(object, ...)

\method{predict_reest}{glmsmurf}(
  object,
  newdata = NULL,
  newoffset = NULL,
  type = c("link", "response", "terms"),
  ...
)
}
\arguments{
\item{object}{An object for which predictions are meaningful. 
E.g. an object of class '\code{\link[=glmsmurf-class]{glmsmurf}}', typically the result of a call to \code{\link{glmsmurf}} or \code{\link{glmsmurf.fit}}.}

\item{...}{Additional arguments which are currently ignored.}

\item{newdata}{Optionally, a data frame containing the predictors used in the prediction. 
This can only be used when \code{object} contains a formula. 
When \code{newdata} is omitted, the predictions are based on the data used to fit the model in \code{object}.}

\item{newoffset}{Optionally, a vector containing a new offset to be used in the prediction.
When \code{newoffset} is omitted, the predictions use the offset which was used to fit the model in \code{object}.}

\item{type}{Type of prediction. The default is on the scale of the linear predictors (\code{"link"}).
Another option is on the scale of the response variable (\code{"response"}). 
For type \code{"terms"} a matrix containing the fitted values of each term in the model, on the linear predictor scale, is returned.}
}
\value{
A vector containing the predicted values using the re-estimated model in \code{object}, 
        when this is available, or, otherwise, the predicted values using the estimated model in \code{object} with a warning.
}
\description{
Function to obtain predictions using the re-estimated model.
}
\examples{
## See example(glmsmurf) for examples
          
}
\seealso{
\code{\link{predict.glmsmurf}}, \code{\link[stats]{predict.glm}}, \code{\link[stats]{predict}}, 
         \code{\link{glmsmurf}}, \code{\link{glmsmurf-class}}
}
