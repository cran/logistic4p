\name{logistic4p.fn}
\alias{logistic4p.fn}
\title{Logistic Regression Model with FN Misclassification Correction
}
\description{
logistic4p.fn is used to fit logistic regressions with the false negative parameter in the model. 
}
\usage{
logistic4p.fn(x, y, initial, max.iter = 1000, epsilon = 1e-06, detail = FALSE)
}

\arguments{
 \item{x, y}{
x is a data frame or data matrix containing the predictor variables and y is the vector of outcomes. The number of rows in x must be the same as the length of y.
}
  \item{initial}{ starting values for the parameters in the model(FP and those in the linear predictor); 
if not specified, the default initials are 0 for the misclassification parameter and 
estimates obtained from the logistic regression for the parameters in the linear predictor.
}
  \item{max.iter}{ a positive integer giving the maximal number of iterations; if it is reached, the algorithm will stop.
}
  \item{epsilon}{ a positive convergence tolerance epsilon.
}
  \item{detail}{ logical indicating if output should be printed for each iteration.
}
}

\value{

\item{estimates}{ a named matrix of estimates including parameter estimates, standard errors, z-scores, and p-values.}
\item{n.iter }{ an integer giving the number of iteration used}
\item{d}{ the actual max absolute difference of the parameters of the last two iterations.}
\item{loglike}{ loglikelihood evaluated at the parameter estimates.}
\item{AIC}{ Akaike Information Criterion.}
\item{BIC}{ Bayesian Information Criterion.}
\item{converged}{ logical indicating whether the current procedure converged or not.}
}

\author{
Haiyan Liu and Zhiyong Zhang
}

\examples{
\dontrun{	
data(nlsy)
y=nlsy[,1]
x=nlsy[,-1]

mod=logistic4p.fn(x, y, max.iter = 1000, epsilon = 1e-06, detail = FALSE)
}
}
