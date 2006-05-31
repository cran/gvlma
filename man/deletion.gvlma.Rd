\name{deletion.gvlma}
\alias{deletion.gvlma}
\title{Deletion Statistics for a Linear Model}
\description{
Computes the deletion statistics (leave-one-out) for assessing
  unusual observations in a linear model.
}
\usage{
deletion.gvlma(gvlmaobj)
}
\arguments{
  \item{gvlmaobj}{A \code{gvlma} object, as the result of a call to \code{gvlma}.}
}
\details{
Given a \code{gvlma} object, which contains in the component \code{GlobalTest}
the test statistics and p-values for the global and directional tests to
assess linear models assumptions, \code{deletion.gvlma} computes the
leave-one-out global and directional statistics.  The deletion
statistics are reported as percent relative change from the
corresponding statistic value based on the full data set.
}

\value{
  A dataframe is returned with variables
  \code{DeltaGlobalStat}, \code{GStatpvalue}, \code{DeltaStat1},
  \code{Stat1pvalue}, \code{DeltaStat2}, \code{Stat2pvalue},
  \code{DeltaStat3},  
  \code{Stat3pvalue}, \code{DeltaStat4}, and \code{Stat4pvalue}.
  Each \dQuote{Delta} variable is the percent relative change in the
  statistic when the corresponding observation (row of the data
  frame) is dropped.  Each \dQuote{pvalue} variable is the p-value
  associated with the deletion statistic.  (Note the p-value is
  NOT a change in the p-values for the full and leave-one-out
  statistic values.)
}

\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.} 

\author{Slate, EH \email{SlateEH@musc.edu} and Pena, EA
  \email{pena@stat.sc.edu}. } 

\seealso{\code{\link{gvlma}}}

\examples{
data(CarMileageData)
CarModelAssess <- gvlma(NumGallons ~ MilesLastFill, data = CarMileageData)
CarModelDel <- deletion.gvlma(CarModelAssess)
CarModelDel
}
\keyword{regression}% at least one, from doc/KEYWORDS
