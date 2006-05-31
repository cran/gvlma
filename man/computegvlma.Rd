\name{computegvlma}
\alias{computegvlma}
\title{Internal Computations for Gvlma Objects}
\description{
  Given an \code{lm} object, this function computes the global and
  directional test statistics for assessing the linear model assumptions.
}
\usage{
computegvlma(lmobj, alphalevel, v)
}
\arguments{
  \item{lmobj}{A linear models object resulting from a call to \code{lm}.}
  \item{alphalevel}{Level of significance to conduct tests for
    assessing the linear models assumptions.}
  \item{v}{The time sequence vector for the heteroscedasticity test,
    \eqn{S^2_4}.  A vector of length the number of observations in the
    linear model.}
}
\details{
This function is not really meant to be called directly, but rather
by the function \code{gvlma}.
}
\value{
A gvlma object, which consists of the components of the linear models
object provided as input, plus a list of the results of the model
assumptions tests.  The components associated with the global and
directional tests are the following:
  \item{LevelOfSignificance}{Significance level at which decisions
    (whether model assumptions are satisfied) were determined.}
  \item{GlobalStat4}{A list of the \code{Value}, \code{pvalue} and
    \code{Decision} associated with the global test.}
  \item{DirectionalStat1}{A list of the \code{Value}, \code{pvalue} and
    \code{Decision} associated with the skewness directional test,
    \eqn{S^2_1}.}
  \item{DirectionalStat2}{A list of the \code{Value}, \code{pvalue} and
    \code{Decision} associated with the kurtosis directional test,
    \eqn{S^2_2}.}
  \item{DirectionalStat3}{A list of the \code{Value}, \code{pvalue} and
    \code{Decision} associated with the link function directional test,
    \eqn{S^2_3}.} 
  \item{DirectionalStat4}{A list of the \code{Value}, \code{pvalue} and
    \code{Decision} associated with the heteroscedasticity test,
    \eqn{S^2_4}.}
  \item{timeseq}{The time sequence used for the 4th directional statistic.}
}
\references{Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.} 
\author{Slate, EH \email{SlateEH@musc.edu} and Pena, EA \email{pena@stat.sc.edu}. }
\note{
  }
\seealso{\code{\link{gvlma}}, \code{\link{lm}}}
\keyword{internal}% at least one, from doc/KEYWORDS
