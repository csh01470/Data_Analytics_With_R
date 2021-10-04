#2021.09.24. SUN
#Data_Analytics_With_R

## CH.25 기타 전처리 함수 파악하기
#25.1. 그룹핑 함수, aggregate()
#(1) aggregate() 함수의 구조
#SKIP

#(2) 예시 
student_dataset <- read.csv('a:/R_project/Data_Analytics_With_R/Data/student_dataset.csv')
aggregate(korean~class_num, student_dataset, mean)

#25.2. 빈도 함수, table()
table(student_dataset$gender)

#25.3. 정렬 함수, sort()∙order()
#(1) 값 정렬 함수, sort()
sort(student_dataset$math, decreasing = TRUE)

#(2) 인덱스 기반 정렬 함수, order()
order(student_dataset$math, decreasing = TRUE)

#(3) order() 함수를 이용한 데이터셋 정렬  
student_dataset[order(student_dataset$math, decreasing = TRUE), ]

#25.4. 행∙열 단위 처리 함수, apply()
#(1) apply() 함수의 필요성
#SKIP

#(2) apply() 함수의 구조
#SKIP

#(3) 예시
?apply()