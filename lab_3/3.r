# Parametry
lambda <- 0.01

# Wykres funkcji gęstości rozkładu wykładniczego
curve(dexp(x, rate=lambda), 
      from=0, to=400,
      main="Funkcja gęstości rozkładu wykładniczego",
      xlab="Czas (dni)",
      ylab="Gęstość prawdopodobieństwa")

# a) P(T ≥ 200) - prawdopodobieństwo przetrwania co najmniej 200 dni
p_a <- pexp(200, rate=lambda, lower.tail=FALSE)
# lub p_a <- exp(-lambda * 200)

# b) P(T < 100) - prawdopodobieństwo awarii przed upływem 100 dni
p_b <- pexp(100, rate=lambda)
# lub p_b <- 1 - exp(-lambda * 100)

cat("a) P(T ≥ 200) =", round(p_a, 4), "\n")
cat("b) P(T < 100) =", round(p_b, 4), "\n")
