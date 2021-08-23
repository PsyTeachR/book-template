library(usethis)

# setup ----
myrepo <- "~/rproj/debruine/ads-v1"

# ***********************************
# add main project to psyteachR ----
create_project(myrepo, open = FALSE)

## set to local project ----
local_project(myrepo)

## add git ----
use_git() # you will need to confirm

## protect private info ----
git_vaccinate()

## add to psyteachr github ----
use_github("psyteachr")

## set up webpage ----
use_github_pages(
  branch = git_branch_default(), 
  path = "/docs")

# ***********************************
# fork the repo to your personal github ----

## delete local psyTeachR repository ----
unlink(myrepo, recursive = TRUE)

## fork the psyTeachR repo to your github ----
create_from_github(
  repo_spec = paste0("psyteachr/", basename(myrepo)), 
  destdir = dirname(myrepo),
  fork = TRUE, 
  open = FALSE)

## set to local project ----
local_project(myrepo)

## set up webpage ----
use_github_pages(
  branch = git_branch_default(), 
  path = "/docs")
# confirm your repo

## download the template ----
temp <- tempfile()
download.file("https://psyteachr.github.io/book-template/files/book.zip", temp)
utils::unzip(temp, exdir = myrepo)

## open project in a new RStudio session
proj_activate(proj_get())
