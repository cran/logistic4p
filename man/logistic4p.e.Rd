\name{logistic4p.e}
\alias{logistic4p.e}
\title{ Logistic regressions with constrained FP and FN misclassifications
}
\description{
Fit logistic regressions with misclassification correction. The FP and FN parameters are constrained to be equal.
}
\usage{
logistic4p.e(x, y, initial, max.iter = 1000, epsilon = 1e-06, detail = FALSE)
}
\arguments{
  \item{x, y}{
x is a data frame or data matrix containing the predictor variables and y is the vector of outcomes. The number of rows in x must be the same as the length of y.
}
  
  \item{initial}{
starting values for the parameters in the model(the misclassification parameter and those in the linear predictor); 
if not specified, the default initials are 0 for the misclassification parameters and 
estimates obtained from the logistic regression for the parameters in the linear predictor. 
}
 \item{max.iter}{
a positive integer giving the maximal number of iterations; if it is reached, the algorithm will stop.
  }
  \item{epsilon}{
a positive convergence tolerance epsilon.
}
  \item{detail}{
logical indicating if the itermediate output should be printed after each iteration.
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
x=nlsy[, -1]

mod=logistic4p.e(x, y, max.iter = 1000, epsilon = 1e-06, detail = FALSE)
}
}

