

# Webex

Use the following code to install webex:
```
devtools::install_github("dalejbarr/webex")
```

The `webex` package is called in the setup chunk, so you don't need to call it on every page you want to use webex.

## Fill-In-The-Blanks (`fitb()`)

Create fill-in-the-blank questions using `fitb()`, providing the answer as the first argument.

- 2 + 2 is <input class='solveme nospaces' size='1' data-answer='["4"]'/>

You can also create these questions dynamically, using variables from your R session.



- The square root of 9 is: <input class='solveme nospaces' size='1' data-answer='["3"]'/>

The blanks are case-sensitive; if you don't care about case, use the argument `ignore_case = TRUE`.

- What is the letter after D? <input class='solveme nospaces ignorecase' size='1' data-answer='["E"]'/>

If you want to ignore differences in whitespace use, use the argument `ignore_ws = TRUE` and include spaces in your answer anywhere they could be acceptable..

- How do you load the tidyverse package? <input class='solveme nospaces ignorecase' size='20' data-answer='["library( tidyverse )"]'/>

You can set more than one possible correct answer by setting the answers as a vector.

- Type a vowel: <input class='solveme nospaces ignorecase' size='1' data-answer='["A","E","I","O","U"]'/>

## Multiple Choice (`mcq()`)

- "Never gonna give you up, never gonna: <select class='solveme' data-answer='["let you down"]'> <option></option> <option>let you go</option> <option>turn you down</option> <option>run away</option> <option>let you down</option></select>"
- "I <select class='solveme' data-answer='["bless the rains"]'> <option></option> <option>bless the rains</option> <option>guess it rains</option> <option>sense the rain</option></select> down in Africa" -Toto
- "There's nothing that a hundred men <select class='solveme' data-answer='["or more"]'> <option></option> <option>on Mars</option> <option>or more</option> <option>named Marv</option></select> could ever do"

## True or False (`torf()`)

- You can permute values in a vector using `sample()`. <select class='solveme' data-answer='["TRUE"]'> <option></option> <option>TRUE</option> <option>FALSE</option></select>

## Hidden solutions and hints (`hide()` and `unhide()`)

- Recreate the scatterplot below, using the built-in `cars` dataset.

<img src="03-webex_files/figure-html/unnamed-chunk-2-1.png" width="672" />


<div class='solution'><button>I need a hint</button>

`?plot`

</div>



<div class='solution'><button>Solution</button>


```r
with(cars, plot(speed, dist))
```

</div>

