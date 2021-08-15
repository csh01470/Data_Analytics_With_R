#2021.08.12. THU
#Data_Analytics_With_R

## CH.22 데이터셋 파생변수 생성하기
#22.1. 인덱스 구조를 이용한 파생변수 생성
student_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                              gender = factor(c('m', 'f', 'm', 'f', 'm')),
                              korean = c(35, 92.5, 70, 85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L))

#(1) 국어 점수와 수학 점수를 합한 test_total 파생변수 생성하기
student_dataset[, 'test_total'] <- student_dataset$korean + student_dataset$math

#(2) test_total 변수가 150점 이상일 때 PASS(TRUE), 아닐때 FAIL(FALSE) 값을 부여하는 파생변수 생성하기
student_dataset[, 'test_pass'] <- ifelse(student_dataset$test_total > 150, TRUE, FALSE)

#22.2. $(Dollor Sign)을 이용한 파생변수 생성
#(1) 국어 점수와 수학 점수를 합한 test_total 파생변수 생성하기
student_dataset$test_total <- student_dataset$korean + student_dataset$math

#(2) test_total 변수가 150점 이상일 때 PASS(TRUE), 아닐때 FAIL(FALSE) 값을 부여하는 파생변수 생성하기
student_dataset$test_pass <- ifelse(student_dataset$test_total > 150, TRUE, FALSE)

#22.3. transform() 함수를 이용한 파생변수 생성
#(1) 국어 점수와 수학 점수를 합한 test_total 파생변수 생성하기
student_dataset <- transform(student_dataset,test_total = korean + math)

#(2) test_total 변수가 150점 이상일 때 PASS(TRUE), 아닐때 FAIL(FALSE) 값을 부여하는 파생변수 생성하기
student_dataset <- transform(student_dataset,test_pass = ifelse(test_total > 150, TRUE, FALSE))
