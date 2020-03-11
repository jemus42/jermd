#' Übungszettel PDF Template
#'
#' See `rmarkdown::pdf_document()` for options.
#' @inheritParams rmarkdown::pdf_document
#'
#' @export
#' @importFrom rmarkdown pdf_document
uebungsblatt <- function(toc = FALSE,
                         toc_depth = 2,
                         number_sections = FALSE,
                         fig_width = 6.5,
                         fig_height = 4.5,
                         fig_crop = TRUE,
                         fig_caption = TRUE,
                         df_print = "kable",
                         highlight = "default",
                         keep_tex = FALSE,
                         includes = NULL,
                         citation_package = "none",
                         pandoc_args = NULL) {

  template <- system.file(
    "rmarkdown/templates/uebungsblatt/resources/template.tex",
     package = "jermd"

    )

  if (identical(highlight, "default")) {
    highlight <- system.file(
      "rmarkdown/templates/uebungsblatt/resources/highlight-kate-mod.theme",
       package = "jermd"
      )
    pandoc_args <- paste0(pandoc_args, "--highlight-style=", highlight)
    highlight <- NULL
  }


  pdf_document(
    toc = toc,
    toc_depth = toc_depth,
    number_sections = number_sections,
    fig_width = fig_width,
    fig_height = fig_height,
    fig_crop = fig_crop,
    fig_caption = fig_caption,
    dev = "cairo_pdf",
    df_print = df_print,
    highlight = highlight,
    template = template,
    keep_tex = keep_tex,
    latex_engine = "xelatex",
    citation_package = citation_package,
    includes = includes,
    pandoc_args = pandoc_args
    )
}
