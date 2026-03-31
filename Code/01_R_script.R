# installazione pacchetti
# CRAN
install.packages("terra")
library(terra)

# GitHUb
install.packages("devtools") # remotes
library(devtools)  # remotes
install_github("ducciorocchini/imageRy")
library(imageRy)
im.list()
