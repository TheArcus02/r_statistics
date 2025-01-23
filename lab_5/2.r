# H₀: μ ≥ 3.5 (średnia wartość COP jest przynajmniej 3.5)
# H₁: μ < 3.5 (średnia wartość COP jest mniejsza niż 3.5)

pompa <- c(3.5, 3.2, 3.6, 3.0, 3.3, 3.8, 2.5, 3.0, 3.7, 3.9)
t.test(pompa, mu=3.5, alternative="less", conf.level=0.99)

# Interpretacja:


# Statystyka testowa t = -1.0898
# Poziom istotności α = 0.01
# p-value = 0.1521 > 0.01
# Wniosek: Brak podstaw do odrzucenia H₀
# Praktyczny wniosek: Nie ma statystycznie istotnych dowodów, że pompa działa gorzej niż deklarowane 3.5 COP