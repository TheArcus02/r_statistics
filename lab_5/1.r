# H₀: μ ≤ 4 (średnia prędkość nie przekracza 4 m/s)
# H₁: μ > 4 (średnia prędkość przekracza 4 m/s)


wiatr <- c(5.9, 4.4, 5.4, 3.8, 4.0, 4.2, 3.4, 3.6, 4.6, 6.5, 5.6, 4.8)
t.test(wiatr, mu=4, alternative="greater", conf.level=0.95)

# Interpretacja:


# Statystyka testowa t = 2.42
# p-value < 0.05
# Wniosek: Odrzucamy H₀, średnia prędkość wiatru jest istotnie większa niż 4 m/s
# Praktyczny wniosek: Lokalizacja nadaje się pod elektrownię wiatrową