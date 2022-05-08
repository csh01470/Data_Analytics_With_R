################################################################################
# TITLE        :: CH16. 제어문 파악하기
# AUTHOR       :: DATA_ANALYTICS_WITH_R, CHOE SANG HEON
# CREATED DATE :: 2021-08-09 (MON)
# UPDATED DATE :: 2022-05-09 (MON)

################################################################################
#16.1. 조건문
#(1) if문
#SKIP

#(2) else if문
#SKIP

#(3) else문
#SKIP

#(4) 예시
SCORE <- 80
if(SCORE >= 85){
  print("GRADE : A")
} else if(SCORE >= 75){
  print("GRADE : B")
} else if(SCORE >= 65){
  print("GRADE : C")
} else{
  print("GRADE : D")
}

################################################################################
#16.2. 반복문
#(1) for문
for(i in 10:1){
  cat("count: ", i, "\n", sep="")
  Sys.sleep(time=1)  #코드 실행을 1초간 지연시키는 함수
  if(i==1){cat("count: 0,", "Launch!")}
}

#(2) while문
tanker_HP     <- 100             #전사의 체력 설정
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
repeat{
  player1_index_bullet = sample(x=1:6, size=1)
  player2_index_bullet = sample(x=1:6, size=1)
  player1_index_trigger = sample(x=1:6, size=1)
  player2_index_trigger = sample(x=1:6, size=1)
  if(player1_index_bullet == player1_index_trigger){
    Sys.sleep(time=1)
    cat("Tang! player1 is dead.","\n")
    break
  } else{
    Sys.sleep(time=1)
    cat("Tick! player1 is alive.", "\n")
    player1_index_trigger = player1_index_trigger + 1L
    if(player1_index_trigger==7L){
      player1_index_trigger=1L
    }
  }
  if(player2_index_bullet == player2_index_trigger){
    Sys.sleep(time=1)
    cat("Tang! player2 is dead.","\n")
    break
  } else{
    Sys.sleep(time=1)
    cat("Tick! player2 is alive.", "\n")
    player2_index_trigger = player2_index_trigger + 1L
    if(player2_index_trigger==7L){
      player2_index_trigger=1L
    }
  }
}

################################################################################