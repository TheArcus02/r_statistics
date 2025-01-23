# Dane z kontroli puszek
success <- 4  # liczba niepełnych puszek
n <- 100      # wielkość próby

# Test proporcji z 95% przedziałem ufności
prop.test(success, n, conf.level = 0.95)