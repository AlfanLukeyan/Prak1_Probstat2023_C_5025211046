# Author: Alfan Lukeyan Rizki - 5025211046
# Class: Probability and Statistics(C)
# Description: No. 4 - Modul I Probability Distribution

# Parameter
n <- 100
mean <- 45
sd <- 5

# Bangkitkan data acak dari distribusi Normal
set.seed(123)
x <- rnorm(n, mean, sd)

# a. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2)
X1 <- floor(mean)
X2 <- ceiling(mean)
p <- pnorm(X2, mean, sd) - pnorm(X1, mean, sd)
cat("a. Fungsi probabilitas dari distribusi Normal P(", X1, "≤ x ≤", X2, ") adalah", p, "\n")

# Hitung z-score
z1 <- (X1 - mean) / sd
z2 <- (X2 - mean) / sd
cat("z-score untuk", X1, "adalah", z1, "dan untuk", X2, "adalah", z2, "\n")

# Plot data bangkitan acak
plot(x, main="Data Bangkitan Acak dari Distribusi Normal", xlab="Index", ylab="x")

# b. Histogram dari distribusi Normal dengan breaks 50
hist(x, breaks=50, main="Histogram dari Distribusi Normal", xlab="x")

# c. Nilai varian (σ2) dari hasil data bangkitan acak distribusi Normal
variance <- var(x)
cat("c. Nilai varian dari hasil data bangkitan acak distribusi Normal adalah", variance, "\n")