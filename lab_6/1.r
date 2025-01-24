# Wczytanie danych
data <- read.csv("lab_6/Anova_cisnienie.csv", sep=";", header=TRUE)
head(data)
# Test normalności
library(nortest)
lillie.test(unlist(data))

# Test jednorodności wariancji
bartlett.test(list(data$Niskie, data$Srednie, data$Silne, data$BardzoSilne))

# ANOVA
dane_long <- stack(data)
anova(lm(values ~ ind, data=dane_long))


# Przeanalizujmy wyniki:

# Test normalności (Lilliefors):
# p-value = 0.1089 > 0.05
# Wniosek: Dane mają rozkład normalny


# Test jednorodności wariancji (Bartlett):
# p-value = 0.5009 > 0.05
# Wniosek: Wariancje w grupach są jednorodne


# ANOVA:
# F = 2.267, p-value = 0.0974 > 0.05
# Wniosek: Nie ma podstaw do odrzucenia H0

# Końcowy wniosek: Na poziomie istotności 0.05 nie możemy stwierdzić, że ciśnienie ma istotny wpływ na wielkość produkcji. Wszystkie założenia ANOVA (normalność, jednorodność wariancji) są spełnione.