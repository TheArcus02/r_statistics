# H₀: μ = 870 (średnia głębokość nie zmieniła się)
# H₁: μ ≠ 870 (średnia głębokość się zmieniła)

library(BSDA)
glebokosci <- c(862, 870, 876, 866, 871)
z.test(glebokosci, sigma.x=5, mu=870, alternative="two.sided", conf.level=0.95)

# Interpretacja wyników:

# z = -0.44721 (|z| < 1.96, więc nie przekracza wartości krytycznej)
# p-value = 0.6547 > 0.05
# przedział ufności [864.62, 873.38] zawiera μ₀ = 870
# Wniosek: Brak podstaw do odrzucenia H₀. Nie ma statystycznych dowodów na zmianę średniej głębokości morza.
