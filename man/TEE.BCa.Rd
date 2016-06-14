\name{TEE.BCa}
\alias{TEE.BCa}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute the bias-corrected accelerated bootstrap confidence intervals.
}
\description{
This function create the bias-corrected accelerated bootstrap confidence intervals based on the trimmed elemental regressions.
}
\usage{
TEE.BCa(formula,data,offset=NULL,p.trimmed=NULL,p.subsample=1,method ="tee",
est.TEE,conf.level,n.boot)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{formula}{
define a symbolic description of the model to be fitted.
}
  \item{data}{
specify the dataset used for performing regression analysis. It must be formatted in data frame.
}
  \item{offset}{
specify a known component to be included in the linear predictor during fitting. This argument should be either NULL or a numeric vector with length equal to the number of observations. 
}
  \item{p.trimmed}{
define the trimming proportion of elemental subsets. This should be either NULL or a numeric value between 0 and 1. When method = "tee" is specified, a numeric value must be provided.
}
  \item{p.subsample}{
this is the proportion of subsampling with values between 0 and 1. The default value is 1, meaning that calculations are based on the full data.
}
  \item{method}{
two options are supported: "ols" stands for ordinary least squares and "tee" stands for trimmed elemental estimation.
}
  \item{est.TEE}{
this is for trimmed elemental regression estimates.
}
  \item{conf.level}{
the confidence level.
}
  \item{n.boot}{
number of bootstrap samples.
}
}
\details{
For discussions about bootstrap confidence intervals and coverage probabilities of regression parameter estimates using trimmed elemental estimation, see Hall and Mayo (2008).
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{call}{call to the function.}
\item{ci}{bias-corrected accelerated bootstrap confidence interval estimates for the regression parameters.}
%% ...
}
\references{
M. Hall and M. S. Mayo. Bootstrap confidence intervals and coverage probabilities of regression parameter estimates using trimmed elemental estimation. Journal of Modern Applied Statistical Methods, 7: 514-525, 2008.
}
\author{
Wei Jiang and Matthew S. Mayo
}
\examples{
data(telephone)
fit <- TEE(formula=Y~X,data=telephone,p.trimmed=0.5,p.subsample=0.5,method="tee")
TEE.BCa(formula=Y~X,data=telephone,est.TEE=fit$coefficients,p.trimmed=0.5,p.subsample=0.5,
method="tee",conf.level=0.05,n.boot=20)
}
\keyword{TEE.BCa}
\keyword{TEEReg}
\keyword{TEE}

