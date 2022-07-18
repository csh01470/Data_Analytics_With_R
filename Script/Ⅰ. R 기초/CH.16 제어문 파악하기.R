################################################################################
# TITLE        :: CH16. 제어문 파악하기
# AUTHOR       :: DATA_ANALYTICS_WITH_R, CHOE SANG HEON
# CREATED DATE :: 2021-08-09 (MON)
# UPDATED DATE :: 2022-07-18 (MON)

################################################################################
#16.1. 조건문(Conditional statements)
#(1) 조건문의 이해
#SKIP

#(2) if문
#SKIP

#(3) else if문
#SKIP

#(4) else문
#SKIP

#(5) 예시
MATH_SCORE <- 80
if(MATH_SCORE >= 85){
  MATH_GRADE <- A
  cat("GRADE : A")
} else if(MATH_SCORE >= 75){
  cat("GRADE : B")
} else if(MATH_SCORE >= 65){
  cat("GRADE : C")
} else{
  cat("GRADE : D")
}

################################################################################
#16.2. 반복문(Iteration Statement; Loop Statement)
#(1) 반복문의 정의
#SKIP

#(2) for문
for(i in 10:1){
  cat("count: ", i, "\n", sep="")
  Sys.sleep(time=1)  #코드 실행을 1초간 지연시키는 함수
  if(i==1){cat("count: 0,", "Launch!")}
}

#(3) while문
tanker_HP     <- 100             #탱커의 체력 설정
attack_damage <- sample(0:30, 1) #몬스터의 공격력 설정
while(tanker_HP>0){
  Sys.sleep(time=1)
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

#(4) repeat문
repeat{
  player1_index_bullet = sample(x=1:6, size=1)  #player1의 총알 인덱스 설정
  player2_index_bullet = sample(x=1:6, size=1)  #player2의 총알 인덱스 설정
  player1_index_trigger = sample(x=1:6, size=1) #player1의 초기 격발 인덱스 설정
  player2_index_trigger = sample(x=1:6, size=1) #player2의 초기 격발 인덱스 설정
  if(player1_index_bullet == player1_index_trigger){
    Sys.sleep(time=1)
    cat("Tang! player1 is dead.","\n")
    break
  } else{
    Sys.sleep(time=1)
    cat("Tick! player1 is alive.", "\n")
    player1_index_trigger = player1_index_trigger + 1L #player1의 격발 인덱스 업데이트
    if(player1_index_trigger==7L){
      player1_index_trigger=1L #player1의 격발 인덱스가 6이 넘어갈 경우, 1로 초기화
    }
  }
  if(player2_index_bullet == player2_index_trigger){
    Sys.sleep(time=1)
    cat("Tang! player2 is dead.","\n")
    break
  } else{
    Sys.sleep(time=1)
    cat("Tick! player2 is alive.", "\n")
    player2_index_trigger = player2_index_trigger + 1L #player2의 격발 인덱스 업데이트
    if(player2_index_trigger==7L){
      player2_index_trigger=1L #player2의 격발 인덱스가 6이 넘어갈 경우, 1로 초기화
    }
  }
}

################################################################################
#16.3. 분기문(Branch Statement ; Jump Statement)
#(1) 분기문의 정의
#SKIP

#(2) break문
#SKIP

#(3) next문
#SKIP

#(4) 예시
for(i in 1:20){
  if(i %% 2 == 0){
    next
  }
  if(i == 15){
    break
  }
  print(i)
}

################################################################################