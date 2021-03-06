% Generated by roxygen2 (4.0.2): do not edit by hand
\name{rmse}
\alias{rmse}
\alias{rmse.default}
\alias{rmse.lm}
\alias{rpd}
\title{Root-Mean-Squared and Relative Differences}
\usage{
rmse(x, ...)

\method{rmse}{default}(x, y, ...)

\method{rmse}{lm}(x, ...)

rpd(x, y)
}
\arguments{
\item{x}{either a random vector an object for which a method exists.}

\item{y}{duplicate samples paired with \code{x}.}

\item{\dots}{arguments to be passed to or from methods.}
}
\value{
For the \code{rmse} functions, a single value representing the
estimated RMSE. For \code{rpd}, the relative percent differences for each
paired sample and duplicate.
}
\description{
Compute the root-mean-squared error (RMSE) of the difference between
observed values and the predicted values or the RMSE or relative percent
differences (RPD) between samples and duplicates.
}
\note{
The definition for the RMSE of paired water-quality duplicates is
\deqn{ RMSE = \sqrt{\frac{\sum{(x_i - y_i)^2}}{2n}}}{RMSE = sqrt(sum of
squared differences/2 times the number of duplicates)} The definition for
RPD for paired water-quality duplicates is \deqn{ RPD = abs(x - y)/(x + y)/2
* 100}{RPD = abs(x - y)/(x + y)/2 * 100} Other disciplines may use different
equations.
}
\examples{
# Example 15.2 from Harvey.
dupX1 <- c(160, 196, 207, 185, 172, 133)
dupX2 <- c(147, 202, 196, 193, 188, 119)
rmse(dupX1, dupX2)
rpd(dupX1, dupX2)
}
\references{
Clesceri, L.S., Greenberg, A.E., and Eaton, A.D., 1998, Standard
methods for the examination of water and wastewater, 20th edition:
Baltimore, Md, United Book Press, Inc., 1162 p.\cr

Harvey, D., undated, Analytical chemistry 2.0: Analytical Sciences Digital
Library: online at URL:
http://www.asdlib.org/onlineArticles/ecourseware/Analytical%20Chemistry%202.0/Welcome.html\cr

Helsel, D.R., and Hirsch, R.M., 2002, Statistical methods in water
resources: U.S. Geological Survey Techniques of Water-Resources
Investigations, book 4, chap. A3, 522 p.\cr
}
\keyword{univar}

