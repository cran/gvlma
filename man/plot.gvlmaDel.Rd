\name{plot.gvlmaDel}
\alias{plot.gvlmaDel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Various Plots for a Gvlmadel Object}
\description{
Plots to display the behavior of the deletion statistics stored in a
gvlmaDel object.
}
\usage{
\method{plot}{gvlmaDel}(x, which = 1:2, TukeyStyle = TRUE, ask
= prod(par("mfcol")) < max(c(10, 5)[which]) && dev.interactive(),
pointlabels, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{A \code{gvlmaDel} object.}
  \item{which}{Vector indicating which, or both, of two types of plots
    to show.}
  \item{TukeyStyle}{If TRUE, determine unusual observations in a robust
    way based on inter-quartile ranges, else based on standard deviations.}
  \item{ask}{If TRUE, prompt the user before beginning a new page of graphs.}
  \item{pointlabels}{A vector of length the number of observations in
    the linear model fit in the \code{gvlmaDel} object containing character
    strings to be used as labels for unusual points.}
  \item{\dots}{Additional arguments that are ignored.}
}
\details{
  If \code{which = 1}, each of the 5 deletion statistics (deletion
  global statistic and each of the 4 directional statistics) is plotted
  against the time sequence used for the 4th directional statistic
  (assessing heteroscedasticity).

  If \code{which = 2}, the function \code{display.delstats} is called
  for each of the 5 deletion statistics.  The argument \code{TukeyStyle}
  is passed directly to \code{display.delstats}.  See the help for
  \code{\link{display.delstats}} for details.

  If \code{which = c(1,2)}, the default, then all 10 plots are
  generated.

  The deletion statistics in the \code{gvlmaDel} object are the percent
  relative change when each observation, in turn, is omitted from the
  model fitting.
}
\value{
  No value is returned.
}

\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.} 

\author{Slate, EH \email{SlateEH@musc.edu} and Pena, EA
  \email{pena@stat.sc.edu}. } 

\seealso{\code{\link{gvlma}}, \code{\link{deletion.gvlma}}}

\examples{
data(CarMileageData)
CarModelAssess <- gvlma(NumGallons ~ MilesLastFill + NumDaysBetw,
    data = CarMileageData)
CarModelDel <- deletion.gvlma(CarModelAssess)
par(mfrow=c(1,1))
plot(CarModelDel)
par(mfrow=c(2,2))
plot(CarModelDel)
plot(CarModelDel, TukeyStyle = FALSE)
plot(CarModelDel, which = 2)
}
\keyword{graphs }% at least one, from doc/KEYWORDS
