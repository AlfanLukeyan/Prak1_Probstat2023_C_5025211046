# Author: Alfan Lukeyan Rizki - 5025211046
# Class: Probability and Statistics(C)
# Description: No. 5 - Modul I Probability Distribution

# a. Probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan
df <- 6
x <- -2.34
p_a <- pt(x, df)
p_a

# b. Probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan
df <- 6
x <- 1.34
p_b <- 1 - pt(x, df)
p_b

# c. Probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan
df <- 3
x1 <- -1.23
x2 <- 1.23
p_c <- pt(x1, df) + (1 - pt(x2, df))
p_c

# d. Probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan
df <- 14
x1 <- -0.94
x2 <- 0.94
p_d <- pt(x2, df) - pt(x1, df)
p_d

# e. Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut
df <- 5
p <- 0.0333
t_score_e <- qt(p, df)
t_score_e


# f. Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut
df <- 25
p <- (1 - 0.125)
t_score_f <- qt(p, df)
t_score_f

# g. Nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut
df <-11 
p <-(1 + .75)/2 
t_score_g<-qt(p,df)
t_score_g

# h. Nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut
df <-23 
p <-(1-.0333)/2 
t_score_h<-qt(p,df)
t_score_h