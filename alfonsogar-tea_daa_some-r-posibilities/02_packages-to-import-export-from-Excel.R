########## Export and import data csv or Excel files #################
#-----------------------by Alfonso Garmendia--------------------------

#### Open data from R -------------------------------
### Package 'datasets' in R has several data files 
### very useful for base R examples. 
### Other packages may have their own internal data for their examples. 
data()  # Look to data files
### Let's select two of them
View(iris)
View(InsectSprays)
### To see the description of the data go to the help
?iris
?InsectSprays

#### Export data to csv ------------------------------------------
### Create data folder if it does not exist
if (!dir.exists("data")) dir.create("data")
### Export iris dataframe to a csv file
write.csv(iris, "data/iris.csv", row.names = FALSE, 
  fileEncoding = 'utf-8')
### Check into data folder the new file

#### Import data from csv ----------------------------------------
csv.iris <- read.csv("data/iris.csv", fileEncoding = 'utf-8')

#### Export data to Excel ----------------------------------------
### We need to install a package. 
### The code of install.packages is always commented. 
### Select the code and run (or uncomment, run and comment again).
# install.packages("writexl")
### Load the installed package
library(writexl) 
### Write the excel file
write_xlsx(iris, "data/iris.xlsx")

### to save several spreadsheets in a file
write_xlsx(list(iris = iris, sprays = InsectSprays), 
  "data/iris-sprays.xlsx")

#### Import data from Excel -------------------------------------
### We need other package to read Excel
# install.packages('readxl')
library(readxl)
### Read the excel file. By default read the 1st sheet
xls.iris <- read_excel("data/iris-sprays.xlsx")  
### To read other sheet, you have to name it
xls.sprays <- read_excel("data/iris-sprays.xlsx", sheet = "sprays")

#### Package to download data directly from Drive spreadsheets -------
# install.packages('gsheet')
library(gsheet)
u <-  # google sheet adress
  'docs.google.com/spreadsheets/d/1a1IBESUl__i2GcH4d-52MVEyXNytpTua7Vdxr0TXkhQ/edit?usp=sharing'
d0 <- gsheet2tbl(u)
