# build all Rmd files and the website

slides_rmd <- list.files("./slides",pattern = "git-*.Rmd")
how-to_rmd <- list.files("./tasks", pattern = "*.Rmd")

# Render all slides
lapply(slides_rmd, function(x) {rmarkdown::render(here::here("slides",x))})
lapply(how-to_rmd, function(x) {rmarkdown::render(here::here("tasks",x))})

# Print slides to pdf

# Print slides to pdf -----------------------------------------------------
slides_html <- list.files("./slides",pattern = "git-*.html")

lapply(slides_html, function(x) {pagedown::chrome_print(here::here("slides",x),
                                                        format = "pdf")})




rmarkdown::render_site(encoding = "UTF-8")

# Commit ------------------------------------------------------------------

git2r::add(path = here::here("docs"))
git2r::commit(message = "re-render site")
git2r::push(credentials = git2r::cred_token())