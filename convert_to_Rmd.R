library(rmarkdown)
# the next three lines find the script location and set that as the working directory. copy these lines into all scripts for this project. 
library(rstudioapi)
wd_script_location <- dirname(rstudioapi::getSourceEditorContext()$path)
setwd(wd_script_location)

# this script converts html to Rmd
original <- list.files( pattern = "html.html")

for (i in 1:length(original)) {
  
chapter <- gsub("_html.html", "", original[i])
  
pandoc_convert(original[i], to = "markdown", output = paste0(chapter, "_original.Rmd"))
}
