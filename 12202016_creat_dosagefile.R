setwd("C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424")
#Caucasians_maleonly
data11 <- read.table("merge_1000g_imputed_CEU_chr1_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data11 <- data.frame(data11)
df.data11$CHR[df.data11$CHR == 0] <- 1
df.data11
data22 <- read.table("merge_1000g_imputed_CEU_chr2_new2_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data22 <- data.frame(data22)
df.data22$CHR[df.data22$CHR == 0] <- 2
data33 <- read.table("merge_1000g_imputed_CEU_chr3_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data33 <- data.frame(data33)
df.data33$CHR[df.data33$CHR == 0] <- 3
data44 <- read.table("merge_1000g_imputed_CEU_chr4_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data44 <- data.frame(data44)
df.data44$CHR[df.data44$CHR == 0] <- 4
data55 <- read.table("merge_1000g_imputed_CEU_chr5_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data55 <- data.frame(data55)
df.data55$CHR[df.data55$CHR == 0] <- 5
data66 <- read.table("merge_1000g_imputed_CEU_chr6_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data66 <- data.frame(data66)
df.data66$CHR[df.data66$CHR == 0] <- 6
data77 <- read.table("merge_1000g_imputed_CEU_chr7_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data77 <- data.frame(data77)
df.data77$CHR[df.data77$CHR == 0] <- 7
data88 <- read.table("merge_1000g_imputed_CEU_chr8_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data88 <- data.frame(data88)
df.data88$CHR[df.data88$CHR == 0] <- 8
data99 <- read.table("merge_1000g_imputed_CEU_chr9_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data99 <- data.frame(data99)
df.data99$CHR[df.data99$CHR == 0] <- 9
data100 <- read.table("merge_1000g_imputed_CEU_chr10_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data100 <- data.frame(data100)
df.data100$CHR[df.data100$CHR == 0] <- 10
data111 <- read.table("merge_1000g_imputed_CEU_chr11_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data111 <- data.frame(data111)
df.data111$CHR[df.data111$CHR == 0] <- 11
data112 <- read.table("merge_1000g_imputed_CEU_chr12_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data112 <- data.frame(data112)
df.data112$CHR[df.data112$CHR == 0] <- 12
data113 <- read.table("merge_1000g_imputed_CEU_chr13_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data113 <- data.frame(data113)
df.data113$CHR[df.data113$CHR == 0] <- 13
data114 <- read.table("merge_1000g_imputed_CEU_chr14_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data114 <- data.frame(data114)
df.data114$CHR[df.data114$CHR == 0] <- 14
data115 <- read.table("merge_1000g_imputed_CEU_chr15_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data115 <- data.frame(data115)
df.data115$CHR[df.data115$CHR == 0] <- 15
data116 <- read.table("merge_1000g_imputed_CEU_chr16_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data116 <- data.frame(data116)
df.data116$CHR[df.data116$CHR == 0] <- 16
data117 <- read.table("merge_1000g_imputed_CEU_chr17_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data117 <- data.frame(data117)
df.data117$CHR[df.data117$CHR == 0] <- 17
data118 <- read.table("merge_1000g_imputed_CEU_chr18_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data118 <- data.frame(data118)
df.data118$CHR[df.data118$CHR == 0] <- 18
data119 <- read.table("merge_1000g_imputed_CEU_chr19_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data119 <- data.frame(data119)
df.data119$CHR[df.data119$CHR == 0] <- 19
data200 <- read.table("merge_1000g_imputed_CEU_chr20_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data200 <- data.frame(data200)
df.data200$CHR[df.data200$CHR == 0] <- 20
data211 <- read.table("merge_1000g_imputed_CEU_chr21_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data211 <- data.frame(data211)
df.data211$CHR[df.data211$CHR == 0] <- 21
data221 <- read.table("merge_1000g_imputed_CEU_chr22_suicide_logistic_maleonly.LIFE.assoc.LOGISTIC", header=TRUE)
df.data221 <- data.frame(data221)
df.data221$CHR[df.data221$CHR == 0] <- 22
head(data22)
#mydata <- rbind(data11, data22, data33, data44, data55, data66, data77, data88, data99, data100, data111, data112, data113, data114, data115, data116, data117, data118, data119, data200, data211, data221)

mydata <- rbind(df.data11, df.data22, df.data33, df.data44, df.data55, df.data66, df.data77, df.data88, df.data99, df.data100, df.data111, df.data112, df.data113, df.data114, df.data115, df.data116, df.data117, df.data118, df.data119, df.data200, df.data211, df.data221)
head(mydata)
mydata1 <- mydata[ which(mydata$NMISS > 80), ]
#mydata1 <- mydata[ which(mydata$P< 0.1), ]
write.table(mydata1,"C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424/merge_1000g_imputed_CEU_chrALL_suicide_new2_logistic_maleonly_80.LIFE.assoc")
