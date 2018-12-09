\name{NEWS}
\title{News for package \pkg{smurf}}
\encoding{UTF-8}

\section{Changes in version 1.0.0 (2018-12-03)}{

  \subsection{Changes in \code{R}-code:}{
      \itemize{
        \item \code{p}: change order of \code{group} and \code{refcat} arguments.
        \item \code{mtpglm}: catch errors when computing the maximum value of lambda (\href{https://gitlab.com/TReynkens/smurf/issues/2}{#2}).
        \item Fix bug in standardization when a continuous predictor is penalized with a Lasso or Group Lasso penalty (\href{https://gitlab.com/TReynkens/smurf/issues/4}{#4}).
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

