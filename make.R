# render the website
# This is for R Studio
# quarto::quarto_render()
# render the website in the terminal using quarto render (for VS code)
system("quarto render")

# render slides as pdf
slides_html <- list.files(here::here("docs/slides"),
  pattern = "01|02|03", full.names = TRUE
)

lapply(slides_html, function(x) {
  pagedown::chrome_print(x,
    format = "pdf"
  )
})

# commit and push
git2r::add(path = here::here("docs"))
git2r::commit(message = "Re-render site")
system("git push")
