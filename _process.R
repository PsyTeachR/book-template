
# render a chapter or the whole book
browseURL(
  xfun::in_dir("book", bookdown::preview_chapter("01-setup.Rmd"))
)

browseURL(
  xfun::in_dir("book", bookdown::render_book("index.Rmd"))
)

# copies dir
R.utils::copyDirectory(
  from = "docs",
  to = "inst/book", 
  overwrite = TRUE, 
  recursive = TRUE)

unlink("inst/book/.nojekyll")
