#2021.11.08. MON
#Data_Analytics_With_R

## CH.28 시계열 데이터 전처리하기
#28.1. 시계열 데이터의 정의와 특징
#(1) 시계열 데이터의 정의
#SKIP

#(2) 시계열 데이터의 특성
#SKIP

#PLUS) R에서 기본적으로 사용하는 시계열 데이터 객체
#SKIP

#28.2. 시계열 데이터 변환, as.Date()
#(1) as.Date() 함수의 구조와 파라미터
#SKIP

#(2) 예시
as.Date('2021-11-08')
as.Date('2021/11/08')
as.Date('20211108', format='%Y%m%d')

#PLUS) 날짜 포맷 표준 코드
#SKIP

#28.3. 시계열 데이터 변환, as.POSIXct()
#(1) as.POSIXct() 함수의 구조와 파라미터
#SKIP

#(2) 예시 
as.POSIXct('2021/11/08 15:01:24')
as.POSIXct('20211108150124', format='%Y%m%d%H%M%S')

#PLUS) as.POSIXct() 함수와 as.POSIXlt() 함수의 차이점 
POSIXct_01 <- as.POSIXct('2021/11/08 15:01:24')
POSIXlt_01 <- as.POSIXlt('2021/11/08 15:01:24')
unclass(POSIXct_01)
unclass(POSIXlt_01)

#28.4. 시계열 데이터 생성, ts()
#(1) ts() 함수의 구조와 파라미터
#SKIP 

#(2) 예시
ts(data=1:12, start=2021, frequency = 12)
ts(data=1:12, start=2021, frequency = 4)
ts(data=1:12, start=2021, frequency = 1)

#28.5. 시계열 데이터의 연산
Date_01 <- as.Date('2020/11/08')
Date_02 <- as.Date('2021/11/08')

#(1) 덧셈
Date_01 + 365
Date_01 + Date_02

#(2) 뺄셈
Date_02 - 365 
Date_02 - Date_01 
difftime(Date_02, Date_01)

#28.6. 시계열 데이터 전처리
#(1) weekdays()
weekdays(Date_01)

#PLUS) 주, 휴일 구분하기
ifelse(weekdays(Date_01) == 'Sunday' | weekdays(Date_01) == 'Saturday', 
       'Holiday', 
       'Workday')

#(2) 시차(Time Lag) 함수, lag()
TSLA_raw <- read.csv('data/TSLA.csv')
TSLA_close <- TSLA_raw[, c('Date', 'Close')]
TSLA_close$Date <- as.Date(TSLA_close$Date)
TSLA_close$Close_lag <- lag(x=TSLA_close$Close, k=1)
TSLA_close$Close_diff <- TSLA_close$Close - TSLA_close$Close_lag
