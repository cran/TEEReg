\name{TEEReg-package}
\alias{TEEReg-package}
\alias{TEEReg}
\docType{package}
\title{
Trimmed Elemental Estimation for Linear Models.
}
\description{
Package provides functions for computing the trimmed elemental estimates, as well as for creating the bias-corrected and accelerated bootstrap confidence intervals based on trimmed elemental regressions. This approach offers a robust alternative to ordinary least squares.
}
\details{
\tabular{ll}{
Package: \tab TEEReg\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2016-06-12\cr
License: \tab GPL (version 2 or later) \cr
}
There are two major functions in the package. The TEE function is for computing the trimmed elemental estimates. The TEE.BCa function is for creating the bias-corrected accelerated bootstrap confidence intervals for regression parameters.
}
\author{
Wei Jiang and Matthew S. Mayo

Maintainer: Wei Jiang <wjiang@kumc.edu>
}
\references{
M. S. Mayo and B. Gray. Elemental subsets: the building blocks of regression. The American Statistician, 51: 122-129, 1997.

M. Hall and M. S. Mayo. Bootstrap confidence intervals and coverage probabilities of regression parameter estimates using trimmed elemental estimation. Journal of Modern Applied Statistical Methods, 7: 514-525, 2008.
}

\keyword{TEEReg}
\keyword{TEE.BCa}
\keyword{TEE}


\examples{
data(telephone)
fit <- TEE(formula=Y~X,data=telephone,p.trimmed=0.5,p.subsample=0.5,method="tee")
TEE.BCa(formula=Y~X,data=telephone,est.TEE=fit$coefficients,p.trimmed=0.5,p.subsample=0.5,
method="tee",conf.level=0.05,n.boot=20)
}
