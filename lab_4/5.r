# Tworzymy dane
filizanki <- rep(0:4, c(14,28,36,28,14))
n <- length(filizanki); n

# (i) Do 2 filiżanek
successes_2 <- sum(filizanki <= 2)
binom.test(successes_2, n, conf.level = 0.95)

# (ii) Do 3 filiżanek
successes_3 <- sum(filizanki <= 3)
binom.test(successes_3, n, conf.level = 0.95)

z.test(filizanki,
       sigma.x = sd(filizanki),
       conf.level = 0.95,
       )