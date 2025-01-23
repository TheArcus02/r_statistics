# Parametry dla rozkładu średniej
mu_srednia <- 200
sigma_srednia <- 10/sqrt(25)  # sigma/sqrt(n)

# Prawdopodobieństwo dla średniej
p_a <- pnorm(202, mu_srednia, sigma_srednia) - pnorm(199, mu_srednia, sigma_srednia)

cat("P(199 < X̄ < 202) =", round(p_a, 4), "\n")


# B)
# Parametry dla rozkładu sumy
mu_suma <- 25 * 200    # n*μ
sigma_suma <- 10 * sqrt(25)  # σ*sqrt(n)

# Prawdopodobieństwo dla sumy
p_b <- pnorm(5100, mu_suma, sigma_suma)

cat("P(suma < 5100) =", round(p_b, 4), "\n")
