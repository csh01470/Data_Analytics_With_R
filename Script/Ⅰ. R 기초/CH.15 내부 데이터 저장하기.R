#2021.08.09. MON
#Data_Analytics_With_R

## CH.15 내부 데이터 저장하기
#14.1. 데이터셋 저장, write.table() 
#(1) write.table() 함수의 구조와 파라미터
#SKIP

#(2) 예시
write.table(asset_status, 
            file="asset_status.tsv",
            sep="\t",
            row.names = FALSE)

#14.2. 데이터셋 저장, write.csv()
#(1) write.csv() 함수의 구조와 파라미터
#SKIP 

#(2) 예시
write.csv(x=student_dataset,
          file="student_dataset.csv",
          row.names=FALSE,
          quote=FALSE)  #"(큰따옴표) 수식 제거

#14.3. 데이터셋 저장, write_xlsx()
#(1) writexl 패키지 설치 및 활성화
#install.packages("writexl")
library(writexl)

#(2) write_xlsx() 함수의 구조와 파라미터
#SKIP

#(3) 예시
write_xlsx(x=student_dataset,
           path="student_dataset.xlsx",
           col_names=TRUE,
           format_headers=FALSE)

#14.3. 출력 결과 저장
#(1) cat()
sampling_data <- sample(x=-100:100, size=15)
cat("mean of sampling_data is as follow",
    "\n",  #띄어쓰기
    ">", 
    mean(sampling_data),
    file="mean_of_sampling_data.txt")

#PLUS) 문자 제어문
cat("DataAnalyticsWithR")
cat("Data\bAnalytics\bWith\bR") #\b 사용
cat("Data\tAnalytics\tWith\tR") #\t 사용
cat("Data\nAnalytics\nWith\nR") #\n 사용

#(2) sink()
sink("mean_of_sampling_data.txt") #함수시작선언
print("mean of sampling_data is as follow") 
mean(sampling_data)
sink()                            #함수끝선언

#14.4. 스크립트 저장
#SKIP
