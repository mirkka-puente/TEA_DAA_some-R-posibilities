# Some R posibilities

The objective of this project is to show some of the interesting things that you can do with R. 

It is important to start using R with RStudio projects. 
The project is a folder and all the scripts and data for this project should be ordered into this folder. 
This project folder is what you will share when collaborating. 

To open this project press on the *TEA_DAA_some-R-posibilities.Rproj* file.

Tip: You can render this file pressing on the "**Preview**" button.

# Repository

This project is available from bitbucket:
https://bitbucket.org/alfonsogar/tea_daa_some-r-posibilities/downloads/

# Scripts

- *01_base-R-plots.R* shows how easy is to make a plot in base R. 

- *02_packages-to-import-export-from-Excel.R* script shows packages to import and export files to and from Excel. Also from/to csv. 

- *03_fancy-plots.R* script shows the plotting power of R package *ggplot2*. Only some easy examples. 

- *04_basic-rmarkdown-document.Rmd* shows the basic structure of a Rmd document. 

# Protocol

1. Run the R scripts in order, row by row, clicking Ctl-Enter (or press Run). 

2. Some code might be commented (with an # before) and will not run unless erase the #. This is used for comments and for code usually not wanted to run. If you want to run this code you can uncomment it (erase the #) or select the code (without the #) and run it. 

3. Try to read the code. Do not worry if you do not understand it yet. 

4. Render the Rmd document (push *Knit* button). Look the new document. Read the code and identify the R chunks from the text. 

5. Upload the project into your github repository (see *Git* chapter). 

5. Try to change things in the code, and use Git to Commit and Push the changes. 

6. Enjoy.

# Git

follow this instructions to upload the project to your github:
https://docs.github.com/en/github/importing-your-projects-to-github/importing-source-code-to-github/adding-an-existing-project-to-github-using-the-command-line

# Other tips

In a project folder should be always a README.md file with the description of the project, a data folder with the data and one or more scripts, usually ordered with numbers in front. 

Example to source (run completely) a specific R file:

```
source("01_base-R-plots.R")
```

Example to render Render a Rmd file from console:  

```
rmarkdown::render("05_render-rmarkdown-document.Rmd", 
                   output_format = "html_document")  # html
```

For saving the figures in a Rmd file png format, add (or uncomment) a line with:

```
knitr::opts_chunk$set(fig.path = "results/figures/")
```

