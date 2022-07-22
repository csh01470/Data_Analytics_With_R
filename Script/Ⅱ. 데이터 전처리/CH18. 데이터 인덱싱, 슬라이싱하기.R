################################################################################
# TITLE        :: CH18. 데이터 인덱싱, 슬라이싱하기
# AUTHOR       :: DATA_ANALYTICS_WITH_R, CHOE SANG HEON
# CREATED DATE :: 2021-08-10 (TUE)
# UPDATED DATE :: 2022-07-16 (SAT)

################################################################################
#18.1. 벡터 인덱싱과 슬라이싱
#(1) 벡터 인덱싱, [{index}]
vector_01 <- c(1, 2, 3, 4, 5)
vector_01[3]

#(2) 특정 원소를 제외하고 인덱싱, [-{index}]
vector_01[-3]

#(3) 여러 원소를 인덱싱, [{index_01}, {index_02}, ∙∙∙]  
vector_01[c(1, 5, 3)]

#(4) 벡터 슬라이싱, [{index_start}:{index_end}]
vector_01[1:3]

################################################################################
#18.2. 행렬 인덱싱과 슬라이싱
#(1) 행렬 인덱싱, [{row_index}, {col_index}]
matrix_01 <- matrix(data=c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                    nrow=3,
                    byrow=TRUE)
matrix_01[3, 2]

#(2) 행렬 슬라이싱, [{row_index_start}:{row_index_end}, {col_index_start}:{col_index_end}]
matrix_01[1:3, 2:3]

#PLUS) 특정 행(열) 전체 출력하기
matrix_01[, 2:3]

################################################################################
#18.3. 데이터프레임 인덱싱과 슬라이싱
#(1) 데이터프레임 인덱싱, [{row_index}, {col_index}]
student_df <- read.csv(file="data/student_dataset.csv",
                       header=TRUE)
student_df 
student_df[1, 4]

#(2) 데이터프레임 컬럼 인덱싱, [{col_index}]
student_df[2]

#(3) 데이터프레임 컬럼 인덱싱, [[{col_index}]]
student_df[[2]]

#(4) 데이터프레임 컬럼 인덱싱, $
student_df$math

#PLUS) 컬럼 이름으로 인덱싱
student_df[1, "math"]
student_df["gender"]
student_df[["gender"]]

#(5) 데이터프레임 슬라이싱, [{row_index_start}:{row_index_end}, {col_index_start}:{col_index_end}]
student_df[2:3, 1:4]

################################################################################
#18.4. 배열 인덱싱과 슬라이싱
#(1) 배열 인덱싱, [{row_index}, {col_index}, {layer_index}]
array_01 <- array(data=1:18, 
                  dim=c(3, 3, 2))
array_01
array_01[1, 3, 2]

#(2) 배열 데이터 입력 인덱싱, [{index}]
array_01[17]

#(3) 배열 슬라이싱, [{row_index_start}:{row_index_end}, {col_index_start}:{col_index_end}, {layer_index_start}:{lay_index_end}]
array_01[1:3, 2:3, 1:2]

#PLUS) 배열의 슬라이싱과 인덱싱 결합
array_01[1, 2:3, 1:2]

################################################################################
#18.5. 리스트 인덱싱과 슬라이싱
#(1) 리스트 인덱싱, [{object_index}]
list_01 <- list(
  vector_01=vector_01,
  matrix_01=matrix_01,
  student_df=student_df,
  array_01=array_01
)
list_01
list_01[2]

#(2) 리스트 인덱싱, [[{object_index}]]
list_01[[2]]

#(3) 리스트 인덱싱, $
list_01$matrix_01

#PLUS) 중첩 인덱싱
list_01$matrix_01[3, 2]

#(4) 리스트 슬라이싱, [{object_index_start}:{object_index_end}]
list_01[1:2]

################################################################################