

# Setup

The best resource for creating a course book is the [bookdown website](https://bookdown.org/). Yihui Xie's [Bookdown](https://bookdown.org/yihui/bookdown/) book can answer most of the questions you'll have. The guide below is just a quick start for the specific templates we're using at UofG Psychology.

## Starting a new book

### Create a new github repository

For psyTeachR courses, the repository should be created by the course lead on the [psyTeachR](https://github.com/PsyTeachR) github and have a name structure like this:

* ug1-practical
* ug2-practical
* ug3-stats
* ug4-dissertation
* msc-data-skills

### Fork the repository

Our main course pages are under https://psyteachr.github.io, but you should work on your course page on a forked version in your own github account. On the **`Code`** tab of the new repository, click the **`Fork`** button.

<div class="figure" style="text-align: center">
<img src="files/images/fork.png" alt="Fork a repository from the psyTeachR account" width="100%" />
<p class="caption">(\#fig:img-fork)Fork a repository from the psyTeachR account</p>
</div>

If you're a member of psyTeachR, you'll get this interface telling you that you've already forked this project. You just need to choose your personal account.

<div class="figure" style="text-align: center">
<img src="files/images/already_forked.png" alt="Choose your personal account" width="50%" />
<p class="caption">(\#fig:img-already_forked)Choose your personal account</p>
</div>

You'll see this animation for a few seconds while the repository is being forked to your account.

<div class="figure" style="text-align: center">
<img src="files/images/forking.png" alt="Just be patient" width="50%" />
<p class="caption">(\#fig:img-forking)Just be patient</p>
</div>

### Make a new RStudio project

Click the green **`Clone or download`** button on your personal forked repository and copy the URL (use HTTPS unless you know you've set up SSH).

<div class="figure" style="text-align: center">
<img src="files/images/clone.png" alt="Find the URL to clone" width="100%" />
<p class="caption">(\#fig:img-clone)Find the URL to clone</p>
</div>

Under the **`File`** menu in RStudio, choose **`New Project...`** and choose **`Version Control`** from the list of options.

<div class="figure" style="text-align: center">
<img src="files/images/version_control.png" alt="File &gt; New Project... &gt; Version Control" width="50%" />
<p class="caption">(\#fig:img-version_control)File > New Project... > Version Control</p>
</div>

Choose **`Git`** from the next screen.

<div class="figure" style="text-align: center">
<img src="files/images/git.png" alt="Choose Git" width="50%" />
<p class="caption">(\#fig:img-git)Choose Git</p>
</div>

Paste the URL you copied from your repository into the Repository URL. Keep the Project directory name the same as the repository name (it should default to this). You can Create the project as a subdirectory anywhere on your computer; I recommend making a directory to keep all your github R projects in.

<div class="figure" style="text-align: center">
<img src="files/images/clone_repo.png" alt="Clone your github repository to the RStudio project" width="50%" />
<p class="caption">(\#fig:img-clone_repo)Clone your github repository to the RStudio project</p>
</div>


### Download the template

Download the [psyTeachR Bookdown Course Template](files/book-template.zip) to you computer, unzip it, and move the files into the directory of your new RStudio project.

### Edit the template

#### _output.yml

Open `_output.yml`. It should look like this:

```
bookdown::gitbook: 
  default: true
  smart: false
  includes:
    after_body: include/webex.js
  css: include/style.css
  config:
    toc:
      collapse: section
      before: |
        <li><a href="./">Book Template</a></li>
      after: |
        <li><a href="https://psyteachr.github.io/" target="blank">PsyTeachR</a></li>
    download: []
bookdown::pdf_book:
  includes:
    in_header: preamble.tex
  latex_engine: xelatex
  citation_package: natbib
  keep_tex: yes
```

Change "Book Template" in the config:toc:before: section to the name of your book. This is the text readers will see at the top of your table of contents that brings them back to the start of the book.

Save and close this file.

#### _bookdown.yml

Open `_bookdown.yml`. It should look like this:

```
book_filename: "book-template"
new_session: yes
output_dir: "docs"
delete_merged_file: true
language:
  ui:
    chapter_name: "Chapter "
```

Change the `book_filename` to the name of your repository (e.g., "ug1-practical"). You can change the chapter_name from "Chapter " to "Lab " or something else that makes sense for your course if you want.

Save and close this file.

#### index.Rmd

Open `index.Rmd`. The top YAML header should look like this:

```
--- 
title: "Template Course"
author: "psyTeachR"
date: "2019-01-26"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "This is a template. Use it to start a new course book."
---
```

Update the title, author, and description strings.

For now, don't change anything in the R chunk at the top.

Now you can edit the overview. Replace the filler text with a description of your course and fill in the course aims and ILOs.

Save and close this file.

### Render the book

Now you're ready to create the book. Run the following code in the console.


```r
bookdown::render_book("index.Rmd")
```

You'll see a lot of text in the console window, which should end in something that looks like:

```
Output created: docs/index.html
[1] "/Users/lisad/rproj/psyteachr/book-template/docs/index.html"
```

The last line is the location of your new book. You can copy and paste that in a web browser to view the book. Alternatively, you can open the docs directory in the Files pane of RStudio, click on index.html, and choose **`View in Web Browser`**.

<div class="figure" style="text-align: center">
<img src="files/images/open_from_docs.png" alt="Open your book from the Files pane in RStudio." width="50%" />
<p class="caption">(\#fig:img-open_from_docs)Open your book from the Files pane in RStudio.</p>
</div>

## Adding chapters

Create new chapters by creating new R Markdown files. Under the **`File`** menu in RStudio, choose **`New File`** and **`R Markdown...`**. Don't bother adding a title or changing any default settings; the first thing we'll do is delete all of the content.

<div class="figure" style="text-align: center">
<img src="files/images/new_rmd.png" alt="Make a new chapter in a new .Rmd file" width="100%" />
<p class="caption">(\#fig:img-new_rmd)Make a new chapter in a new .Rmd file</p>
</div>


### Setup R chunk

Every .Rmd file should start with the setup chunk to load libraries you'll probably use on every page and set consistent styles for figures across books. The code is located in separate files, so you can make updates in a single place that affect every chapter.

<div class='verbatim'><code>&#96;&#96;&#96;{r psyteachr-setup, include = FALSE}</code>

```r
source("R/psyteachr_setup.R") # psyTeachR styles and functions
source("R/my_setup.R")        # book-specific styles and functions
```

<code>&#96;&#96;&#96;</code></div>

If there is a package you'll need in every chapter, you can add it to `my_setup.R`. Don't edit `psyteachr_setup.R`; this file is likely to need periodic updating and it is easier to just replace it than to figure out what changes you made. Any code in `my_setup.R` will be loaded after and overrule code in `psyteachr_setup.R` (e.g., if you want to set a different ggplot theme -- but please don't!).

You can also include chapter-specific packages in this chunk. 

### Content

After the initial R chunk, start your chapter with a level 1 header. This will be the chapter title. You can then continue to write your chapter in R Markdown.

### Rendering a single chapter

After you've added several chapters, the whole book might take a long time to render. If you want to quickly check the formatting on a single chapter, use the following code.


```r
bookdown::preview_chapter("02-style-guide.Rmd")
```

## Adding appendices

Add appendices in the same way as chapters. Just name them following the pattern `appendix-a-name.Rmd`.

The file `appendix-0.Rmd` just contains the appendix header that groups appendices together (`# (APPENDIX) Appendices {-}`). You don't need to edit this, but you can delete this file if you are not going to use appendices.

