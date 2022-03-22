

s <- function(x, stem = NULL) {
  ext <- if (any(is.na(x)) || length(x) != 1) "s" else ""
  # paste() ext with NULL => ext
  paste0(stem, ext)
}


check_for_packages <- function(packages) {
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
  invisible(TRUE)
}
