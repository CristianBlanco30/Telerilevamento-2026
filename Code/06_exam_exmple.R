library(terra)
library(imageRy)

setwd("D:/Progetti blender")
getwd()
list.files()

ice <- rast("OIP.jpg")

png("prime_due_bande.png")
im.multiframe(1,2)
plot(ice[[1]])
plot(ice[[2]])
dev.off()



#istogrammi
png("ist.png")
im.multiframe(3,1)
hist(values(ice[[1]]), main="istogramma Red", col=red)
hist(values(ice[[2]]), main="istogramma Green", col=green)
hist(values(ice[[3]]), main="istogramma Blue", col=blue)
dev.off()
