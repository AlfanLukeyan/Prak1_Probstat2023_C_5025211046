# Praktikum Probabilitas dan Statistik Tahun 2023 - Modul 1
# Distribusi Probabilitas
---
## Penulis
- Alfan Lukeyan Rizki 
- 5025211046
- Probabilitas dan statistik (C)
---
## Soal 1
Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, maka:
- Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan
parameter yang sesuai.
- Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-
laki?
- Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin
laki-laki?
- Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin
laki-laki?
- Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
- Gambarkan histogram pendistribusian banyak bayi laki-laki.
### Penyelesaian :
Pertama, pendistribusian banyak bayi laki laki adalah termasuk distribusi binomial. Distribusi binomial digunakan untuk menghitung probabilitas keberhasilan dalam n kali percobaan yang saling bebas. Dalam kasus ini, keberhasilan adalah kelahiran bayi laki-laki dan jumlah percobaan adalah 10. Karena probabilitas kelahiran bayi laki-laki diketahui (0,488), kita dapat menggunakan distribusi binomial untuk menghitung probabilitas terjadinya berbagai jumlah bayi laki-laki dalam 10 kelahiran.
```R
  # Parameter
  sampleSize = 10
  probability = 0.488
```
Di bagian ini, kita menetapkan nilai untuk parameter `sampleSize`(jumlah percobaan) dan `probability` (probabilitas keberhasilan) sesuai dengan informasi yang diberikan dalam soal.
```R
# Hitung probabilitas
dbinom(3, size = sampleSize, prob = probability) # Probabilitas tepat 3 bayi laki-laki
pbinom(2, size = sampleSize, prob = probability) # Probabilitas kurang dari 3 bayi laki-laki
1 - pbinom(2, size = sampleSize, prob = probability) # Probabilitas 3 atau lebih bayi laki-laki
```
Pada bagian ini, kita menggunakan fungsi `dbinom` dan `pbinom` untuk menghitung probabilitas yang diminta dalam soal. Fungsi `dbinom` menghitung probabilitas untuk distribusi binomial dengan parameter yang diberikan. Dalam hal ini, kita menggunakan `dbinom` untuk menghitung probabilitas bahwa terdapat tepat 3 bayi laki-laki.

Fungsi `pbinom` menghitung probabilitas kumulatif untuk distribusi binomial dengan parameter yang diberikan. Dalam hal ini, kita menggunakan `pbinom` untuk menghitung probabilitas bahwa terdapat kurang dari 3 bayi laki-laki. Kita juga dapat menggunakan `pbinom` untuk menghitung probabilitas bahwa terdapat 3 atau lebih bayi laki-laki dengan mengurangi probabilitas kurang dari 3 bayi dari satu.
```R
# Hitung nilai harapan dan simpangan baku
expectedValue <- sampleSize * probability # Nilai harapan
standardDeviation <- sqrt(sampleSize * probability * (1 - probability))  # Simpangan baku
```
Di bagian ini, kita menggunakan rumus-rumus yang terkait dengan distribusi binomial untuk menghitung nilai harapan dan simpangan baku banyak bayi laki-laki.
```R
# Generate binomial distribution
xValue <- 0:n
yValue <- dbinom(xValue, size = sampleSize, prob = probability)

# Plot histogram
barplot(yValue, names.arg = xValue, xlab = "Number of baby boys", ylab = "Probability", main = "Distribution of baby boys born in a day")
```
Di bagian ini, kita menggunakan fungsi `dbinom` untuk menghitung probabilitas untuk setiap nilai X dari 0 hingga 10. Kemudian, kita menggunakan fungsi `barplot` untuk menampilkan hasilnya dalam bentuk grafik batang.

### Output :
- Berikut merupakan Output hasil dari masing masing soal:
![Soal1](img/Screenshot%202023-05-05%20at%2020.36.57.png)

