\name{gvlma}
\alias{gvlma}
\alias{gvlma.form}
\alias{gvlma.lm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create a Gvlma Object}

\description{
Top-level function for Global Validation of Linear Models Assumptions.
}

\usage{
gvlma(x, data, alphalevel = 0.05, timeseq, \dots)
gvlma.form(formula, data, alphalevel = 0.05, timeseq = 1:nrow(data), \dots)
gvlma.lm(lmobj, alphalevel = 0.05, timeseq)
}

\arguments{
  \item{x}{Either a formula, in which case \code{gvlma.form} will be
    called, or a linear models object, in which case \code{gvlma.lm}
    will be invoked.}
  \item{formula}{A linear models formula interpretable within the
    dataframe \code{data}.  Should have a single reponse variable.}
  \item{lmobj}{An object resulting from a call to \code{lm}.}
  \item{data}{Required if \code{x} is a formula, ignored if \code{x} is
    an lm object.  A dataframe in which the variables in the formula
    \code{x} can be interpreted.}
  \item{alphalevel}{Level of significance at which to perform the global
  and directional tests for linear models assumptions.}
  \item{timeseq}{A vector of length the number of observations in the
    linear model that gives a "time ordering" for the observations.
    This time sequence is used in the heteroscedasticity test statistic.
  Defaults to 1:n where n is the number of observations in the linear model.}
  \item{\dots}{Additional arguments such as \code{subset}  that are
    passed on to the call to 
    \code{lm} when \code{x} is a formula. Note that \code{weights}, while
    being passed on to the call to \code{lm}, will not be used in any
    special way in the \code{gvlma} computations.}
}


\details{
\code{gvlma} is the top-level function to create a \code{gvlma} object
for assessment of linear models assumptions.
}

\value{A \code{gvlma} object is returned.  This is a list of class
  \dQuote{gvlma} that contains all of the components returned by the call to
  \code{lm} for fitting the linear model, plus an additional component
  entitled \dQuote{GlobalTest.}  This new \code{GlobalTest} component is a list with
  the following components:
  \item{LevelOfSignificance }{The level of significance at which the
    decisions reported for the global and directional tests were made.}
  \item{GlobalStat4}{A list consisting of the components \code{Value},
    \code{pvalue} and \code{Decision} containing the global test statistic value,
    associated p-value, and text phrase reporting the decision
    concerning appropriateness of the linear model assumptions.}
  \item{DirectionalStat1}{A list consisting of the \code{Value},
    \code{pvalue} and \code{Decision} associated with the skewness
    directional test statistic.}
  \item{DirectionalStat2}{A list consisting of the \code{Value},
    \code{pvalue} and \code{Decision} associated with the kurtosis
    directional test statistic.}
  \item{DirectionalStat3}{A list consisting of the \code{Value},
    \code{pvalue} and \code{Decision} associated with the link function
    directional test statistic.}
  \item{DirectionalStat4}{A list consisting of the \code{Value},
    \code{pvalue} and \code{Decision} associated with the heteroscedasticity
    directional test statistic.}
  \item{timeseq}{The ordering of the observations used when computing the
    heteroscedasticity directional statistic.}
  \item{call}{The call used to invoke \code{gvlma}.}

}

\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.} 

\author{Slate, EH \email{SlateEH@musc.edu} and Pena, EA
  \email{pena@stat.sc.edu}. }

\seealso{\code{\link{plot.gvlma}}, \code{\link{deletion.gvlma}},
  \code{\link{update.gvlma}},
  \code{\link{lm}}} 

\examples{
data(CarMileageData)
CarModelAssess <- gvlma(NumGallons ~ MilesLastFill + NumDaysBetw,
                        data = CarMileageData)
CarModelAssess
summary(CarModelAssess)
CarModel2 <- gvlma(lm(NumGallons ~ MilesLastFill + NumDaysBetw,
                      data = CarMileageData))
CarModel2
summary(CarModel2)
plot(CarModel2)
}
\keyword{regression}% at least one, from doc/KEYWORDS

