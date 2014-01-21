\name{display.delstats}
\alias{display.delstats}
\title{Plot Deletion Statistics and Their P-Values
  for Assessment of Unusual Observations}
\description{
Creates a graph of the p-values associated with the deletion statistics
versus the deletion statistics with
unusual observations highlighted.  This function is called by
\code{plot.gvlmaDel}.
}
\usage{
display.delstats(deletedStatvals, deletedpvals, nsd = 3,
                 TukeyStyle = TRUE, statname = "G", pointlabels)
}
\arguments{
  \item{deletedStatvals}{The vector of deletion statistics, with i-th
    entry  defined as the percent relative change in the global test
    statistic when the i-th observation is removed from the analysis.}
  \item{deletedpvals}{The vector of p-values associated with the global
    test statistics, with i-th entry being the p-value for the global test
    statistic with observation i removed. }
  \item{nsd}{Parameter that governs which observations are deemed
    unusual.  When \code{TukeyStyle = TRUE}, \dQuote{control limits} are
    drawn \code{nsd}
    times the interquartile range beyond the quartiles for both the
    \code{deletedStatvals} and \code{deletedpvals}.  When \code{TukeyStyle
  = FALSE}, \dQuote{control limits} are drawn at \code{nsd} standard deviations away
  from the sample means.  Observations beyond these \dQuote{control limits} are
marked and labeled using the text in pointlabels, if provided (else by
observation number).}
  \item{TukeyStyle}{Controls how unusual observations are determined.
    If \code{TukeyStyle = TRUE} (default), then unusual observations are farther than
    \code{nsd} times the
    interquartile range from the quartiles (in either of the
    \code{deletedStatvals} and \code{deletedpvals} directions).  If \code{TukeyStyle = FALSE}, then
  unusual observations are farther than \code{nsd} times the sample standard
  deviation from the sample mean.}
  \item{statname}{A string used to label the \code{deletedStatvals} axis of the
  plot.  If missing, this label is determined from the variable name
  passed as the \code{deletedStatvals} argument, if possible; otherwise
  defaults to "Deleted statistics."}
  \item{pointlabels}{Character vector of same length as \code{deletedStatvals}
    and \code{deletedpvals} used for labelling unusual observations. }
}

\details{
  Generally \code{display.delstats} is not called directly, but rather
  by the function \code{plot.gvlmaDel}.

Plots the \code{deletedpvals} versus the \code{deletedStatvals} and adds
\dQuote{control
limits} determined by the parameters \code{nsd} and \code{TukeyStyle}.
Points outside
the \dQuote{control limits} (in either the \code{deletedStatval} or
\code{deletedpval}) are
labeled as unusual.
}

\value{
A dataframe consisting of the unusual observations with variables
\code{deletedStatval} and \code{deletedpval}.
}

\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.}

\author{Slate, EH \email{slate@stat.fsu.edu} and Pena, EA
  \email{pena@stat.sc.edu}. }

\seealso{\code{\link{gvlma}}}

\examples{
data(CarMileageData)
CarMileageAssess <- gvlma(NumGallons ~ MilesLastFill + NumDaysBetw,
data = CarMileageData)
CarMileageDel <- deletion.gvlma(CarMileageAssess)
plot(CarMileageDel)
display.delstats(CarMileageDel$DeltaGlobalStat, CarMileageDel$GStatpvalue)
display.delstats(CarMileageDel$DeltaStat1, CarMileageDel$Stat1pvalue)
}
\keyword{graphs}% at least one, from doc/KEYWORDS