## Soal 2
Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.
- Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.
- Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas
berdasarkan distribusi yang telah dipilih.
- Berapa peluang paling banyak 4 kematian akibat kanker tulang?
- Berapa peluang lebih dari 4 kematian akibat kanker tulang?
- Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?
- Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.
- Gunakan simulasi untuk memeriksa hasil sebelumnya.
- Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.
### Penyelesaian :
Soal ini dapat diselesaikan dengan menggunakan distribusi Poisson. Distribusi Poisson digunakan untuk menghitung probabilitas terjadinya sejumlah kejadian dalam interval waktu atau ruang tertentu jika rata-rata kejadian diketahui. Dalam kasus ini, kejadian adalah kematian karena kanker tulang dan rata-rata kejadian adalah 1,8.
```R
# Parameter
lambda <- 1.8
```
Di bagian ini, kita menetapkan nilai untuk parameter λ (rata-rata kejadian) sesuai dengan informasi yang diberikan dalam soal.
```R
# Hitung probabilitas
dpois(4, lambda = lambda) # Probabilitas tepat 4 kematian
ppois(3, lambda = lambda) # Probabilitas paling banyak 3 kematian
1 - ppois(3, lambda = lambda) # Probabilitas lebih dari 3 kematian
```
Di bagian ini, kita menggunakan fungsi `dpois` dan `ppois` untuk menghitung probabilitas yang diminta dalam soal. Fungsi `dpois` menghitung probabilitas untuk distribusi Poisson dengan parameter yang diberikan. Dalam hal ini, kita menggunakan `dpois` untuk menghitung probabilitas bahwa terdapat tepat 4 kematian akibat kanker tulang.

Fungsi `ppois` menghitung probabilitas kumulatif untuk distribusi Poisson dengan parameter yang diberikan. Dalam hal ini, kita menggunakan `ppois` untuk menghitung probabilitas bahwa terdapat paling banyak 3 kematian akibat kanker tulang. Kita juga dapat menggunakan `ppois` untuk menghitung probabilitas bahwa terdapat lebih dari 3 kematian akibat kanker tulang dengan mengurangi probabilitas paling banyak 3 kematian dari satu.
```R
# Hitung nilai harapan dan simpangan baku
expectedValue <- lambda # Nilai harapan
standardDeviation <- sqrt(lambda) # Simpangan baku
```
Di bagian ini, kita menggunakan rumus-rumus yang terkait dengan distribusi Poisson untuk menghitung nilai harapan dan simpangan baku banyak kematian akibat kanker tulang.
```R
xValue <- 0:10
yValue <- dpois(xValue, lambda)
barplot(yValue, names.arg=xValue, xlab="Number of Death", ylab="Probability")
```
Di bagian ini, kita menggunakan fungsi `dpois` untuk menghitung probabilitas untuk setiap nilai X yang mungkin dan Kemudian, kita menggunakan fungsi `barplot` untuk menampilkan hasilnya dalam bentuk grafik batang.
```R
# Parameter
lambda <- 1.8
nSim <- 10000

# Simulation
set.seed(123)
sim <- rpois(nSim, lambda)

# Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi
meanSim <- mean(sim)
standardDeviationSim <- sd(sim)
cat("Berdasarkan simulasi, nilai harapan banyak kematian akibat kanker tulang untuk pekerja pabrik ban adalah", meanSim, "dan standar deviasi adalah", standardDeviationSim, "\n")

# Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi
probMoreThan4Sim <- sum(sim > 4) / nSim
cat("Peluang lebih dari 4 kematian akibat kanker tulang berdasarkan simulasi adalah", probMoreThan4Sim, "\n")

barplot(y, names.arg=x, xlab="Banyak Kematian", ylab="Probabilitas")
```
Di bagian ini, kita menggunakan fungsi `rpois` untuk menghasilkan sampel acak dari distribusi Poisson dengan parameter `λ = 1,8`. Kemudian, kita menghitung proporsi sampel yang lebih besar dari 4 untuk memperkirakan peluang lebih dari 4 kematian akibat kanker tulang.

