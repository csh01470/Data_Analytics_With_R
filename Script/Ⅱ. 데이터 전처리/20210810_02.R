#2021.08.10. TUE
#Data_Analytics_With_R

## CH.17 데이터셋 탐색하기
#17.1. 데이터셋 구조 파악
iris <- datasets::iris

#(1) str()
str(iris)

#(2) summary()
summary(iris)

#(3) nrow()
nrow(iris)

#(4) ncol()
ncol(iris)

#(5) dim()
dim(iris)

#(6) ls()
ls(iris)

#17.2. 데이터셋 샘플 탐색
#(1) head()
head(iris, n=10)

#(2) tail()
tail(iris, n=10)

#(3) unique()
unique(iris$Sepal.Length)
unique(iris$Sepal.Width)
unique(iris$Petal.Length)
unique(iris$Petal.Width)
unique(iris$Species)