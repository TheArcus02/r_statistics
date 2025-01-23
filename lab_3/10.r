# Parametry dla sumy (całej liny)
mu_suma <- 100 * 0.5    # n*μ = 50 kg
sigma_suma <- 0.2 * sqrt(100)  # σ*sqrt(n) = 2 kg

# Obliczenie prawdopodobieństwa
# P(suma > 47) = 1 - P(suma ≤ 47)
p <- 1 - pnorm(47, mu_suma, sigma_suma)

cat("Prawdopodobieństwo utrzymania 47 kg =", round(p, 4), "\n")
