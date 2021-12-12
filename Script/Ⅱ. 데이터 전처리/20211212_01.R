#2021.12.12. SUN
#Data_Analytics_With_R

## CH.30 데이터셋 스케일링하기
#30.1. 스케일링(Scaling)의 정의와 방법
#(1) 스케일링의 정의와 필요성
boston_raw <- read.csv('Data/Boston.csv')
boston <- boston_raw[, c('ZN', 'TAX')] #BACK-UP
View(boston)

#(2) 스케일링 함수, scale()
#boston <- scale(boston)
boston$ZN <- scale(boston$ZN)
boston$TAX <- scale(boston$TAX)
summary(boston)

#30.2. 스케일링의 종류
#(1) Standard Scaler
boston <- boston_raw[, c('ZN', 'TAX')] #BACK-UP
boston$ZN <- scale(boston$ZN, center=mean(boston$ZN), scale=sd(boston$ZN))
boston$TAX <- scale(boston$TAX, center=mean(boston$TAX), scale=sd(boston$TAX))

#(2) Min-Max Scaler
boston <- boston_raw[, c('ZN', 'TAX')] #BACK-UP
boston$ZN <- scale(boston$ZN, center=min(boston$ZN), scale=(max(boston$ZN)-min(boston$ZN)))
boston$TAX <- scale(boston$TAX, center=min(boston$TAX), scale=(max(boston$TAX)-min(boston$TAX)))
summary(boston)

#(3) Robust Scaler
boston <- boston_raw[, c('ZN', 'TAX')] #BACK-UP
boston$ZN <- scale(boston$ZN, center=median(boston$ZN), scale=IQR(boston$ZN))
boston$TAX <- scale(boston$TAX, center=median(boston$TAX), scale=IQR(boston$TAX))
summary(boston)
