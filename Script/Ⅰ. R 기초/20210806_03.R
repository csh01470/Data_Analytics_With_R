#2021.08.06. FRI
#Data_Analytics_With_R

## CH.10 산술, 비교, 논리, 특수 연산자 알아보기
#10.1. 산술 연산자
#(1) 산술 연산자의 종류
#SKIP

#(2) 벡터 간 길이가 다를 경우 벡터 연산 확인, 재사용규칙(Recycling Rule)
vector_01 <- c(1, 2, 3, 4)
vector_02 <- c(1, 2)
vector_01 + vector_02
vector_01 - vector_02
vector_01 * vector_02
vector_01 / vector_02

#10.2. 비교 연산자
#(1) 비교 연산자의 종류
#SKIP

#(2) 소수값 비교에 대한 논의
0.3 == 0.5
0.3 - 0.1 == 0.5 - 0.3
all.equal(0.3 - 0.2, 0.5 - 0.3)

#10.3. 논리 연산자
#SKIP

#10.4. 특수 연산자
#SKIP

#10.5. 연산의 우선 순위
#SKIP