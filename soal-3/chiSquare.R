# Author: Alfan Lukeyan Rizki - 5025211046
# Class: Probability and Statistics(C)
# Description: No. 3 - Modul I Probability Distribution

# Parameter
v <- 10
n_sim <- 500

# a. Fungsi probabilitas dari distribusi Chi-Square
x <- seq(0, 30, by=0.1)
y <- dchisq(x, v)
plot(x, y, type="l", main="Fungsi Probabilitas dari Distribusi Chi-Square", xlab="x", ylab="f(x)")

# b. Histogram dari distribusi Chi-Square dengan 500 data acak
set.seed(123)
sim <- rchisq(n_sim, v)
hist(sim, main="Histogram dari Distribusi Chi-Square", xlab="x")

# c. Nilai rataan (μ) dan varian (σ2) dari distribusi Chi-Square
mean <- v
variance <- 2 * v
cat("c. Nilai rataan dari distribusi Chi-Square dengan", v, "derajat kebebasan adalah", mean, "dan variannya adalah", variance, "\n")