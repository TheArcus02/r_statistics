# H₀: μ ≤ 0.04 (nominalna grubość)
# H₁: μ > 0.04 (blaszki są grubsze)

dane <- read.csv("lab_5/dane_est_hip.csv", sep=";")
blaszki <- na.omit(dane$Blaszki)
library(BSDA)
zsum.test(mean(blaszki), sd(blaszki),length(blaszki),mu=0.04, alternative="greater", conf.level=0.98)

# Interpretacja wyników:
# p-value = 0.05041 > 0.02 (α)
# Wniosek: Brak podstaw do odrzucenia H₀. Nie ma statystycznych dowodów, że automat produkuje blaszki grubsze niż nominalne 0.04 mm.