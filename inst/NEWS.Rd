\name{NEWS}
\title{News for package \pkg{smurf}}
\encoding{UTF-8}

\section{Changes in version 1.1.5 (2023-03-22)}{

    \itemize{
      \item Remove dependency on \pkg{speedglm} as this package will be removed from CRAN on 31st March 2023.
      }
}

\section{Changes in version 1.1.4 (2023-01-30)}{

    \itemize{
      \item Change \code{C++} standard from \code{C++14} to \code{C++17} (default for \code{R 4.3.0}).
      }
}


\section{Changes in version 1.1.3 (2022-05-06)}{

    \itemize{
      \item Fix bug with \code{ifelse} and \code{NULL} when computing GLM penalty weights for a design matrix with full rank (\href{https://gitlab.com/TReynkens/smurf/-/issues/7}{#7}).
      }
}


\section{Changes in version 1.1.2 (2021-04-17)}{

    \itemize{
      \item Add \pkg{rmarkdown} to the Suggests field in the \code{DESCRIPTION} file to avoid problems with \pkg{knitr} version >= 1.32.
      }
}

\section{Changes in version 1.1.1 (2021-03-26)}{

    \itemize{
      \item Remove 'LazyData' from \code{DESCRIPTION} file as no data directory is present.
      }
}


\section{Changes in version 1.1.0 (2021-03-12)}{

  \subsection{Major changes}{
    \itemize{
      \item Only apply ridge penalty to relevant predictors when determining GLM penalty weights.
      \item Correctly determine if the design matrix has full rank.
      \item Optimal values of \code{lambda}, in examples and vignette, are re-determined after changes in computation of GLM penalty weights.
      \item Use \code{C++14} (instead of \code{C++11}) which requires \code{R} version 3.4 or higher.
      }
  }

  
  \subsection{Minor changes:}{
    \itemize{
      \item \code{glmsmurf}: Check that factors have at least two levels.
      \item Update Devriendt et al. (2021) reference.
    }
  }
}

\section{Changes in version 1.0.7 (2020-11-24)}{

  \subsection{Changes in \code{R}-code:}{
      \itemize{
        \item \code{plot_lambda}: Properly check whether the object \code{x} of class \code{glmsmurf} contains components related to the selection of the sparsity parameter \code{lambda}.
        \item Use named families for \pkg{glmnet} whenever possible as this is faster.
        }
  }
}


\section{Changes in version 1.0.6 (2020-05-16)}{

  \subsection{Changes in \code{R}-code:}{
      \itemize{
        \item Require at least version \code{4.0} of \pkg{glmnet} as this allows for more families to be used.
        }
  }
  
  \subsection{Changes in documentation:}{
      \itemize{
        \item \code{plot.glmsmurf}, \code{plot_reest.glmsmurf} and \code{plot_lambda.glmsmurf}: Link to \code{plot.default} instead of \code{plot} (\pkg{graphics}) to avoid warnings on R-4.0.0.
      }
  }
}


\section{Changes in version 1.0.5 (2020-03-19)}{

  \subsection{Changes in \code{R}-code:}{
      \itemize{
        \item Use numerical tolerance that is also suitable on platforms without a long double.
        \item Use five-fold instead of two-fold cross-validation in tests.
      }
  }
  
    \subsection{Miscellaneous changes:}{
      \itemize{
        \item Use \code{rent} dataset from \pkg{catdata} again as this package will no longer be archived.
        \item Use default date format for vignette date.
      }
  }
  
}

\section{Changes in version 1.0.4 (2020-02-09)}{

  \subsection{Changes in \code{R}-code:}{
      \itemize{
        \item Adapt test for input for prior weights to catch multiple warnings.
      }
  }
  
  \subsection{Documentation changes:}{
    \itemize{
      \item Use only one core to select the optimal value of \code{lambda} in the example of \code{plot_lambda}.
    }
  }
  
}

\section{Changes in version 1.0.3 (2020-02-07)}{

 \subsection{Changes in \code{R}-code:}{
  \itemize{
    \item Add extra tests for proximal operators, number of cross-validation folds and prior weights. 
   }
  }
  
  \subsection{Miscellaneous changes:}{
      \itemize{
        \item Add \code{rent} dataset from \pkg{catdata} as this package is scheduled to be archived on CRAN on 14 February 2020.
        \item Correct README to display correct pipeline status on GitLab.
      }
  }
  
}


\section{Changes in version 1.0.2 (2019-11-25)}{

 \subsection{Changes in \code{R}-code:}{
  \itemize{
    \item Select first element of \code{class(obj)} when \code{obj} might be a \code{matrix} object as \code{matrix} objects will also inherit from class \code{array} in R 4.0.0 (and hence \code{class(obj)} will be of length > 1).
    \item Add an extra test for the output of a \code{glmsmurf} object where a Graph-Guided Fused Lasso is used.
   }
  }
  
  \subsection{Documentation changes:}{
    \itemize{
      \item Update to \pkg{roxygen2} version 7.0.0.
      \item Add empty first line to \code{Rent_example2.R} to avoid problems with \pkg{roxygen2} version 7.0.0.
      \item Move example files from \code{/inst} to \code{/inst/examples}.
    }
  }
} 


\section{Changes in version 1.0.1 (2019-05-11)}{

  \subsection{Changes in \code{R}-code:}{
    \itemize{
      \item \code{glmsmurf}: Improve handling of coefficient names.
    }
  }
  
  \subsection{Documentation changes:}{
    \itemize{
      \item \code{plot_lambda}: Replace \code{\\dontrun} by \code{\\donttest} as requested by CRAN.
    }
  }
} 
  
\section{Changes in version 1.0.0 (2018-12-03)}{

  \subsection{Changes in \code{R}-code:}{
      \itemize{
        \item \code{p}: change order of \code{group} and \code{refcat} arguments.
        \item \code{glmsmurf}: catch errors when computing the maximum value of lambda (\href{https://gitlab.com/TReynkens/smurf/-/issues/2}{#2}).
        \item Fix bug in standardization when a continuous predictor is penalized with a Lasso or Group Lasso penalty (\href{https://gitlab.com/TReynkens/smurf/-/issues/4}{#4}).
      }
  }
  
  \subsection{Documentation changes:}{
    \itemize{
      \item Move examples for S3 methods into example for \code{glmsmurf}.
    }
  }
  
  \subsection{Miscellaneous changes:}{
      \itemize{
        \item Remove maintainer field in DESCRIPTION as it is already set using Authors@R.
        \item Change GitLab URL in README.
        \item Update Devriendt et al. (2018) reference.
        \item Add reference to Devriendt et al. (2018) in DESCRIPTION.
        \item First release on CRAN.
      }
  }
}


\section{Changes in version 0.4.1 (2018-09-25)}{

  \itemize{
    \item First public release on GitLab.
  }
  
}


\section{Changes in version 0.4.0 (2018-09-24)}{

  \subsection{Changes in \code{R}-code:}{
      \itemize{
        \item \code{glmsmurf}: Use "\code{cv1se}" to indicate selection of lambda using cross-validation with the one standard error rule. E.g. \code{"cv.dev.1se"} is renamed to \code{"cv1se.dev"}.
      }
  }
  
  \subsection{Changes in documentation:}{
      \itemize{
        \item \code{glmsmurf}: Add note that selected value of lambda for out-of-sample selection and cross-validation is not (always) deterministic.
        \item General documentation updates.
      }
  }
  
  \subsection{Miscellaneous changes:}{
      \itemize{
        \item Add continuous integration (CI) on GitLab.
        \item Add tests for \code{plot}, \code{plot_lambda} and \code{summary} functions.
        \item Add tests for elements of \code{glmsmurf}-class related to selection of lambda.
        \item General vignette update.
        \item Add LICENSE file.
      }
  }
  
}

\section{Changes in version 0.3.0 (2018-09-17)}{

  \itemize{
    \item First release on GitLab.
  }
  
}

