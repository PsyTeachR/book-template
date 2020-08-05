#' Open the Book template book
#'
#' @return NULL
#' @export
#'
book <- function() {
  file <- system.file("book", "index.html", package = "book.template")
  utils::browseURL(file)
}