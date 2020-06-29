rmarkdown::render(input = "resume.Rmd",
                  output_file = "index.html",
                  output_options = list(
                    css = c('custom_resume.css', 'styles_html.css', 'resume'),
                    self_contained = FALSE
                  ),
                  params = list(
                    doctype = "HTML"
                  )
            )

rmarkdown::render(input = "resume.Rmd",
                  output_file = "pdf.html",
                  output_options = list(
                    css = c('custom_resume.css', 'styles_html.css', 'resume'),
                    self_contained = TRUE
                  ),
                  params = list(
                    doctype = "PDF"
                  )
            )


pagedown::chrome_print(input = "pdf.html",
                       output = "output/Frank-Zhang-CV.pdf")

# fs::file_copy("output/vitae.html","index.html",overwrite = TRUE)

