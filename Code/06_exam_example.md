# 🧊Icelover 


<img width="474" height="315" alt="OIP" src="https://github.com/user-attachments/assets/d561a237-6be4-4b51-80a3-55caa971b770" />




intro analisi e descrizione


## immagine da internet
Immagine da [Ecosia immagini](https://www.ecosia.org/images?q=ice%20melting&addon=firefox&addonversion=6.3.0&sr=1#id=3E486D995D973960792D5116F2E9ED3A014DCD41)
Pacchetti usati in R:

```library(terra) # package to manage spatial data```

Importazione dati via `setwd()`
```
setwd("D:/Progetti blender")
getwd()
list.files()
```

Dati importati via `rast()`
```rast("OIP.jpg")```

## Plottaggio delle singole bande

Le singole bande sono state usate plottando un multiframe
```
png("prime_due_bande.png)
im.multiframe(1,2)
plot(ice[[1]])
plot(ice[[2]])
```

> Nota: inserire immagine




> Nota: l'immagine è già stata elaborata


Per inserire elenco puntato:
+ primo punto
+ secondo punto
+ terzo punto

Istogrammi per la mia immagine
```
png("ist.png")
im.multiframe(3,1)
hist(values(ice[[1]]), main="istogramma Red", col=red)
hist(values(ice[[2]]), main="istogramma Green", col=green)
hist(values(ice[[3]]), main="istogramma Blue", col=blue)
```

Output:
> Copiare immagine


Inserie emoji -> usare ":"

Avere anche file.R con il codice, ma non fondamentale. Guardare esempi esami.
