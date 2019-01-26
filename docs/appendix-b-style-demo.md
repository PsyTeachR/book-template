

# Style Demo {#style-demo}

Use this page to test styles if you change any defaults. Make sure to test with white, sepia and night themes.

## Header 2

Text with inline text styles, like **bold**, *italics* (don't use), **`bold code`**, `inline code` and [link text](#style-demo). Emojis: ❤️🧡💛💚💙💜

### Header 3

* **bold**
* *italics*
* **`bold code`**
* `inline code`
* [link text](#style-demo)

#### Header 4

##### Header 5

## Chunks

### Code chunk with output


```r
# nonsense function to demo code style

func_var <- function(arg = FALSE) {
  string_var <- "I'm a string"
  int_var <- 1L
  dbl_var <- -3.165
  bool_var <- TRUE
  vector_var <- 1:5
  
  paste(string_var, int_var, sep = " - ")
}

func_var()
```

```
## [1] "I'm a string - 1"
```

### Code chunk with r header

<div class='verbatim'><code>&#96;&#96;&#96;{r libraries, include=FALSE}</code>

```r
library(tidyverse)
```

<code>&#96;&#96;&#96;</code></div>

### Preformatted

```
line breaks
    and space are
        preserved 
Emojis are sometimes different: ❤️🧡💛💚💙💜
```
### Call-out blocks

<div class="danger">
<p><code>danger</code>: Note dangerous things that will break code.</p>
</div>

<div class="warning">
<p><code>warning</code>: Warn readers.</p>
</div>

<div class="info">
<p><code>info</code>: Give further information.</p>
</div>

<div class="try">
<p><code>try</code>: Stop and try something.</p>
</div>
