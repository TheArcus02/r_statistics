# H₀: p ≥ 0.02 (2% lub więcej jaj złej jakości)
# H₁: p < 0.02 (mniej niż 2% jaj złej jakości)

# Test proporcji
prop.test(x=16, n=1200, p=0.02, alternative="less")

# Test dokładny
binom.test(x=16, n=1200, p=0.02, alternative="less")

# Interpretacja wyników:
# Test proporcji:

# p-value = 0.061 > 0.05
# Proporcja obserwowana = 0.0133 (1.33%)

# Test dokładny:

# p-value = 0.05451 > 0.05
# Proporcja obserwowana = 0.0133 (1.33%)

# Wniosek: Brak podstaw do odrzucenia H₀. Nie ma statystycznych dowodów, że frakcja wadliwych jaj jest mniejsza niż 2%. Mimo że obserwowana proporcja (1.33%) jest niższa od 2%, różnica nie jest statystycznie istotna na poziomie α=0.05.