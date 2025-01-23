# Parametry
mu <- 0.13
sigma <- 0.005

# Wizualizacja rozkładu normalnego
curve(dnorm(x, mean=mu, sd=sigma), 
      from=0.11, to=0.15,  # zakres wykresu
      main="Rozkład rezystancji przewodów",
      xlab="Rezystancja (omy)",
      ylab="Gęstość prawdopodobieństwa")

# Dodanie pionowych linii dla granic specyfikacji
abline(v=c(0.12, 0.14), col="red", lty=2)

# Prawdopodobieństwo, że przewód spełnia wymagania
# P(0.12 ≤ X ≤ 0.14)
p_ok <- pnorm(0.14, mu, sigma) - pnorm(0.12, mu, sigma)

cat("Prawdopodobieństwo spełnienia wymagań:", round(p_ok * 100, 2), "%\n")
