\name{TEE}
\alias{TEE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute the trimmed elemental estimates.
}
\description{
This function computes the trimmed elemental estimates for regression parameters.
}
\usage{
TEE(formula,data,offset=NULL,p.trimmed=NULL,p.subsample=1,method="tee")
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
specify an known component to be included in the linear predictor during fitting. This argument should be either NULL or a numeric vector with length equal to the number of observations. 
}
  \item{p.trimmed}{
define the trimming proportion of elemental subsets. This should be either NULL or a numeric value between 0 and 1. When method = "tee" is specified, a numberic value must be provided.
}
  \item{p.subsample}{
this is the proportion of subsampling with values between 0 and 1. The default value is 1, meaning that calculations are based on the full data.
}
  \item{method}{
two options are supported: "ols" stands for ordinary least squares and "tee" stands for trimmed elemental estimation.
}
}
\details{
For more details about trimmed elemental estimation, see Mayo and Gray (1997).
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{call}{call to the function.}
\item{coefficients}{estimated regression coefficients with intercept.}
\item{residuals}{residuals resulted from the fitted model, i.e. y - yhat.}
\item{fitted.values}{values fitted by the model, i.e. yhat = x betahat.}
}
\references{
M. S. Mayo and B. Gray. Elemental subsets: the building blocks of regression. The American Statistician, 51: 122-129, 1997.
}
\author{
Wei Jiang and Matthew S. Mayo
}
\examples{
data(telephone)
fit<-TEE(formula=Y~X,data=telephone,p.trimmed=0.5,p.subsample=0.5,method="tee")
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{TEE}
\keyword{TEEReg}


