#2021.08.10. TUE
#Data_Analytics_With_R

## CH.18 데이터셋 유형과 구조 확인하기
#18.1. is() 함수로 데이터셋 유형 확인하기
student_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                              gender = factor(c('m', 'f', 'm', 'f', 'm')),
                              korean = c(35, 92.5, 70,85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L),
                              test_pass = c(FALSE,TRUE,TRUE,TRUE,FALSE))
                              
#(1) is.character()
is.character(student_dataset$name)

#(2) is.numeric()
is.numeric(student_dataset$korean)
is.numeric(student_dataset$math)

#(3) is.integer()
is.integer(student_dataset$korean)
is.integer(student_dataset$math)

#(4) is.logical()
is.logical(student_dataset$test_pass)

#(5) is.factor()
is.factor(student_dataset$gender)

#18.2. is() 함수로 데이터셋 구조 확인하기
#(1) is.atomic()
is.atomic('Data_Analytics_With_R')

#(2) is.vector()
is.vector(student_dataset$name)

#(3) is.matrix()
is.matrix(student_dataset)

#(4) is.data.frame()
is.data.frame(student_dataset)

#(5) is.array()
is.array(student_dataset)

#(6) is.list()
is.list(student_dataset)

#PLUS. class() 함수, mode() 함수와 typeof() 함수에 대한 논의
class(student_dataset)
mode(student_dataset)
typeof(student_dataset)