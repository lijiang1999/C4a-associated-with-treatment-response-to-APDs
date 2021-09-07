#setwd("C:/Users/jlu967.FSM/Desktop/plink-1.07-dos/from Anna/102215_illumina_psychChip/PLINK_221015_0424")
setwd("C:/Users/jlu967/Desktop/HLA")
install.packages("qqman")
library(qqman)
#data11 <- read.table("Manhatten_maleonly.txt", header=TRUE)
data11 <- read.table("Meltzer_050712_adjustedsample_TR_selfclaimCEU_SCZ_3drugs_BPSYBASE_6_BPSY6WK_covar2142425.assoc.linear", header=TRUE)
#data11 <- read.table("Meltzer_050712_updateallelelist_mind05_geno1_chr6_ALL_PLINK_geno05_maf01_BPSYBASE_6_BPSY6WK_MHC_covar2142425.assoc1.linear", header=TRUE)
data11 <- read.table("Meltzer_050712_updateallelelist_mind05_geno1_chr6_ALL_PLINK_geno05_maf01_BPSYBASE_6_condition_rs204991.assoc.linear", header=TRUE)
data11 <- read.table("Meltzer_050712_updateallelelist_mind05_geno1_chr6_ALL_PLINK_geno05_maf01_BPSYBASE_6_condition_rs6904596.assoc.linear", header=TRUE)
data11 <- read.table("Meltzer_050712_updateallelelist_mind05_geno1_chr6_ALL_PLINK_geno05_maf01_BPSYBASE_6_condition_rs3132541.assoc.linear", header=TRUE)
data11 <- read.table("Meltzer_050712_updateallelelist_mind05_geno1_chr6_ALL_PLINK_geno05_maf01_BPSYBASE_6_condition_rs13194504.assoc.linear", header=TRUE)

data11 <- na.omit(data11)
head(data11)
tail(data11)
str(data11)
manhattan(data11, main = "Manhattan Plot for delta_BPSY_6week", cex = 0.5, cex.axis = 0.5, col = c("blue4", "orange3"), annotatePval = 0.0001, annotateTop = FALSE)
manhattan(data11, main = "Manhattan Plot for delta_BPSY_6week", col = c("blue4", "orange3"), annotatePval = 0.00001, annotateTop = FALSE)
manhattan(data11, main = "conditioned on rs204991", cex = 0.8, cex.axis = 0.8, col = c("blue4", "orange3"), xlim = c(25000000, 34000000), annotatePval = 0.0005, annotateTop = FALSE)
manhattan(data11, main = "conditioned on rs6904596", cex = 0.8, cex.axis = 0.8, col = c("blue4", "orange3"), xlim = c(25000000, 34000000), annotatePval = 0.0005, annotateTop = FALSE)
manhattan(data11, main = "conditioned on rs3132541", cex = 0.8, cex.axis = 0.8, col = c("blue4", "orange3"), xlim = c(25000000, 34000000), annotatePval = 0.0005, annotateTop = FALSE)
manhattan(data11, main = "conditioned on rs13194504", cex = 0.8, cex.axis = 0.8, col = c("blue4", "orange3"), xlim = c(25000000, 34000000), annotatePval = 0.0005, annotateTop = FALSE)

manhattan(data11, chr = "CHR", bp = "BP", p = "P", snp = "SNP", logp = TRUE, xlim = c(25000000, 34000000))
str(data11)
head(data11)
qq(data11$P)
as.data.frame(table(data11$CHR))
manhattan(data11)
mydata <- read.table("merge_1000g_imputed_CEU_chrALL_suicide_logistic_hwe001_PCA15.txt", header=T)
par(mar = rep(2,4))
manhattan(mydata)
qq(mydata$P, main = "Q-Q plot of GWAS p-values")
dev.off()


data_PGCGWAS <- read.table("rall.txt", header=TRUE)
df_data_PGCGWAS <- data.frame(data_PGCGWAS)
head(df_data_PGCGWAS, 10)
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, hg19chrc == "chr6" & bp > 25000000 & bp < 35000000, select = c(snpid, hg19chrc, bp, a1, a2, or, se, p))
write.table(df_data_PGCGWAS_subset, "C:/Users/jlu967/Desktop/HLA/PGCGWAS_xMHC_allsnp.txt", quote=FALSE, col.names = TRUE, row.names = FALSE)

df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs6904071")
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs114002920") #rs204991
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs114384056") #rs7775397
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs116521087") #r13194504
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs6904071")
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs6904071")
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs13219354")
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs115556740") #rs3131296
df_data_PGCGWAS_subset <- subset(df_data_PGCGWAS, snpid == "rs6932590")









print(df_data_PGCGWAS_subset)

data22 <- read.table("PGCGWAS_xMHC_allsnp_plot.txt", header=TRUE)
head(data22)
data1122 <- merge(data22, data11, by = "BP")
write.table(data1122, "C:/Users/jlu967/Desktop/HLA/PGCGWAS_xMHC_allsnp_merged.txt", quote=FALSE, col.names = TRUE, row.names = FALSE)

SNPLIST_CLUMPED <- read.table("SNPLIST_CLUMPED.txt", header=TRUE)
data_PGCGWAS
colnames(df_data_PGCGWAS)[colnames(df_data_PGCGWAS)=="snpid"] <- "SNP"
SNPLIST_CLUMPED_subset <- merge(SNPLIST_CLUMPED, df_data_PGCGWAS, by = "SNP" )
write.table(SNPLIST_CLUMPED_subset, "C:/Users/jlu967/Desktop/HLA/SNPLIST_CLUMPED_subset", quote=FALSE, col.names = TRUE, row.names = FALSE)


library(ggplot2)
gtex_rs204991 <- read.csv("GTEx Portal_rs204991_selected.csv", header=TRUE)
head(gtex_rs204991)
p = ggplot(gtex_rs204991, aes(x=gtex_rs204991$Region, y=-log10(gtex_rs204991$P.Value), fill=gtex_rs204991$Gene.Symbol)) + geom_bar(stat = 'identity') + labs(x = "Tissue", y = "-log(10)P") +geom_text(aes(label = gtex_rs204991$Gene.Symbol), color = "white", size = 3, position = position_stack(vjust = 0.5)) + coord_flip()
print(p)

gtex_rs9267920 <- read.csv("GTEx Portal_rs9267920_selected.csv", header=TRUE)
head(gtex_rs9267920)
p = ggplot(gtex_rs9267920, aes(x=gtex_rs9267920$Region, y=-log10(gtex_rs9267920$P.Value), fill=gtex_rs9267920$Gene.Symbol)) + geom_bar(stat = 'identity') + labs(x = "Tissue", y = "-log(10)P") +geom_text(aes(label = gtex_rs9267920$Gene.Symbol), color = "white", size = 3, position = position_stack(vjust = 0.5)) + coord_flip()
print(p)

