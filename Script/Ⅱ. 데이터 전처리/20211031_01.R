#2021.10.31. SUN
#Data_Analytics_With_R

#00-1. 시스템 옵션 설정하기. 
options(scipen=100)

## CH.27 결측치 판단 및 처리하기 
#27.1. 이상치 정의와 판단하기
#(1) 이상치 정의
#SKIP

#(2) 이상치 판단
student_info <- data.frame(
  name   = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
  gender = factor(c('m', 'f', 'm', 'f', 'm')),
  height = c(177, 160, 176, 159, 172),
  weight = c(75, 46, 71, 380, 22.5)
)

#27.2. 이상치 처리하기. 
mpg_raw <- as.data.frame(ggplot2::mpg)
mpg <- mpg_raw 

#(1) Boxplot을 이용한 이상치 제거
boxplot(mpg$hwy)$stats
mpg$hwy <- ifelse(mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))
boxplot(mpg$hwy)$stats

#Q. IS IQR USING Q1 or Median?
IQR_mpg <- summary(mpg$hwy)['3rd Qu.']- summary(mpg$hwy)['1st Qu.'] ; IQR_mpg
#IF_01. USING Median
summary(mpg$hwy)['Median'] - 1.5 * IQR_mpg
summary(mpg$hwy)['Median'] + 1.5 * IQR_mpg
#IF_02. USING Q1, Q3
summary(mpg$hwy)['1st Qu.'] - 1.5 * IQR_mpg
summary(mpg$hwy)['3rd Qu.'] + 1.5 * IQR_mpg
#PLUS. Comparing Boxplot Stats
boxplot.stats(mpg$hwy, coef = 1.5)
boxplot(mpg$hwy)$stats

#(2) 3-sigma-rule을 이용한 이상치 제거
sigma_hwy <- sd(mpg$hwy)
mean_hwy <- mean(mpg$hwy)
mpg$hwy <- ifelse(mpg$hwy > mean_hwy + 3 * sigma_hwy | mpg$hwy < mean_hwy - 3 * sigma_hwy,
                  NA,
                  mpg$hwy)
table(is.na(mpg$hwy))

#PLUS) 정규성 파악
shapiro.test(mpg_raw$hwy)
hist(mpg_raw$hwy)