# Load package DESCRIPTION into convenient form.
load_pkg_description <- function(path) {
  path_desc <- file.path(path, "DESCRIPTION")

  if (!file.exists(path_desc)) {
    stop("No package infrastructure found in ", path)
  }

  desc <- as.list(read.dcf(path_desc)[1, ])
  names(desc) <- tolower(names(desc))
  desc$path <- path

  structure(desc, class = "package")
}


#' Is the object a package?
#'
#' @keywords internal
#' @export
is.package <- function(x) inherits(x, "package")

# Mockable variant of interactive
interactive <- function() .Primitive("interactive")()
