######## Some easy plots in R ########################################
#----------------------by Alfonso Garmendia---------------------------

#### load R data ---------------------
# data()  # see a list of all data sets in "datasets" package
### To load the data iris
# data(iris)
d <- iris
# ?iris # see the help of iris data
### look the loaded data in "Environment"
# ls()
### press on the d to see the data 
# View(d)
### press on the blue arrow to see the structure of the data
# str(d)

#### Easy Base R plots -------------------
plot(d)

plot(Sepal.Length ~ Sepal.Width, data = d)
plot(Sepal.Length ~ Sepal.Width, data = d, col = Species)

plot(Sepal.Length ~ Species, data = d)

plot(Species ~ Sepal.Length, data = d)

### plot() chooses the best plot depending on variable type

#### More elaborated plots ---------------
### dotplot
plot(Sepal.Length ~ Sepal.Width, data = d, 
  main = "Iris sepal proportions",
  col = Species,
  xlab = "Sepal width (mm)", 
  ylab = "Sepal length (mm)")
legend("topright", title = "Species",
  legend = c("Iris setosa", "Iris versicolor", "Iris virginica"), 
  pch = 1, col = 1:3, text.font = c(3,3,3))

