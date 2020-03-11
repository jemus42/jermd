#' Master thesis bookdown PDF template
#'
#' See `bookdown::pdf_book()` for options.
#' @inheritParams bookdown::pdf_book
#'
#' @export
#' @importFrom bookdown pdf_book
masterthesis <- function(...) {

  template <- system.file(
    "rmarkdown/templates/masterthesis/resources/template.tex",
     package = "jermd"
  )

  bookdown::pdf_book(..., template = template)
}
