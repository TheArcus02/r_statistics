data = read.csv("lab_6/Anova_mikrometr.csv", sep=";", header=TRUE, dec=",")
head(data)
data_clean <- na.omit(data)
dane_long <- stack(data_clean)

# Hipotezy:
# H0: μ1 = μ2 = μ3 (średnie pomiary są równe)
# H1: przynajmniej jedna średnia się różni

# Test normalności i wariancji
lillie.test(unlist(data))
bartlett.test(values ~ ind, data=dane_long)

# ANOVA
wynik <- anova(lm(values ~ ind, data=dane_long))
wynik


# Analiza wyników:

# Test normalności: p-value = 0.01504 < 0.05 → rozkład odbiega od normalnego
# Test Bartletta: p-value = 0.4323 > 0.05 → wariancje są jednorodne
# ANOVA: F = 3.5, p-value = 0.07508 > 0.05

# Wniosek: Przy α = 0.05 nie ma podstaw do odrzucenia H0. Nie możemy stwierdzić, że wybór mikrometru ma istotny wpływ na wyniki pomiarów.
# Uwaga: Mimo naruszenia założenia o normalności, wysoka p-value w teście ANOVA (0.07508) sugeruje brak istotnych różnic między mikrometrami.