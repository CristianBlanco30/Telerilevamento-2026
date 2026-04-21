# Code for classifying data
library(terra)
library(imageRy)
library(ggplot2)
library(patchwork)

#listing files
im.list()

"Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg"

#import
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

# classify
sunc <- im.classify(sun)
sunc <- im.classify(sun, seed=3)
sunc <- im.classify(sun, seed=42)

"dolansprings_oli_2013088_canyon_lrg.jpg"

# import gran Canyon data
can <- im.import("dolansprings_oli_2013088_canyon_lrg.jpg")
# classify gran canyon data
canc <- im.classify(can, seed=42, num_clusters=4)

#numero pixel
ncell(sun)
ncell(can)

# esercizio
"D:/FOTO/Lanciano/foto mare.jpg"
setwd("D:/FOTO/Lanciano")
getwd()
list.files("D:/FOTO/Lanciano")
mare <- rast("foto_mare.jpg")
plot(mare)
mare <- flip(mare)
marec <- im.classify(mare, num_clusters=2)

marec <- im.classify(mare, num_clusters=15)



# Classify Mato Grosso data

im.list()
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
im.multiframe(2,1)
plot(m1992)
plot(m2006)

# Classification
m1992c <- im.classify(m1992, seed=42, num_clusters=2)
m2006c <- im.classify(m2006, seed=42, num_clusters=2)

# Assign labels
levels(m1992c) <- data.frame(
  value = c(1, 2),
  label = c("forest", "human")
)
m1992c

plot(m1992c)

levels(m2006c) <- data.frame(
  value = c(2, 1),
  label = c("forest", "human")
)
m2006c

plot(m2006c)

#Calculating frequences
f1992 <- freq(m1992c)
f2006 <- freq(m2006c)
# Proportions
prop1992 <- f1992$count/ncell(m1992c)
prop2006 <- f2006$count/ncell(m2006c)
#%
perc1992 <- prop1992*100
perc1992
perc2006 <- prop2006*100
perc2006

#table
tabout <- data.frame(
  class=c("Forest","Human"),
  perc1992=c(83, 17),
  perc2006=c(55, 45)
  )
tabout

# defying the function
source("im.barplot.R")

# Barplot

im.barplot(m1992c)
im.barplot(m2006c)

