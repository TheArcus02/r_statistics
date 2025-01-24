# Wczytanie danych
data <- read.csv("lab_6/Anova_chomiki.csv", sep=";", dec=",")
head(data)
data_clean <- na.omit(data)
dane_long <- stack(data)

# Hipotezy
# H0: μI = μII = μIII = μIV (średnie masy tarczyc są równe)
# H1: przynajmniej jedna średnia różni się

# Test normalności i wariancji
lillie.test(unlist(data))
bartlett.test(values ~ ind, data=dane_long)

# ANOVA
wynik <- aov(values ~ ind, data=dane_long)
summary(wynik)

# Test Tukeya
TukeyHSD(wynik)


# Analiza wyników dla tarczyc chomików:

# Założenia ANOVA spełnione:
# Normalność: p=0.3946 > 0.05
# Jednorodność wariancji: p=0.2139 > 0.05

# ANOVA: F=3.952, p=0.024 < 0.05
# → Odrzucamy H0: poziom inbredu wpływa na masę tarczycy
# Test Tukeya pokazuje:

# Istotna różnica między grupą IV i I (p=0.0284)
# Prawie istotna różnica III-I (p=0.0671)

# Grupy jednorodne:
# I-II-III
# II-III-IV

# Wniosek: Poziom inbredu ma istotny wpływ na masę tarczycy chomików, szczególnie widoczny między grupą I (niezinbredowaną) a IV (najwyższy poziom inbredu).