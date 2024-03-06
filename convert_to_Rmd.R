library(rmarkdown)

# this script converts html to Rmd
original <- list.files( pattern = "html.html")

for (i in 1:length(original)) {
  
chapter <- gsub("_html.html", "", original[i])
  
pandoc_convert(original[i], to = "markdown_strict", output = paste0(chapter, "_original.Rmd"))
}
