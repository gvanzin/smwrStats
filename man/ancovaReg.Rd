% Generated by roxygen2 (4.0.2): do not edit by hand
\name{ancovaReg}
\alias{ancovaReg}
\title{Diagnostics for Analysis of Covariance}
\usage{
ancovaReg(object, find.best = TRUE, trace = FALSE)
}
\arguments{
\item{object}{the linear regression model object.}

\item{find.best}{select the "best" subset of terms in the model?}

\item{trace}{print the results of the selection process if \code{find.best}
is \code{TRUE}?}
}
\value{
A list of class "ancovaReg" containing these components:
\item{aovtab}{the analysis of variance table from the original model}
\item{parmests}{a summary of the final \code{object}.} \item{vif}{a named
vector of variance inflation factors.} \item{diagstats}{a data.frame
containing the observed values, predicted values, residuals, standardized
residuals, studentized residuals, leverage, Cook's D, and dfits for each
observation.} \item{crit.val}{a named vector of the critical values for
leverage, Cook's D, and dfits.} \item{flagobs}{a logical vector indicating
which observations exceeded at least one of the critical values.}
\item{object}{the \code{lm} object.} \item{x}{the model matrix of
explanatory variables.} \item{factor.var}{the name of the factor variable}
\item{x.fr}{the model frame of explanatory variables.} If no factor variable
is found in the final model, either because one was not specified or it was
dropped from the model, then an object of class "multReg" is returned
instead. See \code{\link{multReg}} for details.
}
\description{
Computes diagnostic statistics for an analysis of covariance (ANCOVA) with a
single factor variable.
}
\details{
The input model object (\code{object}) can be the complete ancova model
including all interaction terms or it can be any form of an ANCOVA model.
Most often, if it is not the complete ancova model, then \code{find.best}
should be \code{FALSE}.\cr The \code{find.best} option uses the \code{step}
function to select the "best" subset of terms in the model. In general, this
can be used to retain or drop significant interaction terms. It will not
look at individual factor levels in the model.
}
\note{
Objects of class "ancovaReg" have \code{print} and \code{plot}
methods.
}
\references{
Draper, N.R. and Smith, H., 1998, Applied Regression Analysis,
(3rd ed.): New York, Wiley, 724 p.
}
\seealso{
\code{\link{lm}}, \code{\link{plot.ancovaReg}},
\code{\link{multReg}},
}
\keyword{models}
\keyword{regression}

