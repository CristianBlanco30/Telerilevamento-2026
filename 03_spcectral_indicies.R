library(terra)
library(imageRy)

#listing files
im.list()

#importing data
mato1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
mato1992 <- flip(mato1992)
#flip funzione di terra

#l1=NIR; l2=red; l3=green
im.plotRGB(mato1992, 1, 2, 3)

#exercise: put NIR on top of the green component of the RGB scheme
im.plotRGB(mato1992, 2, 1, 3)

#exercise: put NIR on top of the blue component of the RGB scheme
im.plotRGB(mato1992, 3, 2, 1)
#da ricordare che l'importante è dove viene messo il NIR

mato1992
#variazione tra 0 e 255 nella riflettanza di ogni banda, che dovrebbe variare tra 0 e 1

#execise: import the image drom 2006
mato2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
mato2006 <- flip(mato2006)
im.plotRGB(mato2006, 1, 2, 3)
#excercise: make a multiframe with the two images, one beside the other
im.multiframe(1, 2)
im.plotRGB(mato1992, 1, 2, 3)
im.plotRGB(mato2006, 1, 2, 3)


plotRGB(mato1992, 1,2,3, stretch="hist")
plotRGB(mato2006, 1,2,3, stretch="hist")

im.multiframe(1, 2)
im.plotRGB(mato1992, 2, 1, 3)
im.plotRGB(mato2006, 2, 1, 3)

im.multiframe(1, 2)
im.plotRGB(mato1992, 3, 2, 1)
im.plotRGB(mato2006, 3, 2, 1)

#DVI
dvi1992 = mato1992[[1]] - mato1992[[2]]
plot(dvi1992)
im.plotRGB(mato1992, 1, 2, 3)
dvi1992
