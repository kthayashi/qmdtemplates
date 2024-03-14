
<!-- README.md is generated from README.Rmd. Please edit that file -->

# qmdtemplates

<!-- badges: start -->

[![R-CMD-check](https://github.com/kthayashi/qmdtemplates/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/kthayashi/qmdtemplates/actions/workflows/R-CMD-check.yaml)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

## Overview

`qmdtemplates` enables convenient storage and loading of custom
[Quarto](https://quarto.org/) templates.

## Installation

Install `qmdtemplates` from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("kthayashi/qmdtemplates")
```

Alternatively, fork this GitHub repo to customize/add templates.

## Usage

`qmdtemplates` is comprised of two main functions, both of which are
intended to be used interactively as part of one’s project setup.

Check available templates with `qmdtemplates::available()`:

``` r
qmdtemplates::available()
#> 
#> ── docx ──
#> 
#> • manuscript.docx
```

Use a template (i.e. copy it into a target directory) with
`qmdtemplates::use()`:

``` r
qmdtemplates::use("manuscript.docx", at = "assets")
#> ✔ Template "manuscript.docx" copied to: 'assets/template-manuscript.docx'
```

## Disclaimers

This package is neither associated with nor endorsed by the Quarto open
source project.