### Output :
- Berikut merupakan output untuk soal 2a - 2e :
![soal2-a-s/d-e](img/Screenshot%202023-05-05%20at%2020.55.42.png)
- Sedangkan, output soal 2f dan 2g secara berturut turut adalah sebagai berikut :
![soal2f](img/Screenshot%202023-05-05%20at%2020.59.39.png)
![soal2g](img/Screenshot%202023-05-05%20at%2021.00.54.png)

## Soal 3
Diketahui nilai x = 3 dan v = 10. Tentukan:
- Fungsi probabilitas dari distribusi Chi-Square.
- Histogram dari distribusi Chi-Square dengan 500 data acak.
- Nilai rataan (μ) dan varian (σ2) dari distribusi Chi-Square.
### Penyelesaian :
Soal ini dapat diselesaikan dengan menggunakan distribusi Chi-Square. Distribusi Chi-Square digunakan untuk menguji hipotesis tentang varians populasi dan untuk menguji ketergantungan antara variabel kategorikal. Dalam kasus ini, nilai x = 3 dan v = 10.
```R
# Parameter
v <- 10
n_sim <- 500
```
Di bagian ini, kita menetapkan nilai untuk parameter v (derajat kebebasan) dan n_sim (jumlah data acak) sesuai dengan informasi yang diberikan dalam soal.
```R
# a. Fungsi probabilitas dari distribusi Chi-Square
x <- seq(0, 30, by=0.1)
y <- dchisq(x, v)
plot(x, y, type="l", main="Fungsi Probabilitas dari Distribusi Chi-Square", xlab="x", ylab="f(x)")
```
Di bagian ini, kita menggunakan fungsi `seq` untuk membuat urutan nilai x dari 0 hingga 30 dengan interval 0.1. Kemudian, kita menggunakan fungsi `dchisq` untuk menghitung nilai fungsi probabilitas dari distribusi Chi-Square dengan parameter v = 10 pada setiap titik x. Terakhir, kita menggunakan fungsi `plot` untuk menampilkan hasilnya dalam bentuk grafik garis.
```R
# b. Histogram dari distribusi Chi-Square dengan 500 data acak
set.seed(123)
sim <- rchisq(n_sim, v)
hist(sim, main="Histogram dari Distribusi Chi-Square", xlab="x")
```
Di bagian ini, kita menggunakan fungsi `set.seed` untuk menetapkan seed generator bilangan acak agar hasil yang dihasilkan dapat direproduksi. Kemudian, kita menggunakan fungsi `rchisq` untuk menghasilkan sampel acak dari distribusi Chi-Square dengan parameter v = 10. Terakhir, kita menggunakan fungsi `hist` untuk menampilkan hasilnya dalam bentuk grafik batang.
```R
# c. Nilai rataan (μ) dan varian (σ2) dari distribusi Chi-Square
mean <- v
variance <- 2 * v
cat("c. Nilai rataan dari distribusi Chi-Square dengan", v, "derajat kebebasan adalah", mean, "dan variannya adalah", variance, "\n")
```
Di bagian ini, kita menggunakan rumus-rumus yang terkait dengan distribusi Chi-Square untuk menghitung nilai rataan dan varian dari distribusi Chi-Square dengan parameter v = 10. Kemudian, kita menggunakan fungsi `cat` untuk menampilkan hasilnya.

### Output :
- Berikut adalah output untuk soal 3a :
![soal3a](img/Screenshot%202023-05-05%20at%2021.23.04.png)
- Sedangkan, berikut adalah output untuk soal 3b dan 3c :
![soal3b-3c](img/Screenshot%202023-05-05%20at%2021.24.51.png)

