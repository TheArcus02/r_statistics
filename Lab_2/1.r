# a) Wczytanie danych i sprawdzenie typu
loty <- read.csv("loty.csv", sep=";", header=TRUE)
head(loty)
str(loty)    # sprawdzenie struktury danych

# b) Histogramy dla kolejnych lat
par(mfrow=c(2,3))  # układ 2x3 dla wykresów
for(rok in names(loty)) {
    hist(loty[[rok]], 
         main=paste("Histogram dla roku", substr(rok, 2, 5)),  # usuwamy "X" z nazwy
         xlab="Liczba pasażerów (tys.)",
         ylab="Częstość",
         breaks=6)
}

# c) Podstawowe miary statystyczne dla każdego roku
for(rok in names(loty)) {
    cat("\nRok", substr(rok, 2, 5), ":\n")
    cat("Średnia:", mean(loty[[rok]]), "\n")
    cat("Mediana:", median(loty[[rok]]), "\n")
    cat("Q1:", quantile(loty[[rok]], 0.25), "\n")
    cat("Q3:", quantile(loty[[rok]], 0.75), "\n")
    cat("Odch. std:", sd(loty[[rok]]), "\n")
}

# d) Poprawiony kod dla wykresu pudełkowego
boxplot(loty, 
        main="Porównanie liczby pasażerów w latach 1955-1960",
        xlab="Rok",
        ylab="Liczba pasażerów (tys.)",
        names=names(loty))  # właściwe nazwy lat na osi X
