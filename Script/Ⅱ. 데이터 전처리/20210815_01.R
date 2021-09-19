#2021.08.15. SUN
#Data_Analytics_With_R

## CH.23 데이터셋 구조 변경하기 
#23.1. 데이터셋의 열 이름 변경하기
student_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                              gender = factor(c('m', 'f', 'm', 'f', 'm')),
                              korean = c(35, 92.5, 70, 85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L),
                              test_pass = c(FALSE,TRUE,TRUE,TRUE,FALSE))

#(1) 전체 열 이름 변경하기
colnames(student_dataset) <- c('name', 'SEX', 'korean', 'math', 'test_pass')

#(2) 인덱스를 이용해 부분 열 이름 변경하기
colnames(student_dataset)[2] <- 'sex'

#(3) 필터링을 이용해 부분 열 이름 변경하기
colnames(student_dataset)[names(student_dataset)=='sex'] = 'gender'

#23.2. 데이터셋의 열 순서 변경하기
#(1) 열 번호로 순서 변경하기.
student_dataset <- student_dataset[, c(2, 1, 3, 4, 5)]

#(2) 열 이름으로 순서 변경하기. 
student_dataset <- student_dataset[, c('name', 'gender', 'korean', 'math', 'test_pass')]

#23.3. 데이터셋의 행 이름 부여하기
#(1) 전체 행 이름 부여하기
rownames(student_dataset) <- c('950110', '941106', '940815', '960321', '950228')

#(2) 인덱스를 이용해 부분 행 이름 부여하기
rownames(student_dataset)[5] <- '950225'

#(3) 필터링을 이용해 부분 행 이름 부여하기
rownames(student_dataset)[rownames(student_dataset)=='950225'] <- '950228'