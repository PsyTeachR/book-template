

# PsyTeachR Style Guide

The following are specific recommendations to make our course materials look and act consistently to help students navigate more easily from one year to the next. These styles will be continuously evolving, so do discuss with the team if any recommendations don't meet your needs or you want to propose new recommendations.


## Headers

Level 1 headers (i.e., chapter titles) should be title case. The first letter of all words should be uppercase except articles, prepositions, and be verbs in the middle of the title (e.g., a, an, the, is, are in, on).

Level 2 or higher headings should start with an uppercase letter (unless they are the name of a function or package that starts with a lowercase letter: e.g., **`tidyverse`**) and the rest of the heading should be lowercase (except proper nouns: e.g., RStudio, R, psyTeachR, Niamh).

Chapters should **usually** have between three and eight level 2 headers. There will obviously be exceptions, but if you consistently have more or fewer sections, think about restructuring your content.


## Text styles

* Emphasised text should be **bold** (e.g., `**bold**`)
* Avoid italics for dyslexia-friendly reading.
* Exactly quoted names of buttons or interface objects should be **`bold code`** (e.g., ``` **`bold code`** ```)
* Inline code should be in `backticks` (e.g., ``` `backticks` ```)


## Colour

Logo colours are from the University of Glasgow palette.

* <span style="color: var(--pink);">pink: #983E82</span>
* <span style="color: var(--orange);">orange: #E2A458</span>
* <span style="color: var(--yellow);">yellow: #F5DC70</span>
* <span style="color: var(--green);">green: #59935B</span>
* <span style="color: var(--blue);">blue: #467AAC</span>
* <span style="color: var(--purple);">purple: #61589C</span>

If you are comfortable editing css and want to add styles with colour, you can add colours to css with the keywords using this pattern:

```
<span style="color: var(--purple);">Some purple text</span>
```

<div class="info">
<p>Remember to test with the <strong>Sepia</strong> and <strong>Night</strong> themes and add additional styles for sepia (<code>div.color-theme-1</code>) and dark (<code>div.color-theme-2</code>) backgrounds.</p>
</div>

You can also access the psyTeachR colours in R from the function `psyteachr_colours()` (or `psyteachr_colors()`).


```r
psyteachr_colours()
```

```
## [1] "#983E82" "#E2A458" "#F5DC70" "#59935B" "#467AAC" "#61589C"
```

```r
psyteachr_colours(1:3)
```

```
## [1] "#983E82" "#E2A458" "#F5DC70"
```

```r
c("pink", "yellow", "blue") %>% psyteachr_colours()
```

```
## [1] "#983E82" "#F5DC70" "#467AAC"
```


```r
tibble(
  grp = rep(LETTERS[1:5], each = 20),
  val = c(rnorm(20, 1), rnorm(20, 2), rnorm(20, 3), rnorm(20, 4), rnorm(20, 5))
) %>%
  ggplot(aes(grp, val, fill = grp)) +
  geom_violin() +
  scale_fill_manual(values = psyteachr_colours(1:5))
```

<div class="figure" style="text-align: center">
<img src="02-style-guide_files/figure-html/plot-psyteachr-colours-1.png" alt="Plot with psyteachr.colours" width="50%" />
<p class="caption">(\#fig:plot-psyteachr-colours)Plot with psyteachr.colours</p>
</div>



## Vocabulary

There is a lot of cultural variation in what we call punctuation. For psyTeachR books, use the following conventions.

| Symbol | psyTeachR Term    | Also Known As     |
|:------:|:------------------|:------------------|
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
| .      | full stop         | period / point    |
| !      | exclamation mark  | bang / not        |
| ?      | question mark     |                   |
| '      | single quote      | quote / apostrophe|
| "      | double quote      | quote             |
| \|     | pipe              | vertical bar      |
| ,      | comma             |                   |
| ;      | semi-colon        |                   |
| :      | colon             |                   |
| @      | "at" symbol       | [various hilarious regional terms](https://www.theguardian.com/notesandqueries/query/0,5753,-1773,00.html) |

### Specific words

* RStudio
* R Markdown
* LaTeX (you don't have to be fancy with ${\LaTeX}$)

## Code chunks

### Including headers

If you want to show students an example of a code chunk that includes the header, add an option called `verbatim` to your code chunk and set it equal to what you want displayed inside the curly brackets. Make sure you set `eval` to false to stop the code chunk from being run.

<div class='verbatim'><code>&#96;&#96;&#96;{r verbatim-example, eval = FALSE, verbatim = 'r name, eval = FALSE'}</code>

```r
# set eval to FALSE to prevent a code chunk from running
rnorm(10)
```

<code>&#96;&#96;&#96;</code></div>

<div class="info">
<p>The &quot;verbatim&quot; option is not standard to bookdown. It is only available if you include the code from the &quot;R/psyteachr_setup.R&quot; file.</p>
</div>


## Figures

### R Plots

Any graphs should be dynamically created in an R code block. Make sure to set `out.width`, `fig.align`, and `fig.cap` in the chunk and set `echo = FALSE`.

<div class='verbatim'><code>&#96;&#96;&#96;{echo=FALSE, out.width='100%', fig.align='center', fig.cap='Dynamically created plot.'}</code>

```r
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  geom_smooth(method = lm)
```

<code>&#96;&#96;&#96;</code></div>

<div class="figure" style="text-align: center">
<img src="02-style-guide_files/figure-html/img-dynamo-1.png" alt="Dynamically created plot." width="100%" />
<p class="caption">(\#fig:img-dynamo)Dynamically created plot.</p>
</div>


### Images

Static images, like screenshots, should be stored in a directory called **images** and displayed using the `knitr::include_graphics` function in a code block.

<div class='verbatim'><code>&#96;&#96;&#96;{r img-psyteacher-logo, echo=FALSE, out.width="100%", fig.align="center", fig.cap="PsyTeachR Logo"}</code>

```r
knitr::include_graphics("images/psyteachr_logo.png")
```

<code>&#96;&#96;&#96;</code></div>

<div class="figure" style="text-align: center">
<img src="images/psyteachr_logo.png" alt="PsyTeachR Logo displayed by the previous code block." width="100%" />
<p class="caption">(\#fig:img-psyteacher-logo)PsyTeachR Logo displayed by the previous code block.</p>
</div>

You can learn more about including figures and images in the [Bookdown book](https://bookdown.org/yihui/bookdown/figures.html).


## Call-out Blocks

The psyTeachR course book style includes four types of *call-out blocks* that you can use to emphasise text.

### Danger

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="danger"}</code>Note dangerous things that will break code.<code>&#96;&#96;&#96;</code></div>


<div class="danger">
<p>Note dangerous things that will break code.</p>
</div>

### Warning

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="warning"}</code>Warn readers.<code>&#96;&#96;&#96;</code></div>

<div class="warning">
<p>Warn readers.</p>
</div>

### Info

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="info"}</code>Give further information.<code>&#96;&#96;&#96;</code></div>

<div class="info">
<p>Give further information.</p>
</div>

### Try

<div class='verbatim'><code>&#96;&#96;&#96;{block, type="try"}</code>Stop and try something.<code>&#96;&#96;&#96;</code></div>

<div class="try">
<p>Stop and try something.</p>
</div>
