% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use.R
\name{use}
\alias{use}
\title{Use a Quarto template}
\usage{
use(template, at = getwd(), as = paste0("template-", template))
}
\arguments{
\item{template}{Name of the template to use.}

\item{at}{Path to the target directory.}

\item{as}{Name of the target file.}
}
\description{
\code{use()} allows the user to copy a Quarto template into a specified directory
(\code{at}) with a specified name (\code{as}). Use \code{\link[=available]{available()}} to check available
templates.
}
