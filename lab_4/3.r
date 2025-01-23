# Dane
wodor <- c(4.28, 3.3, 4.22, 2.77, 2.75, 2.93, 3.86, 3.05, 4.12, 2.88, 3.94, 4.99, 2.08, 4.35, 2.7, 4.09, 2.81, 2.82)

# a) Estymatory punktowe
mean_wodor <- mean(wodor); mean_wodor
var_wodor <- var(wodor); var_wodor

# b) 90% przedział ufności dla średniej
n <- length(wodor)
alpha <- 0.10  # bo chcemy 90% przedział ufności
t_value <- qt(1-alpha/2, df=n-1)
margin <- t_value * (sd(wodor)/sqrt(n))
mean_lower <- mean_wodor - margin; mean_lower
mean_upper <- mean_wodor + margin; mean_upper

# c) 90% przedział ufności dla wariancji
chi_lower <- qchisq(alpha/2, df=n-1)
chi_upper <- qchisq(1-alpha/2, df=n-1)
var_lower <- (n-1)*var_wodor/chi_upper; var_lower
var_upper <- (n-1)*var_wodor/chi_lower; var_upper
