\name{summary.gvlmaDel}
\alias{summary.gvlmaDel}
\alias{print.gvlmaDel}
\title{Basic Information for the Leave-One-Out Global and
  Directional Tests for Linear Model Assumptions}
\description{
Summarize the test statistic values and p-values for assessing unusual
observations using the global and directional test statistics that were
computed in a \code{gvlmaDel} object resulting from a call to
\code{deletion.gvlma}.
}

\usage{
\method{summary}{gvlmaDel}(object, allstats = TRUE, \dots)
\method{print}{gvlmaDel}(x, \dots)
}

\arguments{
  \item{object, x}{Object resulting from a call to
    \code{deletion.gvlma}, which takes a \code{gvlma} object and
    performes the leave-one-out analyses for assessment of the influence
  of each observation on the global and directional tests for linear
  model assumptions.}
  \item{allstats}{For \code{summary.gvlmaDel}, if \code{allstats = TRUE}
    (the default), then the summary statistics are provided for global
    test and all 4 directional test statistics.  If
    \code{summary.gvlmaDel} is \code{FALSE}, then the summary is
    provided for the deletion global test statistics only. }
  \item{\dots}{Additional arguments that are ignored.}
}

\details{
The summary values are the min, first quartile, median, average, 3rd
quartile and maximum of the deletion test statistic values and
p-values.  Additionally, observations and the corresponding deletion test
statistic values and p-values for which the deletion test statistic
value or its p-value is outside the outer fences (Q1 - 3*IQR, Q3 +
3*IQR) of the set of
deletion statistics are reported.

\code{print.gvlmaDel} simply invokes \code{summary.gvlmaDel} with
\code{allstats = TRUE}.

}

\value{
  A dataframe of dimension \code{nobs} x 5 is returned invisibly, where
\code{nobs} is
  the number of observations in the linear model fit.  The 5 columns are
  named \code{DeltaGlobalStat}, \code{DeltaStat1}, \code{DeltaStat2},
  \code{DeltaStat3}, and \code{ DeltaStat4}, indicating the deletion
  global   test and the four deletion directional test statistics.  Each
  entry in the dataframe is TRUE/FALSE, indicating whether the
  corresponding test statistic was unusual (i.e. beyond the outer
  fences) with respect to either its value or its p-value.
}

\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.}

\author{Slate, EH \email{slate@stat.fsu.edu} and Pena, EA
  \email{pena@stat.sc.edu}. }

\seealso{\code{\link{gvlma}}, \code{\link{deletion.gvlma}}}

\examples{
data(CarMileageData)
CarModelAssess <- gvlma(NumGallons ~ MilesLastFill, data = CarMileageData)
CarModelAssess
CarModelDel <- deletion.gvlma(CarModelAssess)
CarModelDel
summary(CarModelDel)
summary(CarModelDel, allstats = FALSE)
}
\keyword{print}


