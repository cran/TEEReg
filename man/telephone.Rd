\name{telephone}
\alias{telephone}
\docType{data}
\title{
An example dataset for TEEReg. 
}
\description{
The telephone data records the number of telephone calls (tens of millions) made in Belgium from 1959 to 1973. There are several outliers resulted from mistakes in the recording units over the years 1964 to 1969.
}
\usage{data(telephone)}
\format{
  A data frame with 24 observations on the following 2 variables.
  \describe{
    \item{\code{Y}}{a numeric vector: the number of telephone calls in tens of millions.}
    \item{\code{X}}{a numeric vector: years.}
  }
}
\source{
R. J. Rousseeuw and A. M. Lerory. Robust Regression and Outlier Detection. John Wiley and Sons, New York, 1987.
}

\examples{
data(telephone)
plot(telephone)
}
\keyword{telephone}
\keyword{TEE.BCa}
\keyword{TEEReg}
\keyword{TEE}
