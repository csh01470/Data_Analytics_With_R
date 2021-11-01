#2021.09.29. WED
#Data_Analytics_With_R

## CH.26 결측치 생성, 파악 및 처리하기 
#26.1. 결측치(Missing Value) 정의와 생성하기
#(1) 결측치 정의
#SKIP

#(2) 결측치 생성
vector_01 <- c(1, 2, 3, 4, 5)
vector_01[3] <- NA

#26.2. 결측치 파악하기
titanic_train <- read.csv('Data/2019_1st_ML_month_with_KaKR/train.csv')

#(1) 결측치 파악 함수, is.na()
is.na(titanic_train)

#(2) colSums() 함수와 결합한 이상치 파악
colSums(is.na(titanic_train))

#26.3. 결측치 처리하기
#(1) 결측치 제거
titanic_train_rmna <- na.oit(titanic_train)

#PLUS) 기본 산술 함수에서 na.rm 파라미터 사용하기
mean(titanic_train$Age)
mean(titanic_train$Age, na.rm = TRUE)

#(2) 결측치 대체
titanic_train$Age <- ifelse(is.na(titanic_train$Age), 
                            mean(titanic_train$Age, na.rm=TRUE), 
                            titanic_train$Age)

#PLUS) 처리 결과 확인하기.
colSums(is.na(titanic_train))