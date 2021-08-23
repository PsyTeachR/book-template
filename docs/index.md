--- 
title: "Book Template"
author: "Lisa DeBruine"
date: "2021-08-23"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "Guide for psyTeachR course books."
url: "https://psyteachr.github.io/book-template"
github-repo: "psyteachr/book-template"
cover-image: "images/logo.png"
apple-touch-icon: "images/apple-touch-icon.png"
apple-touch-icon-size: 180
favicon: "images/favicon.ico"
---



# Overview {-}

The best resource for creating a course book is the [bookdown website](https://bookdown.org/). Yihui Xie's [Bookdown](https://bookdown.org/yihui/bookdown/) book can answer most of the questions you'll have. This guide is just a quick start for the specific templates we're using at UofG Psychology.

## Updating an existing book

Download the [psyTeachR Bookdown Course Template](files/book.zip), unzip it, and copy the files to your existing project, overwriting any files (see the list below for exceptions). Check `_index_example.Rmd` for anything that might need to be updated in your existing `index.Rmd` file.

Some files will have been customised for your book. Check if those files need updated, but don't overwrite them.

* `_output.yml`: you will have customised the `config: before:` and `config: after:` sections for your book title
* `_bookdown.yml`: you may have customised the `output_dir`
* `include/header.html`: this contains the google analytics that you probably need to customise
* `include/footer.html`: you may have customised this footer, but it's usually blank


## Updating webex

Version 0.22 of bookdown caused a conflict with webex, which has been fixed in version 0.9.2, now on CRAN. After you update webex, you need to follow the procedure above to update the existing book. The files that specifically need to change are:

* `_output.yml` (lots of changes)
* `include/psyteachr.css` (replace)
* `include/webex.css` (new)
* `include/webex.js` (replace)
