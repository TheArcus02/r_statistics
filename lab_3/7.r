# Dokładne prawdopodobieństwo (rozkład dwumianowy)
p_dokładne <- pbinom(15, size=100, prob=0.25)

# Przybliżenie normalnym
# Parametry rozkładu normalnego:
mu <- 100 * 0.25  # np = 25
sigma <- sqrt(100 * 0.25 * 0.75)  # sqrt(npq) = 4.33

# Przybliżone prawdopodobieństwo z korektą ciągłości
p_przybliżone <- pnorm(15.5, mean=mu, sd=sigma)

cat("Prawdopodobieństwo dokładne:", round(p_dokładne, 4), "\n")
cat("Prawdopodobieństwo przybliżone:", round(p_przybliżone, 4), "\n")
