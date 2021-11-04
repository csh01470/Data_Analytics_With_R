#2021.10.31. SUN
#Data_Analytics_With_R

## CH.27 결측치 파악 및 처리하기 
#27.1. 이상치 정의와 파악하기
#(1) 이상치 정의
#SKIP

#(2) 이상치 파악
student_info <- data.frame(
  name   = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
  gender = factor(c('m', 'f', 'm', 'f', 'm')),
  height = c(177, 160, 176, 159, 172),
  weight = c(75, 46, 71, 380, 22.5)
)
View(student_info)

#27.2. 이상치 처리하기. 
mpg_raw <- as.data.frame(ggplot2::mpg)
mpg <- mpg_raw 

#(1) 이상치 제거
boxplot(mpg$cty)

#(2) 이상치 대체
