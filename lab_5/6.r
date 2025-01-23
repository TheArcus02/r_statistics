dane <- read.csv("lab_5/dane_est_hip.csv", sep=";")
kukulki <- na.omit(dane$Kukulki)

# a(i) Test dla średniej
# H₀: μ = 17
# H₁: μ ≠ 17
library(BSDA)
z.test(kukulki, sigma.x=2.5, mu=17, alternative="two.sided", conf.level=0.95)

# a(ii) Test dla wariancji
# H₀: σ² = 6.25 (σ = 2.5)
# H₁: σ² ≠ 6.25
library(TeachingDemos)
sigma.test(kukulki, sigmasq=6.25, alternative="two.sided")

# Interpretacja wyników:

# Test dla średniej (z-test):


# p-value = 0.01258 < 0.05
# z = 2.4955 > 1.96
# Odrzucamy H₀
# Średnia długość jaj kukułki (18.36 mm) jest istotnie różna od średniej jaj strzyżyka (17 mm)


# Test dla wariancji:


# p-value = 0.4984 > 0.05
# Brak podstaw do odrzucenia H₀
# Wariancja nie różni się istotnie od 6.25

# Przedział ufności [17.29, 19.43] pokazuje zakres dla prawdziwej średniej z 95% pewnością.