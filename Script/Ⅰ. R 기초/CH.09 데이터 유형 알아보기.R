#2021.09.06. FRI
#Data_Analytics_With_R

## CH.09 데이터 유형 알아보기
#09.1 문자(Character)
#(1) 문자형 데이터의 정의
#SKIP
 
#(2) 예시
chr_01 <- "Data Analytics With R"

#09.2. 숫자(Number)
#(1) 숫자형 데이터의 정의
#SKIP

#(2) 예시
num_Realnumber <- 3
num_integer <- 3L

#PLUS) 복소수
#SKIP

#09.3. 논리(Logical)
#(1) 논리형 데이터의 정의
#SKIP

#(2) 예시
logical_01 <- TRUE
logical_02 <- True

#PLUS) 특수값
#SKIP

#09.4. 팩터(Factor, 범주)
#(1)

#(2) 예시
gender <- c("f", "f", "m", 35, "f", TRUE, "F", "m", "m", "m") #"f", "m" 외에도 결측값 존재
factor_01 <- factor(
  x=gender,
  levels=c("f", "m"),
  labels=c("female", "male"),
  ordered=FALSE 
)             

#09.5. 날짜(Date)
#SKIP
