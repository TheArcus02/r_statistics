# Konwersja na minuty
mu <- 120  # 2 godziny * 60 minut
sigma <- 15  # już w minutach

# Wykres gęstości
curve(dnorm(x, mean=mu, sd=sigma), 
      from=mu-3*sigma, to=mu+3*sigma,
      main="Rozkład czasu schnięcia farby",
      xlab="Czas (minuty)",
      ylab="Gęstość prawdopodobieństwa")

# Dodanie pionowych linii dla granic
abline(v=c(111, 135), col="red", lty=2)

# Obliczenie prawdopodobieństwa
# P(111 ≤ X ≤ 135) = P(1h51min ≤ X ≤ 2h15min)
p_schnięcia <- pnorm(135, mu, sigma) - pnorm(111, mu, sigma)

cat("Prawdopodobieństwo schnięcia między 1h51min a 2h15min:", 
    round(p_schnięcia * 100, 2), "%\n")
