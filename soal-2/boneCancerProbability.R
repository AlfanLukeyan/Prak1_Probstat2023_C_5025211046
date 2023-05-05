# Author: Alfan Lukeyan Rizki - 5025211046
# Class: Probability and Statistics(C)
# Description: No. 2 - Modul I Probability Distribution

# Soal No.2
# Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.

# a. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.
# Penyelesaian  :
# Parameter
lambda <- 1.8
# Distribusi banyak kematian karena kanker tulang adalah distribusi Poisson dengan parameter λ = 1.8
# Berikut merupakan rumus distribusi Poisson P(X = x) = (e^(-λ) * λ^x) / x!

# b. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.
# Penyelesaian  :
  # Parameter 
  qValue <- 4
  lambda <- 1.8
  # Calculate
  prob4 <- dpois(qValue, lambda)
  prob4

# c. Berapa peluang paling banyak 4 kematian akibat kanker tulang?
# Penyelesaian :
  # Parameter
  qValue <- 4
  lambda <- 1.8
  probLessThan4 <- ppois(qValue, lambda)
  probLessThan4
  
# d. Berapa peluang lebih dari 4 kematian akibat kanker tulang?
# Penyelesaian  :
  qValue <- 4
  lambda <- 1.8
  probLessThan4 <- ppois(qValue, lambda)
  probMoreThan4 <- 1 - probLessThan4
  probMoreThan4
  
  
# e. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?
# Penyelesaian  :
  expectedValue <- lambda
  standardDeviation <- sqrt(lambda)
  cat("Nilai harapan = ",expectedValue," sedangkan, Nilai Standar deviasi = ", standardDeviation)
  
# f. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.
# Penyelesaian
  xValue <- 0:10
  yValue <- dpois(xValue, lambda)
  barplot(yValue, names.arg=xValue, xlab="Number of Death", ylab="Probability")
  
# g. Gunakan simulasi untuk memeriksa hasil sebelumnya.
# Penyelesaian  :
  # Parameter
  lambda <- 1.8
  nSim <- 10000
  
  # Simulation
  set.seed(123)
  sim <- rpois(nSim, lambda)

  # h. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi
  meanSim <- mean(sim)
  standardDeviationSim <- sd(sim)
  cat("h. Berdasarkan simulasi, nilai harapan banyak kematian akibat kanker tulang untuk pekerja pabrik ban adalah", meanSim, "dan standar deviasi adalah", standardDeviationSim, "\n")
  
  # Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi
  probMoreThan4Sim <- sum(sim > 4) / nSim
  cat("Peluang lebih dari 4 kematian akibat kanker tulang berdasarkan simulasi adalah", probMoreThan4Sim, "\n")

barplot(yValue, names.arg=xValue, xlab="Banyak Kematian", ylab="Probabilitas")