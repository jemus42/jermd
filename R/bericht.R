#' Bericht PDF Template
#'
#' @inheritParams bookdown::pdf_document2
#' @importFrom bookdown pdf_document2
#' @export
bericht <- function(toc = FALSE,
                         toc_depth = 2,
                         number_sections = FALSE,
                         fig_width = 6.5,
                         fig_height = 4.5,
                         fig_crop = TRUE,
                         fig_caption = TRUE,
                         df_print = "kable",
                         highlight = "default",
                         keep_tex = FALSE,
                         pandoc_args = NULL,
                         dev = "cairo_pdf",
                         latex_engine = "xelatex",
                         citation_package = "biblatex",
                         ...) {

  template <- system.file("rmarkdown/templates/bericht/resources/template.tex",
                          package = "jermd")
  if (identical(highlight, "default")) {
    highlight <- system.file("rmarkdown/templates/bericht/resources/highlight-kate-mod.theme",
                             package = "jermd")
    pandoc_args <- paste0(pandoc_args, "--highlight-style=", highlight)
    highlight <- NULL
  }


  bookdown::pdf_document2(toc = toc,
               toc_depth = toc_depth,
               number_sections = number_sections,
               fig_width = fig_width,
               fig_height = fig_height,
               fig_crop = fig_crop,
               fig_caption = fig_caption,
               dev = dev,
               df_print = df_print,
               highlight = highlight,
               template = template,
               keep_tex = keep_tex,
               latex_engine = latex_engine,
               pandoc_args = pandoc_args,
               citation_package = citation_package,
               ...)
}
