data = read.csv("lab_7/Reg_chemik.csv", sep=";")
head(data)

x = data$X
y = data$Y

# (a) Wykres punktowy
plot(data$X, data$Y, xlab="Ilość surowca (l)", ylab="Wielkość produkcji (kg)", 
     main="Zależność produkcji od ilości surowca")

# (b) Kowariancja
cov(x,y)  # = 138.49
# Dodatnia kowariancja wskazuje na dodatni związek między zmiennymi

# (c) Współczynnik korelacji
cor(x,y)  # = 0.895
# Silna dodatnia korelacja - wzrost surowca silnie wiąże się ze wzrostem produkcji

# (d) Model regresji
model <- lm(y ~ x)
# y = 22.4 + 3.62x
model
# (e) Dodanie linii regresji
abline(model, col="red")

# f) Zmiana przy wzroście o 1l
coef(model)[2]  # = 3.62

# g) Przewidywanie dla 20l
predict(model, newdata=data.frame(x=20))  # = 95

# h) Przewidywanie dla 15l
predict(model, newdata=data.frame(x=15))  # = 77

# (i) Ocena dopasowania
summary(model)$r.squared  # = 0.80 czyli 80% zmienności wyjaśnione

# (j) Test istotności regresji:
summary_model <- summary(model)
f_stat <- summary_model$fstatistic[1]  # F = 32.332
f_stat
p_val <- pf(f_stat, 1, length(x)-2, lower.tail=FALSE)  # p-value = 0.0005
p_val
# Decyzja na podstawie α = 0.05
if(p_val < 0.05) {
  print("Odrzucamy H0 - istnieje istotna zależność liniowa")
} else {
  print("Brak podstaw do odrzucenia H0")
}


# Interpretacja testu istotności:

# Bardzo mała wartość p (0.0005) wskazuje na silne dowody przeciwko H0
# Możemy wnioskować, że istnieje istotna liniowa zależność między ilością surowca a wielkością produkcji
# Wynik jest zgodny z wysokim R² = 0.80