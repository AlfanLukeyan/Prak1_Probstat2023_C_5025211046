# Author: Alfan Lukeyan Rizki - 5025211046
# Class: Probability and Statistics(C)
# Description: No. 1 - Modul I Probability Distribution

# Soal No. 1
# Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488.
# Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, maka:

# A. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai?
# Penyelesaian  :
  # Parameter
  sampleSize = 10
  probability = 0.488

# B. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?
# Penyelesaian  :
  # Parameter
  qValue <- 3
  probability <- 0.488
  sampleSize <- 10
  # Calculate 
  result <- dbinom(qValue, size = sampleSize, prob = probability)
  result

# C. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?
# Penyelesaian  :
  
  qValue <- 2
  probability <- 0.488
  sampleSize <- 10
  result <- dbinom(qValue, size = sampleSize, prob = probability)
  result

# D. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?
# Penyelesaian  :

  qValue <- 2
  probability <- 0.488
  sampleSize <- 10
  lowerTail <- FALSE
  result <- pbinom(q = qValue, size = sampleSize, prob = probability, lower.tail = lowerTail)
  result  

# E. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
# Penyelesaian  :

  sampleSize <- 10
  probability <- 0.488
  expectedValue <- sampleSize * probability
  expectedValue
  standardDeviation <- sqrt(sampleSize * probability * (1 - probability))
  standardDeviation

# F. Gambarkan histogram pendistribusian banyak bayi laki-laki.
# Penyelesaian  :

  # Set parameters
  probability <- 0.488
  sampleSize <- 10
  
  # Generate binomial distribution
  xValue <- 0:sampleSize
  yValue <- dbinom(xValue, size = sampleSize, prob = probability)
  
  # Plot histogram
  barplot(yValue, names.arg = xValue, xlab = "Number of baby boys", ylab = "Probability", main = "Distribution of baby boys born in a day")
