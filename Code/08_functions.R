# My functions!

somma <- function(x,y) {
  z=x+y
  return(z)
}
somma(1,100)

# excercise: make a function called difference

differenza <- function(x,y) {
  z=x-y
  return(z)
}

# par(mfrow...)
mf <- function(nx,ny){
  par(mfrow=c(nx,ny))
  }
plot(sent[[1]])
plot(sent[[4]])
mf(1,2)

mf <- function(nrow, ncol){
  
  }
# da sandra
library(terra)
library(imageRy)
library(ggplot2)
library(patchwork)

sent<-im.import("sentinel.dolomites")
mf <- function(nx, ny) {
  par(mfrow=c(nx,ny))
  }
mf(1,2)
plot(sent[[1]])
plot(sent[[4]])

# if else
numeri <- function(x){
  if(x>0){
    print("suca +")
    }
  else if(x<0){
    print("suca")
    }
   else{
    print("no 'mbare si fora i testa quietiti")
    } 
  }


# Cicli for
loop <- function(){
  for (i in 1:10) {
    print(i)
    }
}

loop2 <- function(){
  for (i in 1:10) {
    op <- i * 2
    print(op)
    }
}

loop3 <- function(){
  for (i in 1:100) {
    op <- (i^3 * 2)/3
    print(op)
    }
}

sink("data.txt")
loop()
sink()

loop()
loop2()
loop3()
