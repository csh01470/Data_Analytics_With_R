#2021.08.09. MON
#Data_Analytics_With_R

## CH.15 조건문, 반복문, 사용자정의 함수 파악하기
#15.1. 조건문
#(1) ifelse() 함수
vector_01 <- c(1:10)
vector_02 <- ifelse(vector_01 >= 5, vector_01, NA)

#(2) if문
#SKIP

#(2-2) else문
#SKIP

#(3) ifelse() 함수와 if문에 대한 논의)
vector_03 <- if(vector_01 >= 5){
  ex_vector
}else{
  NA
}

#(4) switch() 함수
sample_01 <- sample(1:5, 1)
switch(sample_01, 
       "1" = print("one"),
       "2" = print("two"),
       "3" = print("three"),
       "4" = print("four"),
       "5" = print("five")
)

#15.2. 반복문
#(1) for문
for(i in 10:1){
  cat("count: ", i, "\n", sep="")
  Sys.sleep(1)  #action을 1초간 지연시키는 함수
  if(i==1){cat("count: 0,", "발사!")}
}

#(2) while문
tanker_HP <- 100                 #전사의 체력 설정
attack_damage <- sample(0:30, 1) #몬스터의 공격력 설정
while(tanker_HP>0){
  Sys.sleep(1)
  if(tanker_HP <= attack_damage){
    cat("Tanker is dead.")
    break
  }
  else{
    tanker_HP = tanker_HP - attack_damage
    cat("The damage is ", attack_damage, ", The current Tanker's HP is ", tanker_HP, "\n", sep="")
    attack_damage = sample(0:30, 1)
  }
}

#(3) repeat문
player1_cylinder_index = sample(1:6, 1) #Player1이 격발할 실린더 위치값 설정
player2_cylinder_index = sample(1:6, 1) #Player2가 격발할 실린더 위치값 설정
repeat{
  if(player1_cylinder_index == sample(1:6, 1)){
    Sys.sleep(1)
    cat("Tang! Player1 is dead.","\n",sep="")
    break
  }
  else{
    Sys.sleep(1)   
    cat("Tick! Player1 is alive.", "\n", sep="")
    }
  if(player2_cylinder_index == sample(1:6, 1)){
    Sys.sleep(1)   
    cat("Tang! Player2 is dead.","\n",sep="")
    break
  }
  else{
    Sys.sleep(1)   
    cat("Tick! Player2 is alive.", "\n", sep="")
    }
}

#15.3. 사용자정의 함수 function()
#(1) 함수의 구조
#SKIP

#(2) 예시 
stats_mode <- function(X){
  TABLE_X <- table(X)
  return(names(which.max(TABLE_X)))
}
vector_02 <- c("A", "A", "A", "B", "C", "C")
stats_mode(vector_02)

#(3) 심화예시
russian_roulette <- function(player1, player2) {
  player1_cylinder_index = sample(1:6, 1) 
  player2_cylinder_index = sample(1:6, 1)
  repeat{
    if(player1_cylinder_index == sample(1:6, 1)){
      Sys.sleep(1)
      cat("Tang! ", player1, " is dead.", "\n", sep="")
      return(c(player1, player1_cylinder_index))
      break
    }
    else{
      Sys.sleep(1)   
      cat("Tick! ", player1, " is alive.", "\n", sep="")
      }
    if(player2_cylinder_index == sample(1:6, 1)){
      Sys.sleep(1)   
      cat("Tang! ", player2, " is dead.", "\n", sep="")
      return(c(player2, player2_cylinder_index))
      break
    }
    else{
      Sys.sleep(1)   
      cat("Tick! ", player2, " is alive.", "\n", sep="")
      }
  }
}
who_is_dead <- russian_roulette("CSH", "PSH") 
