# a) Wczytanie i przygotowanie danych
oceny <- read.csv("oceny.csv", sep=";", header=TRUE, dec=",")

class(oceny)
str(oceny)

# c) Szeregi rozdzielcze punktowe dla każdej grupy
for(grupa in names(oceny)) {
    cat("\nRozkład ocen w grupie", grupa, ":\n")
    print(table(oceny[[grupa]]))
}

# d) Diagramy odcinkowe
par(mfrow=c(2,2))  # układ 2x2 dla wykresów
for(grupa in names(oceny)) {
    tab <- table(oceny[[grupa]])
    plot(tab, type="h",
         main=paste("Rozkład ocen -", grupa),
         xlab="Ocena",
         ylab="Częstość",
         lwd=2)
    points(tab, pch=19)
}

# e) Wykresy kołowe
par(mfrow=c(2,2))
for(grupa in names(oceny)) {
    pie(table(oceny[[grupa]]),
        main=paste("Rozkład ocen -", grupa))
}

# f) Podstawowe miary statystyczne
for(grupa in names(oceny)) {
    cat("\nStatystyki dla grupy", grupa, ":\n")
    cat("Liczba studentów:", sum(!is.na(oceny[[grupa]])), "\n")
    cat("Średnia:", mean(oceny[[grupa]], na.rm=TRUE), "\n")
    cat("Mediana:", median(oceny[[grupa]], na.rm=TRUE), "\n")
    cat("Odch. std:", sd(oceny[[grupa]], na.rm=TRUE), "\n")
    cat("Q1:", quantile(oceny[[grupa]], 0.25, na.rm=TRUE), "\n")
    cat("Q3:", quantile(oceny[[grupa]], 0.75, na.rm=TRUE), "\n")
}

# g) Wykres pudełkowy
boxplot(oceny,
        main="Porównanie ocen w grupach",
        ylab="Oceny")