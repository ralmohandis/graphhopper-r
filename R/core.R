#' Set GH-API base url.
#' @note Internally it calls \code{Sys.setenv} to store the API url
#' in an environment variable called \code{GH_API_URL}.
#' @param api_url API base url
#' @export
gh_set_api_url <- function(api_url) {
  Sys.setenv(GH_API_URL = api_url)
}

get_api_url <- function() {
  Sys.getenv("GH_API_URL")
}

gh_get <- function(path) {
  function(...) {
    httr::GET(get_api_url(), path = path, query = list(...))
  }
}
