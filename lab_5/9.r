# H₀: p ≤ 0.9 (90% lub mniej nie czyta)
# H₁: p > 0.9 (więcej niż 90% nie czyta)

# Test proporcji
prop.test(x=1000, n=1100, p=0.9, alternative="greater")

# Test dokładny
binom.test(x=1000, n=1100, p=0.9, alternative="greater")
