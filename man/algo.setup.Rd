% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setup_functions.R
\name{algo.setup}
\alias{algo.setup}
\title{Iterative algorithm control}
\usage{
algo.setup(
  max.iter = 50,
  tol = 0.001,
  min.step.len = 0.1,
  halving = T,
  convergence_criterion = c("change", "offset")
)
}
\arguments{
\item{max.iter}{The maximum number of iteration allowed. Default to 50.}

\item{tol}{The tolerance for convergence. The algorithm stops when 
the convergence criteria fall below \code{tol}.}

\item{min.step.len}{The minimum descent step length to be considered. Each
step has a default step length of 1, but it is halved if it results
in a step such that the convergence criterion increases. It is halved
until resulting in a descent step of falling below 
\code{min.step.len}.}

\item{halving}{Logical indicating if halving the step length in case of bad 
step should be performed.}

\item{convergence_criterion}{The criterion used to track convergence of the
algorithm. When \code{convergence_criterion = "change"}, the algorithm
stops when the residual sum of squares and alpha coefficients change
by less than \code{tol}. Note that, in this case \code{tol} can be
a vector with two values. When \code{convergence_criterion = "offset"},
the offset criterion is used. It measures the orthogonality between 
the descent direction and residual sum of squares. This is the 
criterion used for instance by the \code{link[stats]{nls}} function.}
}
\description{
Internal function setting up the control of the estimation algorithm.
 Use this as a comprehensive list of allowed parameters for the 
 \code{algo.control} argument in \code{\link{cgaim}}.
}
\references{
Bates, D.M., Watts, D.G., 1981. A Relative Off set 
     Orthogonality Convergence Criterion for Nonlinear least Squares. 
     Technometrics 23, 179–183.
}
