#2021.08.09. MON
#Data_Analytics_With_R

## CH.13 외부 데이터 불러오기
#13.1. 데이터셋 불러오기, read.table()
#(1) read.table() 함수의 구조와 파라미터
#SKIP

#(2) 예시
asset_status <- read.table(file="data/asset_status.tsv", 
                           sep="\t", 
                           header=TRUE)

#13.2. csv 형식 데이터셋 불러오기, read.csv()
#(1) write.csv() 함수의 구조와 파라미터 
#SKIP

#(2) 예시
student_dataset_01 <- read.csv(file="data/student_dataset.csv",
                               header=TRUE)

#13.3. xlsx 형식 데이터셋 불러오기, read_xlsx()
#(1) readxl 패키지 설치 및 활성화
#install.packages("readxl")
library(readxl)

#(2) read_xlsx() 함수의 구조와 파라미터
#SKIP

#(3) 예시
student_dataset_02 <- read_xlsx(path="data/student_dataset.xlsx",
                                sheet=1,
                                col_names=TRUE)

#13.4. sav 형식 데이터셋 불러오기, read.spss()
#(1) foreign 패키지 활성화
library(foreign)

#(2) read.spss() 함수의 구조와 파라미터
#SKIP

#(3) 예시
walfare_raw <- read.spss("data/(2020년 15차 한국복지패널조사) 데이터(beta1.1)_spss/Koweps_hpda15_2020_beta1.1.sav",                            to.data.frame=TRUE)

#13.5. 환경창을 통해 불러오기
#SKIP
