#2021.08.10. TUE
#Data_Analytics_With_R

## CH.16 R 사용 편의 기능 및 함수 파악하기
#16.1. 단축키 및 사용자 환경 편의 기능
#SKIP

#16.2. 지수표기법과 일반표기법
#(1) 지수표기법을 일반표기법으로 변환하기. 
options(scipen=100)

#(2) 일반표기법을 지수표기법으로 변환하기.
options(scipen=-100)

#16.3. 함수 단축 정의 
russian_roulette <- function() {
  bullet_index  <- sample(1:6,1) #총알의 위치값 설정
  player1_index <- sample(1:6,1) #Player1이 격발할 총알 위치값 설정
  player2_index <- sample(1:6,1) #Player2가 격발할 총알 위치값 설정
  repeat{
    if(player1_index == bullet_index){
      Sys.sleep(1)
      cat("Tang! player1 is dead.","\n",sep="")
      break
    }
    else{
      Sys.sleep(1)   
      cat("Tick! player1 is alive.","\n",sep="")
      player1_index <- sample(1:6,1)}
    if(player2_index == bullet_index){
      Sys.sleep(1)   
      cat("Tang! player2 is dead.","\n",sep="")
      break
    }
    else{
      Sys.sleep(1)   
      cat("Tick! player2 is alive.","\n",sep="")
      player2_index <- sample(1:6,1)}
  }
}
#MEMO. 인자는 직접 정의해야함.

#16.4. 파일 입력, 출력에 대한 논의
example_data <- read.csv('a:/R_project/Data_Analytics_With_R/Data/sampling_data_set.csv')
example_data <- read.csv('Data/sampling_data_set.csv')

#16.5. 동적 변수 할당
#SKIP

#16.6. 마크다운(Mark Down)
#SKIP

#16.7. 치트시트(Cheet Sheet)
#SKIP
