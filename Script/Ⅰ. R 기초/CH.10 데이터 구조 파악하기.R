################################################################################
# TITLE        :: CH10. 데이터 구조 파악하기 
# AUTHOR       :: DATA_ANALYTICS_WITH_R, CHOE SANG HEON
# CREATED DATE :: 2021-08-06 (FRI)
# UPDATED DATE :: 2022-05-08 (SUN)

################################################################################
#10.1. 스칼라(Scalar), 원자(atom)\
#(1) 스칼라의 정의
#SKIP

#(2) 예시
scalar_01 <- 8
scalar_02 <- "Data"
scalar_03 <- TRUE

################################################################################
#10.2. 벡터(Vetor)
#(1) 벡터의 정의
#SKIP

#(2) 예시
vector_01 <- c(1, 3, 5, 7, 9)
vector_02 <- c("Data", "Analytics", "With", "R")
vector_03 <- c(1, 3, "a", 7, 9) #숫자형과 문자형이 섞인 벡터
vector_04 <- c(1, 3, TRUE)      #숫자형과 논리형이 섞인 벡터

#10.3. 행렬(Matrix, 매트릭스)
#(1) 행렬의 정의
#SKIP

#(2) 행렬 생성 함수, matrix()
#SKIP

#(3) 예시
matrix_01 <- matrix(data=c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                    nrow=3,
                    ncol=3,
                    byrow=TRUE)

#PLUS) View() 함수의 활용
View(matrix_01)

################################################################################
#10.4. 데이터 프레임(Data Frame)
#(1) 데이터 프레임의 정의
#SKIP

#(2) 데이터 프레임 생성 함수, data.frame()
#SKIP

#(3) 예시
student_dataset <- data.frame(name = c("PSH", "CGE", "CSH", "CMJ", "CJH"),
                              gender = factor(c("m", "f", "m", "f", "m")),
                              korean = c(35, 92.5, 70,85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L),
                              test_pass = c(FALSE, TRUE, TRUE, TRUE, FALSE))

#(4) 내부 참조 $의 논의
student_dataset$name

################################################################################
#10.5. 배열(Array, 어레이)
#(1) 배열의 정의
#SKIP

#(2) 배열 생성 함수, array()
#SKIP

#(3) 예시
array_01 <- array(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                  dim = c(2, 3, 2))
array_01

################################################################################
#10.6. 리스트(List)
#(1) 리스트의 정의
#SKIP

#(2) 리스트 생성 함수, list()
#SKIP

#(3) 예시
list_01 <- list(scalar_01 = 8,
                scalar_02 = "Data",
                scalar_03 = TRUE,
                vector_01 = c(1, 3, 5, 7, 9),
                vector_02 = c("Data", "Analytics", "With", "R"),
                vector_03 = c(1, 3, "a", 7, 9), 
                vector_04 = c(1, 3, TRUE),     
                matrix_01 = matrix(data = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                                   nrow = 3,
                                   ncol = 3,
                                   byrow = TRUE),
                student_dataset = data.frame(name = c("PSH", "CGE", "CSH", "CMJ", "CJH"),
                                             gender = factor(c("m", "f", "m", "f", "m")),
                                             korean = c(35, 92.5, 70,85, 60),
                                             math = c(65L, 80L, 88L, 67L, 28L),
                                             test_pass = c(FALSE, TRUE, TRUE, TRUE, FALSE)),        
                array_01 = array(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                                 dim = c(2, 3, 2)))
list_01

################################################################################