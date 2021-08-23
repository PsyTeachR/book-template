zip_template <- function() {
  files <- c("book/_index_example.Rmd",
             "book/_bookdown.yml",
             "book/_output.yml",
             "book/appendix-0.Rmd",
             "book/book.bib",
             "book/images/",
             "book/include/",
             "book/R/",
             "book/preamble.tex")
  
  utils::zip(zipfile = "book/files/book.zip", 
             files = files)
}
