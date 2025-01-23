mleko = read.csv("lab_5/dane_est_hip.csv", sep=";")
mleko = na.omit(mleko$Mleko)

# a)
# H₀: μ = 1.7
# H₁: μ ≠ 1.7

t.test(mleko, mu=1.7, alternative="two.sided", conf.level=0.95)

# t = -1.765, p-value = 0.1114 > 0.05
# Średnia próbkowa = 1.64
# Brak podstaw do odrzucenia H₀
# Wniosek: Nie ma dowodów, że średnia zawartość tłuszczu różni się od 1.7%


# b)
# H₀: σ² ≤ 0.02
# H₁: σ² > 0.02

library(TeachingDemos)
sigma.test(mleko, sigmasq=0.02, alternative="less")

# X² = 5.2, p-value = 0.1835 > 0.05
# Wariancja próbkowa = 0.0116
# Brak podstaw do odrzucenia H₀
# Wniosek: Nie ma dowodów, że wariancja przekracza 0.02