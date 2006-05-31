


\name{summary.gvlma}
\alias{summary.gvlma}
\alias{print.gvlma}
\alias{display.gvlmatests}
\title{Print Basic Information for a Gvlma Object}
\description{
Prints the basic information for a gvlma object, which is the output
object from the function \code{\link{gvlma}}.
}
\usage{
\method{summary}{gvlma}(object, \dots)
\method{print}{gvlma}(x, \dots)
display.gvlmatests(gvlmaobj)
}

\arguments{
  \item{x, object, gvlmaobj}{An object resulting from a call to gvlma.  It is a
    list containing the components of a call to lm plus an item with the
  name GlobalTest.}
  \item{\dots}{Additional arguments that are passed to \code{summary.lm}.}
}
\details{
  \code{print.gvlma} invokes print on the \code{lm} object and then calls
  \code{display.gvlmatests}.

  \code{summary.gvlma} invokes \code{summary} on the \code{lm} object with the
  additional \dots arguments and then calls
  \code{display.gvlmatests}.

  \code{display.gvlmatests} provides the test statistics, p-values and decision
  (whether linear models assumptions are satisfied) for the global and
  directional tests associated with the gvlma object.  The decision is
  reported at the level of significance used when the gvlma object was
  created.  See the argument \code{alphalevel} to \code{gvlma}.
  
}
\value{
  The value returned invisibly is a dataframe with row names indicating
  the global test and the 4 directional tests.  Variables are
  \item{Value}{Value of the test statistic.}
  \item{p-value}{p-value associated with the test.}
  \item{Decision}{Text string indicating whether the test statistic is
    significant at the significance level specified in the original call
    to \code{gvlma}.}
}
\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.} 


\author{Slate, EH \email{SlateEH@musc.edu} and Pena, EA
  \email{pena@stat.sc.edu}. }


\seealso{\code{\link{gvlma}}, \code{\link{display.gvlmatests}}, \code{\link{summary.lm}}}


\examples{
data(CarMileageData)
CarModelAssess <- gvlma(NumGallons ~ MilesLastFill, data = CarMileageData)
CarModelAssess
summary(CarModelAssess)
}
\keyword{print}% at least one, from doc/KEYWORDS

