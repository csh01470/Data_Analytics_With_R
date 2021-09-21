#2021.09.19. SUN
#Data_Analytics_With_R

## CH.24 데이터셋 구조 변경하기 
#24.1. 데이터셋의 물리적 행 결합, rbind()
class_01_dataset <- data.frame(name = c('PSH', 'CGE', 'CSH', 'CMJ', 'CJH'),
                               gender = factor(c('m', 'f', 'm', 'f', 'm')),
                               korean = c(35, 92.5, 70, 85, 60),
                               math = c(65L, 80L, 88L, 67L, 28L),
                               test_pass = c(FALSE, TRUE, TRUE, TRUE, FALSE))
class_02_dataset <- data.frame(name = c('LSS', 'PBH', 'KSB', 'MSH', 'JYJ'),
                               gender = factor(c('m', 'm', 'm', 'm', 'f')),
                               korean = c(80, 95, 86, 75, 60),
                               math = c(68L, 80L, 96L, 65L, 85L),
                               test_pass = c(FALSE, TRUE, TRUE, FALSE, FALSE))
student_dataset <- rbind(class_01_dataset, class_02_dataset)

#24.2. 데이터셋의 물리적 열 결합, cbind()
class_info_dataset <- data.frame(
  class_num = c(01, 01, 01, 01, 01, 02, 02, 02, 02, 02),
  class_loc = c('DJ', 'DJ', 'DJ', 'DJ', 'DJ', 'SU', 'SU', 'SU', 'SU', 'SU')
)
student_dataset <- cbind(student_dataset, class_info_dataset)

#24.2. 데이터셋의 논리적 결합, merge()
?merge()
