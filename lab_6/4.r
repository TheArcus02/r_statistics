# Wczytanie danych
data <- read.csv("lab_6/Anova_sportowcy.csv", sep=";", dec=",")
head(data)
dane_long <- stack(data)

# Test normalności i wariancji
lillie.test(unlist(data))
bartlett.test(values ~ ind, data=dane_long)

# ANOVA
wynik <- aov(values ~ ind, data=dane_long)
summary(wynik)

# Test Tukeya
# Jeśli p adj < 0.05, różnica między grupami jest istotna statystycznie.
TukeyHSD(wynik)



# Analiza wyników:

# Założenia ANOVA spełnione:
# Normalność: p-value = 0.8556 > 0.01
# Jednorodność wariancji: p-value = 0.8517 > 0.01

# ANOVA:
# F = 6.12, p-value = 0.00398 < 0.01
# → Odrzucamy H0: palenie ma istotny wpływ na rytm serca
# Test Tukeya wskazuje istotne różnice między:

# Lekkopalący vs Niepalący (p=0.0064)
# Średniopalący vs Lekkopalący (p=0.0091)

# Grupy jednorodne:
# N-S-D (niepalący, średniopalący, dużopalący)
# L-D (lekkopalący, dużopalący)

# Wniosek: Palenie istotnie wpływa na rytm serca sportowców, szczególnie widoczne różnice są między grupą lekkopalących a niepalących oraz lekkopalących a średniopalących.