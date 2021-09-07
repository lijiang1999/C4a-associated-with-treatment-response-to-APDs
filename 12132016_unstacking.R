setwd("C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/PEARL3")
P1 <- read.table("C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/PEARL3/PEARL3_P1.txt", header = TRUE)
df_P1 <- data.frame(P1[3:ncol(P1)])
df_P1 <- subset(df_P1, df_P1$P1_BASELINE >= 0)

LOCF <- function(x) {
  # Last Observation Carried Forward (for a left to right series)
  LOCF <- max(which(!is.na(x))) # the location of the Last Observation to Carry Forward
  x[LOCF:length(x)] <- x[LOCF]
  return(x)
}

apply(df_P1, 1, LOCF)

output <- apply(df_P1, 1, LOCF) 
output_t <- t(output)
output_t

delta <- function(y) {
  
}
output_delta <- apply(df_P1, 1, (output_t[[7]] - output_t[[1]]))

output_delta





           
output <- vector("double", nrow(df_P1))


for(i in 1:5) {
  row <- df_P1[i,]
  apply(row, LOCF)
}


row <- df_P1[12,]
row
LOCF(row)




output <- vector("double", ncol(df.data))
for (i in seq_along(df.data)) {
  output [[i]] <- mean(df.data[[i]])
}

output

test <- c(1, 2, NA, 3, NA, 4, NA)
LOCF(test)


install.packages("zoo")
library(zoo)

na.locf(df_P1)

for(i in 1:nrow(df_P1)) {
  row <- df_P1[i,]
 LOCF(row)

}

#unstacking the rows
setwd("C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424")
data1 <- read.csv("C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424/HDL_PANSS_aligned_Akane_12092016_loadingfile1.csv", header = TRUE)
tmp <- data.frame(X=data1$POS,ind=rep(1:25,nrow(data1)/25))
data1_POS <- unstack(tmp, X~ind)
tmp <- data.frame(X=data1$NEG,ind=rep(1:25,nrow(data1)/25))
data1_NEG <- unstack(tmp, X~ind)
tmp <- data.frame(X=data1$DIS,ind=rep(1:25,nrow(data1)/25))
data1_DIS <- unstack(tmp, X~ind)
tmp <- data.frame(X=data1$EXC,ind=rep(1:25,nrow(data1)/25))
data1_EXC <- unstack(tmp, X~ind)
tmp <- data.frame(X=data1$AD,ind=rep(1:25,nrow(data1)/25))
data1_AD <- unstack(tmp, X~ind)

write.table(data1_POS,"C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424/HDL_PANSS_aligned_Akane_12092016_loadingfile1_POS.txt")
write.table(data1_NEG,"C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424/HDL_PANSS_aligned_Akane_12092016_loadingfile1_NEG.txt")
write.table(data1_DIS,"C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424/HDL_PANSS_aligned_Akane_12092016_loadingfile1_DIS.txt")
write.table(data1_EXC,"C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424/HDL_PANSS_aligned_Akane_12092016_loadingfile1_EXC.txt")
write.table(data1_AD,"C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424/HDL_PANSS_aligned_Akane_12092016_loadingfile1_AD.txt")