## Soal 4
Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5. Tentukan:
- Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).
```r
Keterangan:
X1 = Bilangan bulat terdekat di bawah rata-rata X2 = Bilangan bulat terdekat di atas rata-rata Contoh data:
11
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6
```
- Gambarkan histogram dari distribusi Normal dengan breaks 50
- Nilai varian (σ2) dari hasil data bangkitan acak distribusi Normal.
### Penyelesaian :
Soal ini dapat diselesaikan dengan menggunakan distribusi Normal. Distribusi Normal adalah distribusi probabilitas yang sering digunakan dalam statistik untuk menggambarkan data yang simetris dan berbentuk lonceng. Dalam kasus ini, diketahui bahwa data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5. Kemudian dengan menghitung fungsi probabilitas dari distribusi Normal `P(X1 ≤ x ≤ X2)`, menghitung `z-score` untuk `X1` dan `X2`, memplot data bangkitan acak dalam bentuk grafik titik, menggambar histogram dari distribusi Normal dengan breaks 50, dan menghitung nilai varian dari data bangkitan acak.
```R
# Parameter
n <- 100
mean <- 45
sd <- 5
```
Di bagian ini, kita menetapkan nilai untuk parameter `n` (jumlah data acak), `mean` (rata-rata), dan `sd` (simpangan baku) sesuai dengan informasi yang diberikan dalam soal.
```R
# Bangkitkan data acak dari distribusi Normal
set.seed(123)
x <- rnorm(n, mean, sd)
```
Di bagian ini, kita menggunakan fungsi `set.seed` untuk menetapkan seed generator bilangan acak agar hasil yang dihasilkan dapat direproduksi. Kemudian, kita menggunakan fungsi `rnorm` untuk menghasilkan sampel acak dari distribusi Normal dengan mean = 45 dan sd = 5.
```R
# a. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2)
X1 <- floor(mean)
X2 <- ceiling(mean)
p <- pnorm(X2, mean, sd) - pnorm(X1, mean, sd)
cat("a. Fungsi probabilitas dari distribusi Normal P(", X1, "≤ x ≤", X2, ") adalah", p, "\n")
```
Di bagian ini, kita menggunakan fungsi `floor` dan `ceiling` untuk menentukan nilai X1 dan X2 sebagai bilangan bulat terdekat di bawah dan di atas rata-rata. Kemudian, kita menggunakan fungsi `pnorm` untuk menghitung probabilitas kumulatif dari distribusi Normal dengan mean = 45 dan sd = 5 pada titik `X1` dan `X2`. Terakhir, kita mengurangi probabilitas kumulatif pada titik `X1` dari probabilitas kumulatif pada titik `X2` untuk mendapatkan fungsi probabilitas P(X1 ≤ x ≤ X2).
```R
# Hitung z-score
z1 <- (X1 - mean) / sd
z2 <- (X2 - mean) / sd
cat("z-score untuk", X1, "adalah", z1, "dan untuk", X2, "adalah", z2, "\n")
```
Di bagian ini, kita menggunakan rumus `z-score` untuk menghitung z-score untuk X1 dan X2.
```R
# Plot data bangkitan acak
plot(x, main="Data Bangkitan Acak dari Distribusi Normal", xlab="Index", ylab="x")
```
Di bagian ini, kita menggunakan fungsi `plot` untuk menampilkan data bangkitan acak dalam bentuk grafik titik.
```R
# b. Histogram dari distribusi Normal dengan breaks 50
hist(x, breaks=50, main="Histogram dari Distribusi Normal", xlab="x")
```
Di bagian ini, kita menggunakan fungsi `hist` untuk menampilkan data bangkitan acak dalam bentuk grafik batang dengan breaks 50.
```R
# c. Nilai varian (σ2) dari hasil data bangkitan acak distribusi Normal
variance <- var(x)
cat("c. Nilai varian dari hasil data bangkitan acak distribusi Normal adalah", variance, "\n")
```
Di bagian ini, kita menggunakan fungsi `var` untuk menghitung varian dari data bangkitan acak.

