# Wczytanie danych
diamenty <- c(0.46, 0.61, 0.52, 0.48, 0.57, 0.54, 0.47, 0.63, 0.51, 0.49, 0.58, 0.55)

# Oceny punktowe
srednia <- mean(diamenty); srednia
wariancja <- var(diamenty); wariancja
odch_std <- sd(diamenty); odch_std

# Przedział ufności dla średniej
n <- length(diamenty); n
alpha <- 0.05; alpha  # poziom ufności 95%
t_value <- qt(1-alpha/2, df=n-1); t_value
margin <- t_value * (odch_std/sqrt(n)); margin
dolna_granica <- srednia - margin; dolna_granica
gorna_granica <- srednia + margin; gorna_granica