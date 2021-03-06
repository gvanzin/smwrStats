% Generated by roxygen2 (4.0.2): do not edit by hand
\name{print.MCT}
\alias{print.MCT}
\title{Print Objects}
\usage{
\method{print}{MCT}(x, digits = 4, ...)
}
\arguments{
\item{x}{an object of class "MCT" from \code{multicomp.test}.}

\item{digits}{the number of significant digits to print numeric data.}

\item{\dots}{not used for method, required for other methods.}
}
\value{
The object \code{x} is returned invisibly.
}
\description{
Print the results of a multiple comparison test (\code{multicomp.test}).
}
\note{
The printed output contains a description of the test, critical
values, the variables in the test, and two tables: the paired comparisons
and associations among the groups. The table of the paried comparisons shows
the groups in the comparison, the estimate of the difference between the
group means, the standard error of the difference, lower and upper
confidence intervals, and a flag that indicates if the confidence interval
excludes 0, which indicates wheter the difference is significantly different
from 0 at the user-specified value. The table of asociations shows the
group, the mean value of the response, the number of observations in the
group, and any number of columns names "A," "B," and so forth that represent
possible associations of the groups whare an "X" is present in the group.
}

