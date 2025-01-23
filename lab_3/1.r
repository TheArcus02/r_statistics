# Obliczanie prawdopodobieństw dla s = 0,1,2,3,4,5
n <- 5
p <- 0.3
s <- 0:5

# Obliczanie prawdopodobieństw
probs <- dbinom(s, n, p)

# Stworzenie wykresu
barplot(probs, names.arg=s,
        main="Rozkład prawdopodobieństwa liczby skażonych studni",
        xlab="Liczba skażonych studni (S)",
        ylab="Prawdopodobieństwo")

# Wyświetlenie rozkładu
for(i in 1:length(s)) {
    cat("P(S =", s[i],") =", round(probs[i], 4), "\n")
}