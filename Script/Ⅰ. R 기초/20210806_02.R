#2021.08.06. FRI
#Data_Analytics_With_R

## CH.09 데이터 구조 파악하기
#09.2. 데이터의 구조와 종류
#(1) 스칼라(Scalar)
#SKIP

#(2) 벡터(Vector)
vector_01 <- c(1, 3, 5, 7, 9)
vector_02 <- c("Data", "Analytics", "With", "R")
vector_03 <- c(1, 3, "a", 7, 9) #숫자형과 문자형이 섞인 벡터
vector_04 <- c(1, 3, TRUE)      #숫자형과 논리형이 섞인 벡터

#(3) 행렬(Matrix)
matrix_01 <- matrix(data = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                    nrow = 3,
                    ncol = 3,
                    byrow = TRUE)

#(4) 데이터프레임(Data Frame)
student_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                              gender = factor(c('m', 'f', 'm', 'f', 'm')),
                              korean = c(35, 92.5, 70,85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L),
                              test_pass = c(FALSE, TRUE, TRUE, TRUE, FALSE))

#(5) 배열(Array)
array_01 <- array(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                  dim = c(2,3,2))
array_01

#(6) 리스트(List)
list_01 <- list(vector_01 = c(1, 3, 5, 7, 9),
                vector_02 = c("Data", "Analytics", "With", "R"),
                vector_03 = c(1, 3, "a", 7, 9), 
                vector_04 = c(1, 3, TRUE),     
                matrix_01 = matrix(data = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                                   nrow = 3,
                                   ncol = 3,
                                   byrow = TRUE),
                student_dataset = data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                                             gender = factor(c('m', 'f', 'm', 'f', 'm')),
                                             korean = c(35, 92.5, 70,85, 60),
                                             math = c(65L, 80L, 88L, 67L, 28L),
                                             test_pass = c(FALSE, TRUE, TRUE, TRUE, FALSE)),        
                array_01 = array(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                                 dim = c(2,3,2)))
list_01
