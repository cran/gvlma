
\name{update.gvlma}
\alias{update.gvlma}
\title{Update a Gvlma Object}
\description{
Update a gvlma object with changes to the linear model, the level
of significance for global tests, or the time sequence used for the
heteroscedasticity directional test.
}


\usage{
\method{update}{gvlma}(object, formula, \dots)
}


\arguments{
  \item{object}{A gvlma object resulting from a call to \code{gvlma}.}
  \item{formula}{(optional) A new formula describing the underlying linear
    model.}
  \item{\dots}{Additional arguments to be changed from the original call
  to gvlma.  These may include arguments to the \code{lm} function, such
as \code{subset}, as well as the gvlma-specific arguments
\code{alphalevel} and \code{timeseq}. Internal note: The function
\code{deletion.gvlma}
passes the argument \code{warn = FALSE} to suppress warnings about a
time sequence of incorrect length.}
}


\details{
All arguments other than \code{alphalevel} and \code{timeseq} (and
\code{warn}) are passed
on to a call to \code{update} for the underlying linear model.

If \code{alphalevel} is
specified, then subsequent displays of the global and directional test
statistic decisions will be based on the new level of significance.  If
\code{timeseq} is specified, then the heteroscdasticity direction test,
\eqn{S^2_4}, will be updated to use the new time sequence.
}
\value{
A new gvlma object is returned.
}


\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.}


\author{Slate, EH \email{slate@stat.fsu.edu} and Pena, EA
  \email{pena@stat.sc.edu}. }

\seealso{\code{\link{gvlma}},\code{\link{update.default}} }


\examples{
data(CarMileageData)
CarModelAssess <- gvlma(NumGallons ~ MilesLastFill + NumDaysBetw,
                        data = CarMileageData)
CarModelAssess
summary(CarModelAssess)
CarModelNew <- update(CarModelAssess, alphalevel = 0.01)
CarModelNew
CarModelNew <- update(CarModelAssess, subset = -(1:10))
CarModelNew
summary(CarModelNew)
}
\keyword{methods}% at least one, from doc/KEYWORDS
