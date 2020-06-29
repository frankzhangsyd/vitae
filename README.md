[![Netlify Status](https://api.netlify.com/api/v1/badges/014401b7-dd7c-4924-afd5-4dd1c4d20cf3/deploy-status)](https://app.netlify.com/sites/frankzhang-vitae/deploys)

# My resume created in R with Pagedown

This repo has all the code and data to render my resume in R with [pagedown package](https://pagedown.rbind.io)

The main files are:

- *update_resume.R* : R script that renders the Rmarkdown document twice, once for HTML version and once for PDF version. This ensures both versions are always the same. (The current difference is *HTML* version has the *download PDF button*)
- *resume.Rmd*: Source template for both the PDF and HTML versions, based on the YAML Paramater doctype
- *index.html*: The final output of the template when the parameter doctype is set to HTML.
- *output/Frank-Zhang-CV.pdf*: Result for PDF version.
- *resume_data.xlsx*: An excel file with my work and skills data.
- *css/*: Directory containing the custom CSS files used to tweak the default resume format from pagedown.

Shout out to Nick Strayer and Matt Leary. I heavily borrowed from their code and approach. See the original here http://nickstrayer.me/cv/ and https://www.mattleary.com/resume/

# Approach of setting under yourdomain/vitae

1. The *index.html* should be your vitae html. It can be either self-contained or not.

2. Add *_redirects* in your *static* folder if you are using *Hugo*

The *_redirects* should be a raw text file containing the following 

```
/vitae              your-single-netlify-hosting-url              200
```

If your *index.html* is not self contained, you also need to set up redirect for static assets like CSS and images.
```
/static/*          your-single-netlify-hosting-url/static/:splat              200
```


