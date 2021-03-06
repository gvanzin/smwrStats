% Generated by roxygen2 (4.0.2): do not edit by hand
\name{cor.all}
\alias{cor.all}
\title{Compute Cross Correlations}
\usage{
cor.all(data, method = "pearson", na.method = "pairwise",
  distribution = "normal")
}
\arguments{
\item{data}{any rectangular object such as a data.frame or matrix.}

\item{method}{a character string indicating which correlation coefficient is
to be used. One of "pearson," "kendall," or "spearman," can be abbreviated.}

\item{na.method}{a character string indicating which method to use for
missing values. One of "fail," "omit," "pairwise," can be abbreviated.}

\item{distribution}{a character string indicating the assumed distribution
of the data. One of "normal," "lognormal," or "log1p", which can be
abbreviated.}
}
\value{
An object of class "cor.all," which has these components:
\item{estimates}{ a matrix of the correlations between each pair of numeric
variables in \code{data} } \item{p.values}{ a matrix of the attained
p-values between each pair of numeric variables in \code{data} }
\item{counts}{ a matrix of observations in each pair of numeric variables in
\code{data} } \item{alternative}{ a character string indicating the
alternative hypothesis, always "two.sided" } \item{na.method}{ a character
string indicating the method to handle missing values } \item{method}{ a
character string describing the method to compute the correlations }
\item{data.name}{ the name of the data set, derived from \code{data} }
\item{data}{ a data frame of the numeric variables } \item{call.method}{ a
character string indicating the method to compute the correlations }
\item{distribution}{ a character string indicating the distribution
assumption of the data }
}
\description{
Compute correlations among numeric data
}
\details{
The null hypothesis is that the data are not correlated with one another.
The alternate hypothesis is that they are correlated with one another. This
is a two-sided test. For other options, see \code{cor.all}.

If \code{method} is "pearson," then the correlation is based on Pearson's
product moment correlation coefficient. If \code{method} is "kendall," then
Kendall's tau is used to estimate a rank-based measure of association. If
\code{method} is "spearman", then Spearman's rho is used to estimate the
correlation of the ranks of the data. The last two methods may be used if
the data do not necessarily come from a bivariate normal distribution.

If \code{na.method} is "fail," then \code{cor.all} stops if there are any
missing numeric values. If it is "omit," then all rows with any missing
values is removed before the correlations are computed. That option will
always produce a correlation matrix that is positive definite. If
\code{na.method} is "pairwise," then missing values are removed from each
pairwise correlation.

If \code{distribution} is "normal," then the assumption for \code{method} =
"pearson" is that the data are bivariate normal. If \code{distribution} is
"lognormal," then the assumption for \code{method} = "pearson" is that the
data are bivariate log-normal and all data are natural log-transformed. If
\code{distribution} is "log1p," then the assumption for \code{method} =
"pearson" is that the data are bivariate log-normal after adding 1 and all
data are transformed using the \code{log1p} function. The data are
transformed for any \code{method}, but only produce a different result for
\code{method} = "pearson."
}
\note{
The \code{print}, \code{plot}, and \code{summary} methods are
available for an object of class "cor.all."
}
\examples{
library(smwrData)
data(TNLoads)
cor.all(TNLoads[, 1:5])
cor.all(TNLoads, method="spearman")
}
\references{
Conover, W.J., 1980, Practical nonparametric statistics (2d
ed.): New York, Wiley, 512 p.\cr

Helsel, D.R. and Hirsch, R.M., 2002, Statistical methods in water resources:
U.S.  Geological Survey Techniques of Water-Resources Investigations, book
4, chap. A3, 522 p.
}
\seealso{
\code{\link{cor.test}}, \code{\link{plot.cor.all}},
\code{\link{summary.cor.all}}
}
\keyword{htest}
\keyword{nonparametric}

