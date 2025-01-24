# Wczytanie danych
data <- read.csv("lab_6/Anova_kopalnie.csv", sep=";", header=TRUE, dec=",")
dane_long <- stack(data)

# Hipotezy:
# H0: μ1 = μ2 = μ3 = μ4 = μ5 (średnie zawartości popiołu są równe)
# H1: przynajmniej jedna średnia różni się

# Test normalności
lillie.test(unlist(data))

# Test jednorodności wariancji
bartlett.test(values ~ ind, data=dane_long)

# ANOVA
wynik <- anova(lm(values ~ ind, data=dane_long))
wynik


# Analiza wyników:

# Test normalności: p-value = 0.211 > 0.05 → rozkład normalny potwierdzony
# Test Bartletta: p-value = 0.03188 < 0.05 → wariancje nie są jednorodne
# ANOVA: F = 0.9563, p-value = 0.4594 > 0.01

# Wniosek: Na poziomie istotności 0.01 nie ma podstaw do odrzucenia H0. Nie możemy stwierdzić, że średnie zawartości popiołu dla ekogroszku z różnych kopalni różnią się istotnie.
# Uwaga: Mimo naruszenia założenia o jednorodności wariancji, przy α = 0.01 wynik ANOVA wskazuje jednoznacznie na brak różnic między kopalniami.