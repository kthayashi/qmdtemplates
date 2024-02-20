#' Check available Quarto templates
#'
#' `available()` allows the user to check the names of Quarto templates that are
#' available to use via [`use()`].
#'
#' @param quiet If `TRUE`, suppress output messages.
#'
#' @return A data frame of available templates (returned silently).
#' @importFrom utils tail
#' @export
available <- function(quiet = FALSE) {
  # Get vector of available templates
  f <- list.files(system.file("templates", package = "qmdtemplates"))
  # Split f by period to isolate file extensions
  f_split <- strsplit(f, ".", fixed = TRUE)
  # Get vector of file extensions
  f_ext <- sapply(f_split, tail, 1)
  # Get vector of unique file extensions
  exts <- unique(f_ext)
  # Assemble tibble of available templates
  out <- tibble::tibble(name = f, type = f_ext)
  # Reorder out by type, name
  out <- out[order(out$type, out$name), ]
  # Loop through unique file extensions and print available templates
  if (quiet == FALSE) {
    for (i in 1:length(exts)) {
      templates <- out$name[out$type == exts[i]]
      cli::cli_h2(exts[i])
      cli::cli_ul(templates)
    }
  }
  # Silently return output
  invisible(out)
}
