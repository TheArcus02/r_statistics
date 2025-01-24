# Wczytanie danych
data <- read.csv("lab_7/Reg_arszenik.csv", sep=";", dec=",")
x <- data$pH
y <- data$arszenik

# a) Wykres
plot(x, y, xlab="pH", ylab="% usuniętego arszeniku")

# b) Kowariancja i korelacja
cov(x,y)  # -18.32
cor(x,y)  # -0.95

# c) Model regresji
model <- lm(y ~ x)
# y = 190.27 - 18.03x
model

# d) Zmiana przy wzroście pH o 1
coef(model)[2]  # -18.03

# e,f) Przewidywania
predict(model, newdata=data.frame(x=c(7.5, 9)))

# g) R²
summary(model)$r.squared  # 0.90

# h) Test istotności (α=0.01)
summary_model <- summary(model)
f_stat <- summary_model$fstatistic[1]  # F = 149.7
p_val <- pf(f_stat, 1, length(x)-2, lower.tail=FALSE)  # p ≈ 0

if(p_val < 0.01) print("Odrzucamy H0") else print("Brak podstaw do odrzucenia H0")


# Test istotności:
# H0: brak zależności liniowej
# H1: istnieje zależność liniowa
# p < 0.01 → odrzucamy H0, istnieje silna ujemna zależność między pH a ilością usuniętego arszeniku