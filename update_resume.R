rmarkdown::render(input = "resume_html.Rmd",
                  output_file = "output/vitae.html",
                  output_options = list(
                    css = c('css/custom_resume.css', 'css/styles_html.css', 'resume'),
                    self_contained = TRUE
                  ),
                  params = list(
                    doctype = "HTML"
                  )
            )

rmarkdown::render(input = "resume_html.Rmd",
                  output_file = "pdf.html",
                  output_options = list(
                    css = c('css/custom_resume.css', 'css/styles_html.css', 'resume'),
                    self_contained = TRUE
                  ),
                  params = list(
                    doctype = "PDF"
                  )
            )


pagedown::chrome_print(input = "pdf.html",
                       output = "output/Frank-Zhang-CV.pdf")

fs::file_copy("output/vitae.html","index.html",overwrite = TRUE)

