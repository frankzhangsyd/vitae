[![Netlify Status](https://api.netlify.com/api/v1/badges/014401b7-dd7c-4924-afd5-4dd1c4d20cf3/deploy-status)](https://app.netlify.com/sites/frankzhang-vitae/deploys)

# My resume created in R with Pagedown

This repo has all the code and data to render my resume in R with [pagedown package](https://pagedown.rbind.io)

The main files are:

- *update_resume.R* : R script that renders the Rmarkdown document twice, once for HTML version and once for PDF version. This ensures both versions are always the same. (The current different is *HTML* version has the *download PDF button* and *PDF* version is in black and white color scheme)
- *resume.Rmd*: Source template for both the PDF and HTML versions, based on the YAML Paramater doctype
- *index.html*: The final output of the template when the parameter doctype is set to HTML.
- *output/Frank-Zhang-CV.pdf*: Result for PDF version. Note, this version has a different CSS styling sheet and is in black and white for more consistent printing.
- *resume_data.xlsx*: An excel file with my work and skills data.
- *css/*: Directory containing the custom CSS files used to tweak the default resume format from pagedown.

Shout out to Nick Strayer and Matt Leary. I heavily borrowed from their code and approach. See the original here http://nickstrayer.me/cv/ and https://www.mattleary.com/resume/
