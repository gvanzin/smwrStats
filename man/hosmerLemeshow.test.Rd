% Generated by roxygen2 (4.0.2): do not edit by hand
\name{hosmerLemeshow.test}
\alias{hosmerLemeshow.test}
\title{The Hosmer-Lemeshow Test}
\usage{
hosmerLemeshow.test(object, groups = 10)
}
\arguments{
\item{object}{an object of class "glm" on which to perform the test.}

\item{groups}{the number of groups to use for the test.}
}
\value{
An object of class "htest" having these components: \item{method}{ a
description of the method.  } \item{statistic}{ the test statistic.  }
\item{p.value}{ the attained p-level of the test statistic.  }
\item{data.name}{ the name of \code{object}.  } \item{alternative}{ the
alternate hypothesis---"some lack of fit."  } \item{estimate}{ a data frame
of the size, expected value, and actual counts in each group. If the model
has a single explanatory variable, then the mean value is included as column
4.  }
}
\description{
Perform the Hosmer-Lemeshow test for goodness-of-fit for a logistic
regression model.
}
\note{
The null hypothesis is "no lack of fit." Rejection of the null
hypothesis indicates "some lack of fit."
}
\references{
Hosmer, D.W. and Lemeshow, S., 1980, Goodness-of-fit tests for
the multiple logistic regression model: Communications in Statistics ---
Theory and Methods, v. 9, p. 1043--1069
}
\seealso{
\code{\link{binaryReg}}
}
\keyword{htest}

