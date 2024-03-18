# jermd

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

**Je**msu **Rmd** templates – A minimal(ish) R package for RMarkdown templates.

They used to be included in my general-miscellaneous `{jemisc}` package, but I extracted them here to have them isolated in one package with minimal dependencies (namely `{rmarkdown}` and `{bookdown}`).

## Included templates

See `system.file("examples", package = "jermd")` for rendered examples.

- `masterthesis` (still in development): The template for my master's thesis at University of Bremen.
- `bericht`: Hastily written for a report. Not very well, I might add. Don't use it, only for reference in case some detail of it worked well.
- `uebungsblatt`: Written for weekly assignments and tweaked over the course of 3 semesters. Should be kind of okay to use.


## Probably better templates (re: `masterthesis`)

- [robjhyndman/MonashThesis](https://github.com/robjhyndman/MonashThesis) (basis for the skeleton)
- [ismayc/thesisdown](https://github.com/ismayc/thesisdown) with forks
  - [phister/huwiwidown](https://github.com/phister/huwiwidown)
  - [vivekbhr/doctorRbite](https://github.com/vivekbhr/doctorRbite)
