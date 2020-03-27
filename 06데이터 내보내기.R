gradecsv <- read.csv("gradecsv.csv", 
                     header=T,
                     na.strings = ""
)

str(gradecsv)

gradecsv$csex <- factor(gradecsv$csex ,
                      levels = c(1,2),
                      labels=c("남자","여자")
)
gradecsv

#변수 이름 바꾸기 
install.packages("reshape")
library(reshape)
gradecsv <- rename(gradecsv, 
                   c(癤풦d = "id"))
gradecsv
str(gradecsv)

## 데이터 내보내기

write.csv(gradecsv,
          file = "gradecsv.csv",
          row.names = FALSE,
          na=""
)
gradecsv
save(gradecsv, file = "grade.RData")

load(file="grade.RData")

