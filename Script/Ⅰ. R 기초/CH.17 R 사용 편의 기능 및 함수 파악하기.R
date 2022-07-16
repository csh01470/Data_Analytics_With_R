################################################################################
# TITLE        :: CH17. 사용자정의함수 파악하기
# AUTHOR       :: DATA_ANALYTICS_WITH_R, CHOE SANG HEON
# CREATED DATE :: 2021-08-10 (TUE)
# UPDATED DATE :: 2022-07-15 (FRI)

################################################################################
#17.1. 사용자정의함수(User-Defined Function)
#(1) 사용자정의함수의 구조
#SKIP

#(2) 사용자정의함수의 작동 프로세스
#SKIP

#(3) 예시 
stats_mode <- function(X){
  TABLE_X <- table(X)
  MODE_X <- names(which.max(TABLE_X)) 
  return(MODE_X)
}
vector_02 <- c("A", "A", "A", "B", "C", "C")
stats_mode(vector_02)

################################################################################
#17.2. 변수 스코프(Variable Scope)
#(1) 변수 스코프의 정의
#SKIP

#(2) 지역 변수(Local Variable)
UDF_01 <- function(){
  scalar_01 <- "Data Analytics With R"
}
UDF_01()

#(3) 전역 변수(Global Variable)
UDF_02 <- function(){
  scalar_02 <<- "Data Analytics With R"
}
UDF_02()

################################################################################
#17.3. 파라미터 유형에 따른 함수 처리
#(1) 일반 파라미터(standard parameter)
get_add_01 <- function(number_01, number_02){
  return_value <- number_01 + number_02
  return(return_value)
}
get_add_01(number_01=8, number_02=25)

#(2) 디폴트 파라미터(default parameter)
get_add_02 <- function(number_01, number_02=3){
  return_value <- number_01 + number_02
  return(return_value)
}
get_add_02(number_01=2)

#(3) 가변 파라미터(variadic parameter)
get_add_03 <- function(...){
  return_value <- sum(...)
  return(return_value)
}
get_add_03(1, 3, 5, 7, 9)

################################################################################