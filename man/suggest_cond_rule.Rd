% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assoc_rule.R
\name{write_cond_rule}
\alias{write_cond_rule}
\alias{suggest_cond_rule}
\title{Suggest a conditional rule}
\usage{
write_cond_rule(d, vars = names(d), file = stdout())

suggest_cond_rule(d, vars = names(d))
}
\arguments{
\item{d}{\code{data.frame}, used to generate the checks}

\item{vars}{\code{character} optionally the subset of variables to be used.}

\item{file}{file to which the checks will be written to.}
}
\value{
\code{suggest_cond_rule} returns \code{\link[validate:validator]{validate::validator()}} object with the suggested rules.
\code{write_cond_rule} returns invisibly a named list of ranges for each variable.
}
\description{
Suggest a conditional rule based on a association rule.
This functions derives conditional rules based on the non-existance
of combinations of categories in pairs of variables.
For each numerical variable a logical variable is derived that tests for
positivity. It generates IF THEN rules based on two variables.
}
\examples{
data(retailers, package="validate")

# will generate check for all columns in retailers that are
# complete.
suggest_na_check(retailers)
data("car_owner")

rules <- suggest_cond_rule(car_owner)
rules$rules
}
