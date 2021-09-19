#2021.08.11. WED
#Data_Analytics_With_R
 
## CH.20 데이터셋 부분 선택하기
#20.1. 벡터 부분 선택
vector_01 <- c(1, 2, 3, 4, 5)

#(1) 인덱싱하기
vector_01[3]

#PLUS) 특정 원소만 제외하고 인덱싱하기
vector_01[-3]

#(2) 슬라이싱하기
vector_01[1:3] #same vector_01[c(1,2,3)]

#20.2. 행렬 부분 선택
matrix_01 <- matrix(data = c(1,2,3,4,5,6,7,8,9),
                    nrow = 3,
                    byrow = TRUE)

#(1) 인덱싱하기
matrix_01[2, 2]

#(2) 슬라이싱하기
matrix_01[1:2, 1]

#PLUS) 특정 행, 열 슬라이싱하기
matrix_01[1, ]
matrix_01[, 2]

#20.3. 데이터프레임 부분 선택
student_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                              gender = factor(c('m', 'f', 'm', 'f', 'm')),
                              korean = c(35, 92.5, 70, 85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L),
                              test_pass = c(FALSE, TRUE, TRUE, TRUE, FALSE))

#(1) 인덱싱하기
student_dataset[1, 4]

#(2) 슬라이싱하기
student_dataset[1,]

#PLUS) 데이터프레임 열 인덱싱 $
student_dataset$math

#PLUS) 데이터프레임 열 인덱싱 [[number]]
student_dataset[[4]]

#20.4. 배열 부분 선택
array_01 <- array(1:18, dim=c(3, 3, 2))
array_01

#(1) 인덱싱하기
array_01[3, 1, 2]

#(2) 부분선택하기
array_01[c(1, 3), 2, 1]

#20.5. 리스트 부분 선택 1, []
list_01 <- list(obj_01 = vector_01,
                obj_02 = matrix_01,
                obj_03 = student_dataset,
                obj_04 = array_01)
list_01

#(1) 인덱싱하기
list_01[3]

#(2) 슬라이싱하기
list_01[1:2]

#PLUS) 리스트 객체 인덱싱 $
list_01$obj_03

#20.6. 리스트 부분 선택 2, [[]]
#(1) 객체 호출하기
list_01[[3]]

#(2) 객체 호출 후 인덱싱하기
list_01[[3]][2, 2]

#(3) 객체 호출 후 슬라이싱하기
list_01[[3]][3, ]
