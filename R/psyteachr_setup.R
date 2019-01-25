# psyTeachR styles and functions
# do not edit!!!!!

library(tidyverse)
library(webex)

## set global theme options for figures
theme_set(theme_bw())

## set class for a chunk using class="className"
knitr::knit_hooks$set(class = function(before, options, envir) {
  if(before){
    sprintf("<div class = '%s'>", options$class)
  }else{
    "</div>"
  }
})

## verbatim code chunks
knitr::knit_hooks$set(verbatim = function(before, options, envir) {
  if(before){
    sprintf("<div class='verbatim'><code>&#96;&#96;&#96;{%s}</code><br>", options$verbatim)
  }else{
    "<br><code>&#96;&#96;&#96;</code></div>"
  }
})
