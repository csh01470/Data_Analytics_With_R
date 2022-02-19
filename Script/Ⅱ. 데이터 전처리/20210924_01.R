#2021.09.24. SUN
#Data_Analytics_With_R

## CH.25 기타 전처리 함수 파악하기
#25.1. 인덱싱 함수, which()
#(1) which() 함수의 구조
#SKIP

#(2) 예시
vector_01 <- c(1, 4, 2, 3, 5)
which(vector_01==4)

#(3) arr.ind 파라미터를 활용한 예시
matrix_01 <- matrix(data = c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                    nrow = 3,
                    ncol = 3,
                    byrow = TRUE)
which(matrix_01==7)
which(matrix_01==7, arr.ind=TRUE)

#25.2. 그룹핑 함수, aggregate()
#(1) aggregate() 함수의 구조
#SKIP

#(2) 예시 
student_dataset <- read.csv("Data/student_dataset.csv")
aggregate(korean~class_num, student_dataset, mean)

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
apply(X=matrix_01, MARGIN=1, FUN=sum)
apply(X=matrix_01, MARGIN=2, FUN=sum) 
