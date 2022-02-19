#2021.08.10. TUE
#Data_Analytics_With_R

## CH.18 데이터셋 유형과 구조 판별하기
#18.1. is() 함수로 데이터셋 유형 판별하기
student_dataset <- read.csv(file="data/student_dataset.csv",
                            header=TRUE)
                              
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

#18.2. is() 함수로 데이터셋 구조 판별하기
#(1) is.atomic()
is.atomic("Data_Analytics_With_R")

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
