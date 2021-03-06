% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install-cran.R
\name{install_cran}
\alias{install_cran}
\title{Attempts to install a package from CRAN.}
\usage{
install_cran(pkgs, repos = getOption("repos"),
  type = getOption("pkgType"), dependencies = NA, upgrade = c("ask",
  "always", "never"), force = FALSE, quiet = FALSE, build = TRUE,
  build_opts = c("--no-resave-data", "--no-manual",
  "--no-build-vignettes"), ...)
}
\arguments{
\item{pkgs}{Character vector of packages to install.}

\item{repos}{A character vector giving repositories to use.}

\item{type}{Type of package to \code{update}.}

\item{dependencies}{Which dependencies do you want to check?
Can be a character vector (selecting from "Depends", "Imports",
"LinkingTo", "Suggests", or "Enhances"), or a logical vector.

\code{TRUE} is shorthand for "Depends", "Imports", "LinkingTo" and
"Suggests". \code{NA} is shorthand for "Depends", "Imports" and "LinkingTo"
and is the default. \code{FALSE} is shorthand for no dependencies (i.e.
just check this package, not its dependencies).}

\item{upgrade}{One of "ask", "always" or "never". "ask" prompts the user for
which out of date packages to upgrade. For non-interactive sessions "ask" is
equivalent to "always". \code{TRUE} and \code{FALSE} are also accepted and
correspond to "always" and "never" respectively.}

\item{force}{Force installation, even if the remote state has not changed
since the previous install.}

\item{quiet}{If \code{TRUE}, suppress output.}

\item{build}{If \code{TRUE} build the package before installing.}

\item{build_opts}{Options to pass to \code{R CMD build}, only used when \code{build}
is \code{TRUE}.}

\item{...}{Other arguments passed on to \code{\link[utils:install.packages]{utils::install.packages()}}.}
}
\description{
This function is vectorised on \code{pkgs} so you can install multiple
packages in a single command.
}
\examples{
\dontrun{
install_cran("ggplot2")
install_cran(c("httpuv", "shiny"))
}
}
\seealso{
Other package installation: \code{\link{install_bioc}},
  \code{\link{install_bitbucket}},
  \code{\link{install_dev}}, \code{\link{install_github}},
  \code{\link{install_gitlab}}, \code{\link{install_git}},
  \code{\link{install_local}}, \code{\link{install_svn}},
  \code{\link{install_url}}, \code{\link{install_version}}
}
\concept{package installation}
