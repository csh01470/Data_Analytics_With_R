#2021.08.06. FRI
#Data_Analytics_With_R

## CH.09 데이터 구조 파악하기
#09.2. 데이터의 구조와 종류
#(1) 스칼라(Scalar)
#SKIP

#(2) 벡터(Vector)
vector_01 <- c(1,3,5,7,9)
vector_02 <- c("Data","Analytics","With","R")
vector_03 <- c(1,3,"a",7,9) # 숫자형과 문자형이 섞인 벡터
vector_04 <- c(1,3,TRUE)    # 숫자형과 논리형이 섞인 벡터

#(3) 행렬(Matrix)
matrix_01 <- matrix(data = c(1,2,3,4,5,6,7,8,9),
                    nrow = 3,
                    ncol = 3,
                    byrow = TRUE,
                    dimnames=list(c("row1","row2","row3"),c("col1","col2","col3")))

#(4) 데이터프레임(Data Frame)
dataframe_grade <- data.frame(Korean = c(100, 78, 72, 72, 48),
                              English = c("A", "B", "A", "B", "F"),
                              Math = c(65,80,88,67,28),
                              row.names = c("PSH","LKH","CSH","JYH","CJH"),
                              stringsAsFactors=TRUE)           

#(5) 배열(Array)
array_01 <- array(c(1,2,3,4,5,6,7,8,9,10,11,12),
                  dim=c(2,3,2),
                  dimnames=list(c("row1","row2"),c("col1","col2","col3"),c("dim1","dim2")))
array_01

#(6) 리스트(List)
list_01 <- list(vector_01=c(1,3,5,7,9),
                matrix_01=matrix(data = c(1,2,3,4,5,6,7,8,9),
                                 nrow = 3,
                                 ncol = 3,
                                 byrow = TRUE),
                dataframe_grade=data.frame(Korean = c(100, 78, 72, 72, 48),
                                           English = c("A", "B", "A", "B", "F"),
                                           Math = c(65,80,88,67,28),
                                           row.names = c("PSH","LKH","CSH","JYH","CJH"),
                                           stringsAsFactors=TRUE),           
                array_01=array(c(1,2,3,4,5,6,7,8,9,10,11,12),
                               dim=c(2,3,2),
                               dimnames=list(c("row1","row2"),c("col1","col2","col3"),c("dim1","dim2"))))
list_01