### Output :
- Berikut adalah output untuk soal 4a :
![Soal4a](img/Screenshot%202023-05-05%20at%2021.49.36.png)
- Sedangkan berikut ini merupakan output untuk soal 4b
![Soal4b](img/Screenshot%202023-05-05%20at%2021.51.10.png)
![Soal4b-1](img/Screenshot%202023-05-05%20at%2021.51.36.png)
- Selanjut nya output untuk soal 4c
![Soal4c](img/Screenshot%202023-05-05%20at%2021.52.36.png)

## Soal 5
Kerjakanlah menggunakan distribusi T-Student.
- Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?
- Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?
- Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?
- Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?
- Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?
- Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?
- Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?
- Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?

### Penyelesaian :
Soal ini dapat diselesaikan dengan menggunakan distribusi T-Student. Distribusi T-Student adalah distribusi probabilitas yang sering digunakan dalam statistik untuk menguji hipotesis tentang rata-rata populasi ketika ukuran sampel kecil dan simpangan baku populasi tidak diketahui.

a. Probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan dapat dihitung dengan menggunakan fungsi pt dalam R untuk menghitung probabilitas kumulatif dari distribusi T-Student dengan 6 derajat kebebasan pada titik -2,34:
```R
df <- 6
x <- -2.34
p <- pt(x, df)
```
b. Probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan dapat dihitung dengan menggunakan fungsi pt dalam R untuk menghitung probabilitas kumulatif dari distribusi T-Student dengan 6 derajat kebebasan pada titik 1,34 dan mengurangkannya dari satu:
```R
df <- 6
x <- 1.34
p <- 1 - pt(x, df)
```
c. Probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan dapat dihitung dengan menggunakan fungsi pt dalam R untuk menghitung probabilitas kumulatif dari distribusi T-Student dengan 3 derajat kebebasan pada titik -1,23 dan 1,23 dan menjumlahkan keduanya:
```R
df <- 3
x1 <- -1.23
x2 <- 1.23
p <- pt(x1, df) + (1 - pt(x2, df))
```
d. Probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan dapat dihitung dengan menggunakan fungsi pt dalam R untuk menghitung probabilitas kumulatif dari distribusi T-Student dengan 14 derajat kebebasan pada titik -0,94 dan 0,94 dan mengurangi probabilitas kumulatif pada titik -0,94 dari probabilitas kumulatif pada titik 0,94:
```R
df <- 14
x1 <- -0.94
x2 <- 0.94
p <- pt(x2, df) - pt(x1, df)
```
e. Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut dapat dihitung dengan menggunakan fungsi qt dalam R untuk menghitung kuantil dari distribusi T-Student dengan 5 derajat kebebasan pada probabilitas kumulatif 0,0333:
```R
df <- 5
p <- 0.0333
t_score <- qt(p, df)
```
f. Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut dapat dihitung dengan menggunakan fungsi qt dalam R untuk menghitung kuantil dari distribusi T-Student dengan 25 derajat kebebasan pada probabilitas kumulatif (1 - 0,125):
```R
df <- 25
p <- (1 - 0.125)
t_score <- qt(p, df)
```
g. Nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut dapat dihitung dengan menggunakan fungsi qt dalam R untuk menghitung kuantil dari distribusi T-Student dengan 11 derajat kebebasan pada probabilitas kumulatif (1 + 0.75) / 2:
```R
df <-11
p <-(1 + .75)/2 
t_score
```
h. Nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut dapat dihitung dengan menggunakan fungsi qt dalam R untuk menghitung kuantil dari distribusi T-Student dengan 23 derajat kebebasan pada probabilitas kumulatif (1 - 0,0333) / 2:
```R
df <- 23
p <- (1 - 0.0333) / 2
t_score <- qt(p, df)
```

### Output 
Berikut adalah output untuk soal 5, dengan output hasil setiap soal nya ada di sebelah kiri layar
![soal5-kirilayar](img/Screenshot%202023-05-05%20at%2022.17.43.png)
![soal5-kananlayar](img/Screenshot%202023-05-05%20at%2022.18.20.png)