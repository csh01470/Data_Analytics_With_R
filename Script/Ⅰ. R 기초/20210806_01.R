#2021.08.06. FRI
#Data_Analytics_With_R

## CH.08 데이터 유형 알아보기
#08.1 문자(Character)
chr_01 <- "Data Analytics With R"

#08.2. 숫자(Number)
num_Realnumber <- 3
num_integer <- 3L

#PLUS) 복소수
#SKIP

#08.3. 논리(Logical)
logical_01 <- TRUE
logical_02 <- true

#PLUS) 특수값
#SKIP

#08.4. 팩터(Factor, 범주)
gender <- c("f", "f", "m", 35, "f", TRUE, "F", "m", "m", "m") #"f", "m" 외에도 결측값 존재
factor <- factor(x = gender,
                 levels = c("f", "m"),
                 labels = c("female", "male"),
                 ordered = FALSE)                             #남자와 여자의 구분은 우위가 없으므로 명목형

#08.5. 날짜(Date)
#SKIP
