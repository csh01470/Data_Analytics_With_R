#2021.08.09. MON
#Data_Analytics_With_R

## CH.14 내부 데이터 저장하기
#14.1. 데이터셋 저장하기.
#(1) write.table()
write.table(asset_status, 
            file='asset_status.tsv',
            sep='\t',
            row.names = FALSE)

#(2) write.csv()
write.csv(grade_list_01,
          file="grade_list.csv",
          row.names=F,
          quote=FALSE)  #"(큰따옴표) 수식 제거

#14.2. 출력 결과 저장하기
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

#14.3. 스크립트 저장하기
#SKIP