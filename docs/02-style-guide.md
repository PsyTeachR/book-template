

# PsyTeachR Style Guide

The following are specific recommendations to make our course materials look and act consistently to help students navigate more easily from one year to the next. These styles will be continuously evolving, so do discuss with the team if any recommendations don't meet your needs or you want to propose new recommendations.


## Headers

Level 1 headers (i.e., chapter titles) should be title case. The first letter of all words should be uppercase except articles, prepositions, and be verbs in the middle of the title (e.g., a, an, the, is, are in, on).

Level 2 or higher headings should start with an uppercase letter and the rest of the heading should be lowercase except proper nouns (e.g., RStudio, R, psyTeachR, Niamh).

Chapters should *usually* have between three and eight level 2 headers. There will obviously be exceptions, but if you consistently have more or fewer sections, think about restructuring your content.


## Text styles

* Emphasised text should be in *italics* (e.g., This is a *particularly* fun project.)
* Exactly quoted names of buttons or interface objects should be **bold** (e.g., Under the **File** menu in RStudio, choose **New File** and **R Markdown...**.)
* Inline code should be in `backticks`
* Specific words:
    + RStudio
    + R Markdown
    + LaTeX (you don't have to be fancy with ${\LaTeX}$)
    
## Vocabulary

There is a lot of cultural variation in what we call punctuation. For psyTeachR books, use the following conventions.

| Symbol | psyTeachR Term    | AKA               |
|--------|-------------------|-------------------|
| ()     | (round) brackets  | parentheses       |
| []     | square brackets   | brackets          |
| {}     | curly brackets    | squiggly brackets |
| <>     | chevrons          | angled brackets / guillemets |
| <      | less than         |                   |
| >      | greater than      |                   |
| &      | ampersand         | "and" symbol      |
| #      | hash              | pound / octothorpe|
| /      | slash             | forward slash     |
| \\     | backslash         |                   |
| -      | dash              | hyphen / minus    |
| _      | underscore        |                   |
| *      | asterisk          | star              |
| ^      | caret             | power symbol      |
| ~      | tilde             | twiddle / squiggle|
| =      | equal sign        |                   |
| ==     | double equal sign |                   |
| .      | period            | full stop / point |
| !      | exclamation mark  | bang / not        |
| ?      | question mark     |                   |
| '      | single quote      | quote / apostrophe|
| "      | double quote      | quote             |
| \|      | pipe             | vertical bar      |
| ,      | comma             |                   |
| ;      | semi-colon        |                   |
| :      | colon             |                   |
| @      | "at" symbol       | [various hilarious regional terms](https://www.theguardian.com/notesandqueries/query/0,5753,-1773,00.html) |


## Code chunks

### Including headers

If you want to show students an example of a code chunk that includes the header, add an option called `verbatim` to your code chunk and set it equal to what you want displayed inside the curly brackets. Make sure you set `eval` to false to stop the code chunk from being run.

<div class='verbatim'><code>&#96;&#96;&#96;{r verbatim-example, eval = FALSE, verbatim = 'r name, eval = FALSE'}</code><br>

```r
# set eval to FALSE to prevent a code chunk from running
rnorm(10)
```

<br><code>&#96;&#96;&#96;</code></div>

<div class="info">
<p>The &quot;verbatim&quot; option is not standard to bookdown. It is only available if you include the code from the &quot;R/psyteachr_setup.R&quot; file.</p>
</div>


## Figures

### R Plots

Any graphs should be dynamically created in an R code block. Make sure to set `out.width`, `fig.align`, and `fig.cap` in the chunk and set `echo = FALSE`.

<div class='verbatim'><code>&#96;&#96;&#96;{echo=FALSE, out.width='100%', fig.align='center', fig.cap='Dynamically created plot.'}</code><br>

```r
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  geom_smooth(method = lm)
```

<br><code>&#96;&#96;&#96;</code></div>

<div class="figure" style="text-align: center">
<img src="02-style-guide_files/figure-html/img-dynamo-1.png" alt="Dynamically created plot." width="100%" />
<p class="caption">(\#fig:img-dynamo)Dynamically created plot.</p>
</div>


### Images

Static images, like screenshots, should be stored in a directory called **images** and displayed using the `knitr::include_graphics` function in a code block.

<div class='verbatim'><code>&#96;&#96;&#96;{r img-psyteacher-logo, echo=FALSE, out.width="100%", fig.align="center", fig.cap="PsyTeachR Logo"}</code><br>

```r
knitr::include_graphics("images/psyteachr_logo.png")
```

<br><code>&#96;&#96;&#96;</code></div>

<div class="figure" style="text-align: center">
<img src="images/psyteachr_logo.png" alt="PsyTeachR Logo displayed by the previous code block." width="100%" />
<p class="caption">(\#fig:img-psyteacher-logo)PsyTeachR Logo displayed by the previous code block.</p>
</div>

You can learn more about including figures and images in the [Bookdown book](https://bookdown.org/yihui/bookdown/figures.html).


## Call-out Blocks

The psyTeachR course book style includes four types of *call-out blocks* that you can use to emphasise text.

### Danger

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="danger"}</code><br>Note dangerous things that will break code.<br><code>&#96;&#96;&#96;</code></div>


<div class="danger">
<p>Note dangerous things that will break code.</p>
</div>

### Warning

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="warning"}</code><br>Warn readers.<br><code>&#96;&#96;&#96;</code></div>

<div class="warning">
<p>Warn readers.</p>
</div>

### Info

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="info"}</code><br>Give further information.<br><code>&#96;&#96;&#96;</code></div>

<div class="info">
<p>Give further information.</p>
</div>

### Try

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="try"}</code><br>Stop and try something.<br><code>&#96;&#96;&#96;</code></div>

<div class="try">
<p>Stop and try something.</p>
</div>
