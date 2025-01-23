# Dane
nikotyna <- c(1.87, 2.28, 1.77, 2.13, 1.43, 1.64, 2.38, 1.39, 1.94, 2.68, 1.95, 0.86, 1.98, 1.69, 1.15)

# Znane odchylenie standardowe populacji
sigma <- 0.7

# Parametry
n <- length(nikotyna)
mean_nikotyna <- mean(nikotyna)
alpha <- 0.05  # dla 95% przedziału ufności

# Wartość krytyczna z rozkładu normalnego
z_value <- qnorm(1-alpha/2)  # zamiast t_value

# Obliczenie marginesu błędu
margin <- z_value * (sigma/sqrt(n))

# Przedział ufności
dolna_granica <- mean_nikotyna - margin
gorna_granica <- mean_nikotyna + margin