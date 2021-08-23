library(usethis)

# change this ##################
myrepo <- "ads-v1"

# main project in psyteachR ----
create_project(myrepo)

# move to the new project ##################

## add git ----
use_git()

## protect private info ----
git_vaccinate()

## add to psyteachr github ----
use_github("psyteachr")

## set up webpage ----
use_github_pages(
  branch = git_branch_default(), 
  path = "/docs")

# fork the repo to your personal github ----

## delete local repository ----
unlink(myrepo, recursive = TRUE)

## fork the psyTeachR repo to your github ----
create_from_github(
  repo_spec = paste0("psyteachr/", myrepo), 
  fork = TRUE)

# move to new forked project ##################

## set up webpage ----
use_github_pages(
  branch = git_branch_default(), 
  path = "/docs")

## download the template ----
temp <- tempfile()
download.file("https://psyteachr.github.io/book-template/files/book.zip", temp)
utils::unzip("book.zip", exdir = myrepo)