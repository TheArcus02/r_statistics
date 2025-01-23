# Parametry
n <- 8
p <- 0.9

# a) P(B=8) - prawdopodobieństwo, że wszystkie żarówki będą świecić ≥500h
p_a <- dbinom(8, n, p)

# b) P(B=7) - prawdopodobieństwo, że dokładnie 7 żarówek będzie świecić ≥500h
p_b <- dbinom(7, n, p)

# c) P(B>5) - prawdopodobieństwo, że więcej niż 5 żarówek będzie świecić ≥500h
p_c <- pbinom(5, n, p, lower.tail=FALSE)  # albo sum(dbinom(6:8, n, p))

# d) E(B) - wartość oczekiwana
E_B <- n * p

# e) SD(B) - odchylenie standardowe
SD_B <- sqrt(n * p * (1-p))

# Wyświetlenie wyników
cat("a) P(B=8) =", round(p_a, 4), "\n")
cat("b) P(B=7) =", round(p_b, 4), "\n")
cat("c) P(B>5) =", round(p_c, 4), "\n")
cat("d) E(B) =", round(E_B, 4), "\n")
cat("e) SD(B) =", round(SD_B, 4), "\n")
