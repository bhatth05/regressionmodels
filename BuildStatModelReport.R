# Set working directory
setwd("C:/Users/Administrator/Documents")

# Load packages
require(knitr)
require(markdown)

# Create .md, .html, and .pdf files
knit("StatModelsProj.Rmd")
markdownToHTML('StatModelsProj.md', 'StatModelsProj.html', options=c("use_xhml"))
system("pandoc -s StatModelsProj.html -o StatModelsProj.pdf")
