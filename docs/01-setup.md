# Setup

## Starting a new book

### Create a new github repository

For psyTeachR courses, the repository should be created by the course lead on the [psyTeachR](https://github.com/PsyTeachR) github and have a name structure like this:

* ug1-practical
* ug2-practical
* ug3-stats
* ug4-dissertation
* msc-data-skills

### Fork the repository

Our main course pages are under https://psyteachr.github.io, but you should work on your course page on a forked version in your own github account. On the `code` tab of the new repository, click the `Fork` button.

<div class="figure">
<img src="files/images/fork.png" alt="Fork a repository from the psyTeachR account" width="1001" />
<p class="caption">(\#fig:img-fork)Fork a repository from the psyTeachR account</p>
</div>

If you're a member of psyTeachR, you'll get this interface telling you that you've already forked this project. You just need to choose your personal account.

<div class="figure" style="text-align: center">
<img src="files/images/already_forked.png" alt="Choose your personal account" width="454" />
<p class="caption">(\#fig:img-already_forked)Choose your personal account</p>
</div>

You'll see this animation for a few seconds while the repository is being forked to your account.

<div class="figure" style="text-align: center">
<img src="files/images/forking.png" alt="Just be patient" width="544" />
<p class="caption">(\#fig:img-forking)Just be patient</p>
</div>

### Make a new RStudio Project

Click the green `Clone or download` button on your personal forked repository and copy the URL (use HTTPS unless you know you've set up SSH).

<div class="figure">
<img src="files/images/clone.png" alt="Find the URL to clone" width="1028" />
<p class="caption">(\#fig:img-clone)Find the URL to clone</p>
</div>

Under the `File` menu in RStudio, choose `New Project..` and choose `Version Control` from the list of options.

<div class="figure" style="text-align: center">
<img src="files/images/version_control.png" alt="File &gt; New Project... &gt; Version Control" width="453" />
<p class="caption">(\#fig:img-version_control)File > New Project... > Version Control</p>
</div>

Choose `Git` from the next screen.

<div class="figure" style="text-align: center">
<img src="files/images/git.png" alt="Choose Git" width="451" />
<p class="caption">(\#fig:img-git)Choose Git</p>
</div>

Paste the URL you copied from your repository into the Repository URL. Keep the Project directory name the same as the repository name (it should default to this). You can Create the project as a subdirectory anywhere on your computer; I recommend making a directory to keep all your github R projects in.

<div class="figure" style="text-align: center">
<img src="files/images/clone_repo.png" alt="Clone your github repository to the RStudio project" width="452" />
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
  includes:
    after_body: webex.js
  css: style.css
  config:
    toc:
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

Change the book_filename to the name of your repository (e.g., "ug1-practical"). You can change the chapter_name from "Chapter " to "Lab " or something else that makes sense for your course if you want.

Save and close this file.

#### index.Rmd

Open `index.Rmd`. The top YAML header should look like this:

```
--- 
title: "Template Course"
author: "psyTeachR"
date: "2019-01-20"
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

The last line is the location of your new book. You can copy and paste that in a web browser to view the book. Alternatively, you can open the docs directory in the Files pane of RStudio, click on index.html, and choose `View in Web Browser`.

<div class="figure" style="text-align: center">
<img src="files/images/open_from_docs.png" alt="Open your book from the Files pane in RStudio." width="447" />
<p class="caption">(\#fig:img-open_from_docs)Open your book from the Files pane in RStudio.</p>
</div>

## Adding Chapters

(LISA ADD THIS)

## Call-out Blocks

The psyTeachR course book style include four types of *call-out blocks* that you can use to emphasise text.

### Danger

<pre><code>&#96;&#96;&#96;{block, type="danger"}
Note dangerous things that will break code.
&#96;&#96;&#96;</code></pre>

<div class="danger">
<p>Note dangerous things that will break code.</p>
</div>

### Warning

<pre><code>&#96;&#96;&#96;{block, type="warning"}
Warn readers.
&#96;&#96;&#96;</code></pre>

<div class="warning">
<p>Warn readers.</p>
</div>

### Info

<pre><code>&#96;&#96;&#96;{block, type="info"}
Give further information.
&#96;&#96;&#96;</code></pre>

<div class="info">
<p>Give further information.</p>
</div>

### Try

<pre><code>&#96;&#96;&#96;{block, type="try"}
Stop and try something.
&#96;&#96;&#96;</code></pre>

<div class="try">
<p>Stop and try something.</p>
</div>
