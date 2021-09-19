#2021.08.11. WED
#Data_Analytics_With_R

## CH.21 데이터셋 필터링하기
#21.1. 인덱싱 구조를 활용한 필터링
#(1) 유의 사항
student_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                              gender = factor(c('m', 'f', 'm', 'f', 'm')),
                              korean = c(35, 92.5, 70, 85, 60),
                              math = c(65L, 80L, 88L, 67L, 28L),
                              test_pass = c(FALSE, TRUE, TRUE, TRUE, FALSE))

#(2) 비교 연산자를 통해 필터링하기.
#①시험에 통과하지 못한 학생을 필터링할 경우
student_dataset[student_dataset$test_pass == FALSE, ]
#②수학 성적이 75점 이상인 학생을 필터링할 경우
student_dataset[student_dataset$math > 75, ]
#③여자가 아닌 학생을 필터링할 경우
student_dataset[student_dataset$gender != 'f',]

#(3) 여러 조건을 모두 충족하게 필터링하기
student_dataset[student_dataset$test_pass == TRUE & student_dataset$korean < 80, ]

#(4) 여러 조건 중 한 조건 이상을 충족하게 필터링하기.
student_dataset[student_dataset$test_pass == FALSE | student_dataset$math < 70, ]

#21.2. subset() 함수를 이용한 필터링
#(1) subset() 함수의 구조 
#SKIP

#(2) 비교 연산자를 통해 필터링하기
#①시험에 통과하지 못한 학생을 필터링할 경우
subset(student_dataset, test_pass == FALSE)
#②수학 성적이 75점 이상인 학생을 필터링할 경우
subset(student_dataset, math > 75)
#③여자가 아닌 학생을 필터링할 경우
subset(student_dataset, gender != 'f')

#(3) 여러 조건을 모두 충족하게 필터링하기
subset(student_dataset, test_pass == TRUE & korean < 80 )

#(4) 여러 조건 중 한 조건 이상을 충족하게 필터링하기
subset(student_dataset, test_pass == FALSE | math < 70)
