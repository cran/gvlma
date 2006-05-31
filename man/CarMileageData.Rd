\name{CarMileageData}
\alias{CarMileageData}
\docType{data}
\title{Car Mileage Data Recorded at Each Gasoline Fill-Up}

\description{
Data on automobile gas mileage performace recorded at each gasoline
fill-up from Oct. 20, 1996 through January 27, 1999.
}
\usage{data(CarMileageData)}
\format{
  A data frame with 205 observations on the following 7 variables.
  \describe{
    \item{\code{Date}}{Date of gasoline fill-up}
    \item{\code{Lag1Date}}{Lagged gasoline fill-up date}
    \item{\code{NumDaysBetw}}{Number of days since last gasoline fill-up}
    \item{\code{TotalMiles}}{Current odometer reading}
    \item{\code{NumGallons}}{Number of gallons to fill tank}
    \item{\code{MilesLastFill}}{Miles driven since last fill-up}
    \item{\code{AveMilesGal}}{Average miles per gallon achieved since
      last fill-up}
  }
}
\details{
  Many people routinely record data on automobile mileage performance at
  each gasoline fill-up.  Prof.\ E.\ Pena generously contributed his
  data for this time period.
}
\source{
These data were used in Example 1 of the publication \dQuote{Global
Validation of Linear Model Assumptions} by E.\ Pena and E. Slate,
\emph{Journal of the American Statistical Association},
\bold{101}(473):341-354, 2006.  The data were recorded by Prof.\ E.\ Pena.
}
\examples{
data(CarMileageData)
plot(CarMileageData)
}
\keyword{datasets}
