% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/available.R
\name{available}
\alias{available}
\title{Check available Quarto templates}
\usage{
available(quiet = FALSE)
}
\arguments{
\item{quiet}{Set to \code{TRUE} to suppress output messages.}
}
\value{
A data frame (\code{\link{tbl_df}}) of available templates (returned silently).
}
\description{
\code{available()} allows the user to check the names of Quarto templates that are
available to use via \code{\link[=use]{use()}}.
}
