#2021.08.09. MON
#Data_Analytics_With_R

## CH.13 외부 데이터 불러오기
#13.1. read() 함수
#(1) read.table() 
asset_status <- read.table(file='data/asset_status.tsv', 
                           sep='\t', 
                           header=TRUE)

#(2) read.csv()
grade_list_01 <- read.csv(file='data/grade_list.csv',
                          header=TRUE)

#(3) read_excel()
library(readxl)
grade_list_02 <- read_excel(path='data/grade_list.xlsx',
                            sheet=1,
                            col_names=TRUE)

#(4) read.spss()
library(foreign)
walfare_raw <- read.spss('data/(2020년 15차 한국복지패널조사) 데이터(beta1.1)_spss/Koweps_hpda15_2020_beta1.1.sav',                            to.data.frame=TRUE)
