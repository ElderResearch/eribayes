

s <- function(x, stem = NULL) {
  ext <- if (is.na(x) || length(x) != 1) "s" else ""
  paste0(stem, ext)  # paste()-ing ext with NULL returns ext
}


check_installed <- function(packages) {
  errors <- 0
  for (package in packages) {
    if (!requireNamespace(package, quietly = TRUE)) {
      cat("Package", package, "must be installed for this functionality.\n")
      errors <- errors + 1
    }
  }
  msg <- "Please install the %d %s listed above."
  if (errors > 0) {
    stop(sprintf(msg, errors, s(errors, "package")))
  }
  invisible(NULL)
}
