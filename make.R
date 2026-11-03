# render the website (quarto cleans docs/ before rendering)
# This is for R Studio
# quarto::quarto_render()
# render the website in the terminal using quarto render (for VS code)
system("quarto render")

# Render slide PDFs only for slides that changed since the last PDF build.
# PDFs are stored in slides/ (tracked in git, never deleted by quarto render).
# Quarto copies them to docs/slides/ on each render (see resources in _quarto.yml).
slides <- c("01_intro_git", "02_git_collaboration")

lapply(slides, function(name) {
  qmd <- here::here("slides", paste0(name, ".qmd"))
  pdf_src <- here::here("slides", paste0(name, ".pdf"))
  pdf_docs <- here::here("docs/slides", paste0(name, ".pdf"))
  html <- here::here("docs/slides", paste0(name, ".html"))

  # Regenerate if PDF is missing or source .qmd is newer than existing PDF
  needs_update <- !file.exists(pdf_src) || file.mtime(qmd) > file.mtime(pdf_src)

  if (needs_update) {
    message("Rendering PDF: ", name)
    # Use a file:// URL: with a plain path, pagedown serves the file locally and
    # fails on Chrome's automatic favicon.ico request (404)
    html_url <- paste0("file:///", normalizePath(html, winslash = "/"))
    pagedown::chrome_print(html_url, output = pdf_src)
    file.copy(pdf_src, pdf_docs, overwrite = TRUE)
  } else {
    message("PDF up to date, skipping: ", name)
  }
})

# commit and push: rendered site and any updated PDFs in source
git2r::add(path = here::here("docs"))
git2r::add(path = here::here("slides", paste0(slides, ".pdf")))
git2r::commit(message = "Re-render site")
system("git push")
