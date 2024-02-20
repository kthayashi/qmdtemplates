#' Use a Quarto template
#'
#' `use()` allows the user to copy a Quarto template into a specified directory
#' (`at`) with a specified name (`as`). Use [`available()`] to check available
#' templates.
#'
#' @param template Name of the template to use.
#' @param at Path to the target directory.
#' @param as Name of the target file.
#'
#' @importFrom rlang abort
#' @export
use <- function(template, at = getwd(), as = paste0("template-", template)) {
  # Get vector of available templates
  f <- list.files(system.file("templates", package = "qmdtemplates"))
  # Check requested template
  if (!(template %in% f)) {
    cli::cli_abort(
      c(
        "The template {.str {template}} does not exist.",
        "i" = "Try running {.fn qmdtemplates::available} to browse available templates."
      )
    )
  }
  # Check target directory
  if (!dir.exists(at)) {
    cli::cli_abort("The directory {.file {at}} does not exist")
  }
  # Specify path to template
  template_path <- paste(
    system.file("templates", package = "qmdtemplates"),
    template,
    sep = "/"
  )
  # Specify path to target
  target_path <- paste(at, as, sep = "/")
  # Copy template to target
  invisible(file.copy(from = template_path, to = target_path, overwrite = TRUE))
  cli::cli_alert_success(
    "Template {.str {template}} copied to: {.file {target_path}}"
  )
}
