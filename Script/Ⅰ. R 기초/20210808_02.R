#2021.08.08. SUN
#Data_Analytics_With_R

## CH.13 벡터, 행렬의 기본 연산 이해하기
#13.1. 재사용규칙(Recycling Rule)
x_vector <- c(1, 2, 3) 
y_vector <- c(1, 2, 3, 4, 5)
x_vector + y_vector

#13.2. 벡터와 스칼라 간 사칙연산
vector_01 <- c(1, 2, 3)
vector_01 + 2   #덧셈
vector_01 - 2   #뺄셈
vector_01 * 2   #곱셈
vector_01 / 2   #나눗셈


#13.3. 벡터와 벡터 간 연산
#(1) 벡터와 벡터간 사칙연산
vector_01 + vector_01   #덧셈
vector_01 - vector_01   #뺄셈
vector_01 * vector_01   #곱셈
vector_01 / vector_01   #나눗셈

#(2) 벡터의 내적(Dot product, Inner Product)
vector_01 %*% vector_01

#(3) 벡터의 외적(Outer Product)
vector_01 %o% vector_01

#PLUS) 벡터곱(Vector Product, Cross Product)
#install.packages("pracma")
library("pracma")
cross(vector_01, c(2, 3, 4))

#13.3. 행렬과 스칼라 간 사칙연산
matrix_01 <- matrix(data=1:9,
                    nrow=3,
                    byrow=TRUE)
matrix_01 + 2 #덧셈
matrix_01 - 2 #뺄셈
matrix_01 * 2 #곱셈
matrix_01 / 2 #나눗셈

#13.4. 행렬과 벡터 간 사칙연산
matrix_01 + vector_01 #덧셈
matrix_01 - vector_01 #뺄셈
matrix_01 * vector_01 #곱셈
matrix_01 / vector_01 #나눗셈

#13.5. 행렬과 행렬 간 연산
#(1) 행렬과 행렬 간 사칙연산
matrix_01 + matrix_01 #덧셈
matrix_01 - matrix_01 #뺄셈
matrix_01 * matrix_01 #곱셈
matrix_01 / matrix_01 #나눗셈

#(2) 행렬곱(Dot product)
matrix_01 %*% matrix_01

#(3) 대각원소(diagonal element)와 대각합(trace)
diag(matrix_01)
sum(diag(matrix_01))

#(4) 전치행렬(Transpose of A Matrix)
t(matrix_01)

#(5) 행렬식(determinant)
det(matrix_01)

#(6) 역행렬(Inverse Matrix)
solve(matrix_01) #WHY?
matrix_02 <- matrix(data=c(1, 0, 1, 2, 3, 0, 1, 3, 0),
                    nrow=3,
                    byrow=TRUE)
solve(matrix_02)
