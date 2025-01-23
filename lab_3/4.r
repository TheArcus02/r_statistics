# Obliczenie parametru lambda
lambda <- 1/2.4

# a) P(X > 3) - prawdopodobieństwo trzęsienia > 3 stopni Richtera
p_a <- pexp(3, rate=lambda, lower.tail=FALSE)
# lub p_a <- exp(-lambda * 3)

# b) P(2 ≤ X ≤ 3) - prawdopodobieństwo trzęsienia między 2 a 3 stopniami
p_b <- pexp(3, rate=lambda) - pexp(2, rate=lambda)
# lub p_b <- exp(-lambda * 2) - exp(-lambda * 3)

# Wizualizacja
curve(dexp(x, rate=lambda), 
      from=0, to=8,
      main="Rozkład wielkości trzęsień ziemi",
      xlab="Stopnie w skali Richtera",
      ylab="Gęstość prawdopodobieństwa")

# Wyświetlenie wyników
cat("a) P(X > 3) =", round(p_a, 4), "\n")
cat("b) P(2 ≤ X ≤ 3) =", round(p_b, 4), "\n")
