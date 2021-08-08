#2021.08.08. SUN
#Data_Analytics_With_R

## CH.11 R의 기본 함수 파악하기
#11.1. 기초 통계 함수
vector_01 <- c(1,2,3,4,5)

#(1) 최댓값 함수
max(vector_01)

#(2) 최솟값 함수
min(vector_01)

#(3) 평균 함수
mean(vector_01)

#(4) 중위수 함수
median(vector_01)

#PLUS) 최빈값 함수
vector_02 <- c(1, 2, 3, 4, 4, 5, 5, 5)
names(which(table(vector_02) == max(table(vector_02))))

#(5) 분산 함수
var(vector_01)

#(6) 표준 편차 함수
sd(vector_01)

#(7) 분위수 함수
quantile(vector_01)

#11.2. 기초 산술 함수
#(1) 합계 함수, sum()
sum(vector_01)

#(2) 제곱근 함수
sqrt(vector_01)

#(3) 절댓값 함수
abs(vector_01)

#(4) 지수 함수
exp(vector_01)

#(5) 로그 함수
log(vector_01)

#11.3. 소수점 처리 함수
vector_03 <- c(1.25, 3.33, 5.47, 7.818590, 9.98910)

#(1) 반올림 함수
round(vector_03, 1)

#PLUS) digits 파라미터에 음수값을 할당할 경우
round(vector_03, -1)

#(2) 올림 함수
ceiling(vector_03)

#(3) 내림 함수
floor(vector_03)

#11.3. 순차, 반복 데이터 생성 함수
#(1) n:m
1:10

#(2) 등차수열 함수
seq(1, 10, by=2)

#(3) 반복 함수
rep(c(1, 3, 5), each=2, time=3)