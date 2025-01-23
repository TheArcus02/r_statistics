# a) Wczytanie danych
truskawki <- read.csv("truskawki.csv", sep=";", header=TRUE)

class(truskawki)
head(truskawki)


# b) Szeregi rozdzielcze przedziałowe
# Ustalamy zakresy przedziałów dla obu lat
min_plon <- min(c(truskawki$plon.2000, truskawki$plon.2010), na.rm=TRUE)
max_plon <- max(c(truskawki$plon.2000, truskawki$plon.2010), na.rm=TRUE)
breaks <- seq(min_plon, max_plon, length.out=6)  # 5 przedziałów

# Tworzenie przedziałów
plon2000_cut <- cut(truskawki$plon.2000, breaks=breaks)
plon2010_cut <- cut(truskawki$plon.2010, breaks=breaks)

# c) Wykresy kołowe dla szeregów rozdzielczych
par(mfrow=c(1,2))  # układ 1x2 dla wykresów

# Wykres dla 2000
tab2000 <- table(plon2000_cut)
procenty2000 <- round(100 * tab2000/sum(tab2000), 1)
etykiety2000 <- paste(names(tab2000), "\n", procenty2000, "%")
pie(tab2000, 
    labels=etykiety2000,
    main="Rozkład plonów 2000",
    col=rainbow(length(tab2000)))

# Wykres dla 2010
tab2010 <- table(plon2010_cut)
procenty2010 <- round(100 * tab2010/sum(tab2010), 1)
etykiety2010 <- paste(names(tab2010), "\n", procenty2010, "%")
pie(tab2010, 
    labels=etykiety2010,
    main="Rozkład plonów 2010",
    col=rainbow(length(tab2010)))

# Wyświetlmy też rozkład liczbowy dla obu lat
cat("\nRozkład plonów 2000:\n")
print(tab2000)
cat("\nRozkład plonów 2010:\n")
print(tab2010)