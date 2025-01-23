# H₀: p = 0.6 (60% zamierza głosować)
# H₁: p ≠ 0.6

# Test proporcji
prop.test(x=1600, n=2500, p=0.6, alternative="two.sided", conf.level=0.95)

# Test dokładny
binom.test(x=1600, n=2500, p=0.6, alternative="two.sided", conf.level=0.95)


# Interpretacja wyników:
# Oba testy (prop.test i binom.test) dają podobne wyniki:

# p-value < 0.05 w obu przypadkach (4.864e-05 i 4.413e-05)
# Obserwowana proporcja = 0.64 (64%)
# Przedział ufności [0.62, 0.66]

# Wniosek: Odrzucamy H₀. Jest statystycznie istotna różnica między założoną proporcją 60% a obserwowaną 64%. Dane wskazują na wyższą frekwencję niż zakładane 60%.
# Test dokładny (binom.test) jest bardziej precyzyjny, ale przy tak dużej próbie oba testy dają praktycznie identyczne wyniki.