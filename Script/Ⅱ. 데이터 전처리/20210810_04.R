#2021.08.10. TUE
#Data_Analytics_With_R

## CH.19 데이터셋 유형과 구조 변환하기
#19.1. as() 함수로 데이터셋 유형 변경하기
student_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                              gender = factor(c('m', 'f', 'm', 'f', 'm')),
                              korean = c(35, 92.5, 70, 85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L),
                              test_pass = c(FALSE,TRUE,TRUE,TRUE,FALSE))

#(1) as.character()
as.character(student_dataset$korean)

#(2) as.numeric()
as.numeric(student_dataset$math)
as.numeric(student_dataset$gender)
as.numeric(student_dataset$test_pass)

#(3) as.integer()
as.integer(student_dataset$korean)

#(4) as.logical()
as.logical(student_dataset$korean)

#(5) as.factor()
as.factor(student_dataset$name)

#19.2. 출력과 할당에 대한 논의
student_dataset$korean <- as.character(student_dataset$korean)

#19.3. as() 함수로 데이터셋 구조 변경하기
matrix_01 <- matrix(data = c(1,2,3,4,5,6,7,8,9),
                    nrow = 3,
                    byrow = TRUE)

#(1) as.vector()
as.vector(matrix_01)

#(2) as.matrix()
as.matrix(student_dataset)

#(3) as.data.frame()
as.data.frame(matrix_01)

#(4) as.array()
as.array(student_dataset)
as.array(matrix_01)
#(5) as.list()
as.list(student_dataset)
as.list(matrix_01)