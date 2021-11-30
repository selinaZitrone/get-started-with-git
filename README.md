# Prerequisites

- git installed
- Github account, 
- setup SSH key auth -> also test connection `ssh -T git@github.com`
- R, RStudio, `usethis` package
- if you want: Github desktop (optional)

# Topics git workshop I

## Basics git (theory)

- introduction to version control with git

### Simple git workflow for working alone 

#### local

- `git config --global -l`
- `git config --global user.name`
- `git config --global user.email`

- `git init`
- `git add`
- `git commit` / `git commit -m`

- `git log`

#### Exercise

#### Setting up remote repository on github

- create repo on github
- `git remote add`


- `git push`

- `git pull`

#### Exercise

Tommorow, look at Github features in a bit more detail

#### What if I don't want to use the commandline?

- Most IDEs have integrated git client (e.g. RStudio -> Next time)
- Show Github desktop as an example
- Shows differences as well. 


### Other useful git basic commands

- `git diff`
- `git clone` -> use it next time
- `git log --oneline`
- `git config --global editor` 
- go back in history
- `git stash`
- `git checkout <commit-hash>`
- `git tag`
- Write good commit messages


# Topics git workshop II

## Collaboration using git

Different options depending on your team
- branching and merging
- work asynchronously and push to the same branch

- `git branch`, `git checkout`, `git checkout -b`
- `git merge`

- `merge conflicts`

#### Exercise

- clone a repository from me
- create a branch with your name
- push the branch to Github -> First time you need to set upstream branch

### Pull requests on Github

- Show branches on Github
- Show pull requests on Github

#### Exercise

- Everyone do a pull request for their branch

- Look at pull request together


## Using git and github in R and RStudio

- usethis package
- setup PAT using usethis
- Otherwise normal workflow
  - Use Terminal or use R
  - You can put usethis in your startup
  - `usethis::use_git()`
  - `usethis::use_github()`
  - Built in git functionality in RStudio  
  




#### One time setup `git config`

- `git config --global user.name`
- `git config --global user.email`
- `git config --global -l`
- `git config --local -l`




This repository contains all workshop material: slides, tasks, solutions, further resources.
Pleas visit the [workshop website](https://selinazitrone.github.io/get-started-with-git/) to browse the material and download it.
