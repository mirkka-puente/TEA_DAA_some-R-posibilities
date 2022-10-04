########## Some fancy plots in R  ####################################
#-------------------  by Alfonso Garmendia  --------------------------

#### Densities ------------------------------------------
### from https://www.r-graph-gallery.com/
library(ggplot2)
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) +
  geom_density(adjust = 1.5, alpha = .3) +
  theme_classic()

#### Scatterplot ----------------------------------------
ggplot(data = mpg, aes(x = displ, y = hwy, col = cyl)) + 
  geom_smooth() +
  geom_point() +
  theme_classic()

#### Scatterplot with equation --------------------------
### from http://www.sthda.com/english/articles/24-ggpubr-publication-ready-plots/78-perfect-scatter-plots-with-correlation-and-marginal-histograms/
library(ggpubr)

d <- mtcars
d$cyl <- as.factor(d$cyl)
ggscatter(d, x = "wt", y = "mpg",
  add = "reg.line",                         # Add regression line
  conf.int = TRUE,                          # Add confidence interval
  color = "cyl", palette = "jco",           # Color by groups "cyl"
  shape = "cyl"                             # Change point shape by groups "cyl"
) +
  stat_cor(aes(color = cyl), label.x = 3)           # Add correlation coefficient

#### Boxplot and violinplot -----------------------------
ggplot(ToothGrowth, aes(x = as.factor(dose), y = len)) + 
  geom_violin(trim = FALSE, fill = "gray") +
  labs(title = "Plot of length  by dose", x = "Dose (mg)", y = "Length") +
  geom_boxplot(width = 0.1) +
  theme_classic()

#### Alluvial plot ---------------------------------------
library(alluvial)

# Titanic data
tit <- as.data.frame(Titanic)

# 4d
alluvial( tit[,1:4], freq=tit$Freq, border=NA,
     hide = tit$Freq < quantile(tit$Freq, .50),
     col=ifelse( tit$Class == "3rd" & tit$Sex == "Male", "red", "gray") )


#### ggridges with ggplot -------------------------------
### from: https://stackoverflow.com/questions/25985159/r-how-to-3d-density-plot-with-gplot-and-geom-density

library(ggplot2)
library(viridis)
library(ggridges)
ggplot(lincoln_weather, aes(x = `Mean Temperature [F]`, y = `Month`, fill = ..x..)) +
  geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01, gradient_lwd = 1.) +
  scale_x_continuous(expand = c(0.01, 0)) +
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_viridis(name = "Temp. [F]", option = "C") +
  labs(title = 'Temperatures in Lincoln NE',
       subtitle = 'Mean temperatures (Fahrenheit) by month for 2016\nData: Original CSV from the Weather Underground') +
  theme_ridges(font_size = 13, grid = TRUE) + theme(axis.title.y = element_blank())

