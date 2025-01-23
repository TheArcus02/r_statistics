# Parametry dla pojedynczego pracownika
mu <- 202
sigma <- 14

# Parametry dla średniej z próby (n=64)
mu_srednia <- mu  # średnia nie zmienia się
sigma_srednia <- sigma/sqrt(64)  # odchylenie standardowe średniej

# Obliczenie prawdopodobieństwa
p <- pnorm(206, mu_srednia, sigma_srednia) - pnorm(198, mu_srednia, sigma_srednia)

cat("Prawdopodobieństwo P(198 < X̄ < 206) =", round(p, 4), "\n")
