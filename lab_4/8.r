# Dane
success <- 122  # bezrobotni
n <- 1000      # wielkość próby

# Test proporcji z 90% przedziałem ufności
prop.test(success, n, conf.level = 0.90)
