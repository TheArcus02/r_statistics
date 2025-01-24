data <- read.csv("lab_7/Reg_urzadzenie.csv", sep=";")
head(data)
x <- data$efektywnosc
y <- data$zywotnosc
# a) Wykres punktowy
plot(x, y, xlab="Efektywność", ylab="Żywotność", main="Zależność żywotności od efektywności")

# b) Kowariancja
cov(x,y) # = -8.65
# Ujemna kowariancja -> wzrost efektywności wiąże się ze spadkiem żywotności

# c) Korelacja
cor(x,y) # = -0.91
# Silna ujemna korelacja

# d) Model regresji
model <- lm(y ~ x)
# y = 18.88 - 0.86x

# e) Zmiana przy wzroście efektywności o 1
coef(model)[2] # = -0.86

# f) Przewidywanie dla efektywności 11
predict(model, newdata=data.frame(x=11)) # = 9.4

# g) Przewidywanie dla efektywności 19
predict(model, newdata=data.frame(x=19)) # = 2.5

# h) Współczynnik determinacji R²
summary(model)$r.squared # = 0.83 (83% zmienności wyjaśnione)

# i) Test istotności regresji (α = 0.01)
summary_model <- summary(model)
f_stat <- summary_model$fstatistic[1] # F = 33.47
p_val <- pf(f_stat, 1, length(x)-2, lower.tail=FALSE) # p-value = 0.0007

# Decyzja
if(p_val < 0.01) {
 print("Odrzucamy H0 - istnieje istotna zależność liniowa")
} else {
 print("Brak podstaw do odrzucenia H0")
}

# Interpretacja testu:
# H0: brak zależności liniowej
# H1: istnieje zależność liniowa
# p-value = 0.0007 < 0.01, więc odrzucamy H0
# Istnieje istotna ujemna zależność między efektywnością a żywotnością urządzenia