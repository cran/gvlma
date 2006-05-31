\name{gvlma-package}
\alias{gvlma-package}
\docType{package}
\title{
Global Validation of Linear Model Assumptions
}
\description{
Perform a single global test to assess the linear model assumptions, as
well as perform specific directional tests designed to detect skewness,
kurtosis, a nonlinear link function, and heteroscedasticity.
}
\details{
\tabular{ll}{
Package: \tab gvlma\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2006-06-07\cr
License: \tab GPL\cr
}
The function \code{gvlma} will take either a linear models object or a
formula and data set for a linear model (single response) and compute
the global   
and directional tests for assessing modeling assumptions as described in
the reference listed below.  The function \code{deletion.gvlma} will
compute the deletion (\dQuote{leave-one-out}) global statistics described in
that paper. }
\author{
Slate, EH \email{SlateEH@musc.edu} and Pena, EA \email{pena@stat.sc.edu}

Maintainer: Slate, EH  <SlateEH@musc.edu>
}
\references{
Pena, EA and Slate, EH (2006).  \dQuote{Global validation of
  linear model assumptions,} \emph{J.\ Amer.\ Statist.\ Assoc.},
  \bold{101}(473):341-354.
}
\keyword{htest}

\seealso{
\code{\link{gvlma}}
}
\examples{
x1 <- rnorm(100,0,2)
x2 <- runif(100)
y <- 3*x1 -x2 + rnorm(100)
gvmodel <- gvlma(lm(y ~ x1 + x2))
plot(gvmodel)
summary(gvmodel)
gvmodel.del <- deletion.gvlma(gvmodel)
summary(gvmodel.del)
plot(gvmodel.del)
}
