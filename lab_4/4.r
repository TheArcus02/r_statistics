# Tworzymy wektor 365 wartości równych 102
data <- rep(102, 365)

# Wykonujemy z.test
library(BSDA)
z.test(data, 
       mu = 122,  
       sigma.x = sqrt(81),
       conf.level = 0.98,
       alternative = "greater"  # test jednostronny
       ) 