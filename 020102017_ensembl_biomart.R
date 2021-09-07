setwd("~/Desktop/PrediXcanExample")

#loading annotation file from biomart
data1 <- read.csv("~/Desktop/PrediXcanExample/mart_export.txt", header = TRUE)
df.data1 <- data.frame(data1)
head(df.data1, 10)
names(df.data1)[1] <- "gene"

#loading and process association file for TW_Brain_Anterior_cingulate_cortex_BA24_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Anterior_cingulate_cortex_BA24_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Anterior_cingulate_cortex_BA24_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)


#loading and process association file for TW_Brain_Caudate_basal_ganglia_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Caudate_basal_ganglia_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Caudate_basal_ganglia_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Cerebellar_Hemisphere_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Cerebellar_Hemisphere_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Cerebellar_Hemisphere_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Frontal_Cortex_BA9_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Frontal_Cortex_BA9_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Frontal_Cortex_BA9_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Hippocampus_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Hippocampus_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Hippocampus_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Hypothalamus_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Hypothalamus_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Hypothalamus_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Nucleus_accumbens_basal_ganglia_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Nucleus_accumbens_basal_ganglia_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Nucleus_accumbens_basal_ganglia_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Putamen_basal_ganglia_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Putamen_basal_ganglia_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Putamen_basal_ganglia_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Whole_Blood_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Whole_Blood_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Whole_Blood_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Cortex_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Cortex_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Cortex_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)







#loading annotation file from biomart_simplex version
data1 <- read.csv("~/Desktop/PrediXcanExample/mart_export_simplex.txt", header = TRUE)
df.data1 <- data.frame(data1)
head(df.data1, 10)
names(df.data1)[1] <- "gene"

#loading and process association file for TW_Brain_Anterior_cingulate_cortex_BA24_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Anterior_cingulate_cortex_BA24_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Anterior_cingulate_cortex_BA24_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)


#loading and process association file for TW_Brain_Caudate_basal_ganglia_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Caudate_basal_ganglia_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Caudate_basal_ganglia_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Cerebellar_Hemisphere_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Cerebellar_Hemisphere_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Cerebellar_Hemisphere_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Frontal_Cortex_BA9_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Frontal_Cortex_BA9_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Frontal_Cortex_BA9_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Hippocampus_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Hippocampus_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Hippocampus_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Hypothalamus_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Hypothalamus_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Hypothalamus_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Nucleus_accumbens_basal_ganglia_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Nucleus_accumbens_basal_ganglia_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Nucleus_accumbens_basal_ganglia_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Putamen_basal_ganglia_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Putamen_basal_ganglia_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Putamen_basal_ganglia_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Whole_Blood_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Whole_Blood_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Whole_Blood_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#TW_Brain_Cortex_0.5_wrd6w_meltzer
data2 <- read.table("~/Desktop/PrediXcanExample/results/TW_Brain_Cortex_0.5_wrd6w_meltzer/association.txt", header = TRUE)
df.data2 <- data.frame(data2)
head(df.data2, 10)
#library(stringr)
#str_split_fixed(df.data2$gene, ".", 2)
#list <- strsplit(df.data2$gene, ".")
list <- strsplit(as.character(df.data2$gene), ".", fixed = TRUE) # fixed is added
list
df.data2.split <- data.frame(df.data2, do.call(rbind, list))
head(df.data2.split, 10)
df.data2.split$gene <- NULL
names(df.data2.split)[5] <- paste ("gene")
df.data.merge <- merge(df.data2.split, df.data1, by = "gene")
head(df.data.merge, 10)
write.table(df.data.merge,"~/Desktop/PrediXcanExample/results/TW_Brain_Cortex_0.5_wrd6w_meltzer/association_annotated.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)

#process association_annotation files and extract candidate genes
setwd("~/Desktop/PrediXcanExample/results/Result_02102017")
filelist = list.files(pattern = ".csv")
filelist
inputfils <- lapply(filelist, read.csv, header = T)
#names(inputfils)  <- sub("\\.frq", "", filelist) 
#str(inputfils)
#lapply(inputfils, names)
#length(inputfils)

# start from the following change element in inputfils
df.data21 <- data.frame(inputfils[21])
df.data1 <- data.frame(inputfils[1])
df.data2 <- data.frame(inputfils[2])
df.data3 <- data.frame(inputfils[3])
df.data4 <- data.frame(inputfils[4])
df.data5 <- data.frame(inputfils[5])
df.data6 <- data.frame(inputfils[6])
df.data7 <- data.frame(inputfils[7])
df.data8 <- data.frame(inputfils[8])
df.data9 <- data.frame(inputfils[9])
df.data10 <- data.frame(inputfils[10])
df.data11 <- data.frame(inputfils[11])
df.data12 <- data.frame(inputfils[12])
df.data13 <- data.frame(inputfils[13])
df.data14 <- data.frame(inputfils[14])
df.data15 <- data.frame(inputfils[15])
df.data16 <- data.frame(inputfils[16])
df.data17 <- data.frame(inputfils[17])
df.data18 <- data.frame(inputfils[18])
df.data19 <- data.frame(inputfils[19])
df.data20 <- data.frame(inputfils[20])
head(df.data21, 10)

merge.df.data1 <- merge(df.data21, df.data1, by = "gene")
head(merge.df.data1, 10)
str(merge.df.data1)
merge.df.data1$tissue <- "Anterior_cingulate_cortex_BA24"
merge.df.data1$phenotype <- "psyd6w"
head(merge.df.data1, 10)
  
merge.df.data2 <- merge(df.data21, df.data2, by = "gene")
head(merge.df.data2, 10)
merge.df.data2$tissue <- "Anterior_cingulate_cortex_BA24"
merge.df.data2$phenotype <- "wrd6w"

merge.df.data3 <- merge(df.data21, df.data3, by = "gene")
head(merge.df.data3, 10)
merge.df.data3$tissue <- "Caudate"
merge.df.data3$phenotype <- "psyd6w"

merge.df.data4 <- merge(df.data21, df.data4, by = "gene")
head(merge.df.data4, 10)
merge.df.data4$tissue <- "Caudate"
merge.df.data4$phenotype <- "wrd6w"

merge.df.data5 <- merge(df.data21, df.data5, by = "gene")
head(merge.df.data5, 10)
merge.df.data5$tissue <- "Cerebellum"
merge.df.data5$phenotype <- "wrd6w"

merge.df.data6 <- merge(df.data21, df.data6, by = "gene")
head(merge.df.data6, 10)
merge.df.data6$tissue <- "Cerebellum"
merge.df.data6$phenotype <- "psyd6w"

merge.df.data7 <- merge(df.data21, df.data7, by = "gene")
head(merge.df.data7, 10)
merge.df.data7$tissue <- "Cortex"
merge.df.data7$phenotype <- "wrd6w"

merge.df.data8 <- merge(df.data21, df.data8, by = "gene")
head(merge.df.data8, 10)
merge.df.data8$tissue <- "Cortex"
merge.df.data8$phenotype <- "psyd6w"

merge.df.data9 <- merge(df.data21, df.data9, by = "gene")
head(merge.df.data9, 10)
merge.df.data9$tissue <- "Frontal_Cortex"
merge.df.data9$phenotype <- "wrd6w"

merge.df.data10 <- merge(df.data21, df.data10, by = "gene")
head(merge.df.data10, 10)
merge.df.data10$tissue <- "Frontal_Cortex"
merge.df.data10$phenotype <- "psyd6w"

merge.df.data11 <- merge(df.data21, df.data11, by = "gene")
head(merge.df.data11, 10)
merge.df.data11$tissue <- "Hippocampus"
merge.df.data11$phenotype <- "wrd6w"

merge.df.data12 <- merge(df.data21, df.data12, by = "gene")
head(merge.df.data12, 12)
merge.df.data12$tissue <- "Hippocampus"
merge.df.data12$phenotype <- "psyd6w"

merge.df.data13 <- merge(df.data21, df.data13, by = "gene")
head(merge.df.data13, 10)
merge.df.data13$tissue <- "Hypothalamus"
merge.df.data13$phenotype <- "wrd6w"

merge.df.data14 <- merge(df.data21, df.data14, by = "gene")
head(merge.df.data14, 14)
merge.df.data14$tissue <- "Hypothalamus"
merge.df.data14$phenotype <- "psyd6w"

merge.df.data15 <- merge(df.data21, df.data15, by = "gene")
head(merge.df.data15, 10)
merge.df.data15$tissue <- "NCA"
merge.df.data15$phenotype <- "wrd6w"

merge.df.data16 <- merge(df.data21, df.data16, by = "gene")
head(merge.df.data16, 16)
merge.df.data16$tissue <- "NCA"
merge.df.data16$phenotype <- "psyd6w"

merge.df.data17 <- merge(df.data21, df.data17, by = "gene")
head(merge.df.data17, 10)
merge.df.data17$tissue <- "Putamen"
merge.df.data17$phenotype <- "wrd6w"

merge.df.data18 <- merge(df.data21, df.data18, by = "gene")
head(merge.df.data18, 18)
merge.df.data18$tissue <- "Putamen"
merge.df.data18$phenotype <- "psyd6w"

merge.df.data19 <- merge(df.data21, df.data19, by = "gene")
head(merge.df.data19, 10)
merge.df.data19$tissue <- "Whole_blood"
merge.df.data19$phenotype <- "wrd6w"

merge.df.data20 <- merge(df.data21, df.data20, by = "gene")
head(merge.df.data20, 20)
merge.df.data20$tissue <- "Whole_blood"
merge.df.data20$phenotype <- "psyd6w"

merge.final <- rbind(merge.df.data20, merge.df.data19, merge.df.data18, merge.df.data17, merge.df.data16, merge.df.data15, merge.df.data14, merge.df.data13, merge.df.data12, merge.df.data11, merge.df.data10, merge.df.data9, merge.df.data8, merge.df.data7, merge.df.data6, merge.df.data5, merge.df.data4, merge.df.data3, merge.df.data2, merge.df.data1)
write.table()




#using home computer window 10
#process association_annotation files and extract candidate genes
setwd("C:/Users/Jiang/Desktop/result")
#setwd("~/Desktop/PrediXcanExample/results/Result_02102017")
filelist = list.files(pattern = ".csv")
filelist
inputfils <- lapply(filelist, read.csv, header = T)
#names(inputfils)  <- sub("\\.frq", "", filelist) 
#str(inputfils)
#lapply(inputfils, names)
#length(inputfils)

# start from the following change element in inputfils
df.data21 <- data.frame(inputfils[21])
df.data1 <- data.frame(inputfils[1])
df.data2 <- data.frame(inputfils[2])
df.data3 <- data.frame(inputfils[3])
df.data4 <- data.frame(inputfils[4])
df.data5 <- data.frame(inputfils[5])
df.data6 <- data.frame(inputfils[6])
df.data7 <- data.frame(inputfils[7])
df.data8 <- data.frame(inputfils[8])
df.data9 <- data.frame(inputfils[9])
df.data10 <- data.frame(inputfils[10])
df.data11 <- data.frame(inputfils[11])
df.data12 <- data.frame(inputfils[12])
df.data13 <- data.frame(inputfils[13])
df.data14 <- data.frame(inputfils[14])
df.data15 <- data.frame(inputfils[15])
df.data16 <- data.frame(inputfils[16])
df.data17 <- data.frame(inputfils[17])
df.data18 <- data.frame(inputfils[18])
df.data19 <- data.frame(inputfils[19])
df.data20 <- data.frame(inputfils[20])
head(df.data21, 10)

merge.df.data1 <- merge(df.data21, df.data1, by = "gene")
head(merge.df.data1, 10)
str(merge.df.data1)
merge.df.data1$tissue <- "Anterior_cingulate_cortex_BA24"
merge.df.data1$phenotype <- "psyd6w"
head(merge.df.data1, 10)

merge.df.data2 <- merge(df.data21, df.data2, by = "gene")
head(merge.df.data2, 10)
merge.df.data2$tissue <- "Anterior_cingulate_cortex_BA24"
merge.df.data2$phenotype <- "wrd6w"

merge.df.data3 <- merge(df.data21, df.data3, by = "gene")
head(merge.df.data3, 10)
merge.df.data3$tissue <- "Caudate"
merge.df.data3$phenotype <- "psyd6w"

merge.df.data4 <- merge(df.data21, df.data4, by = "gene")
head(merge.df.data4, 10)
merge.df.data4$tissue <- "Caudate"
merge.df.data4$phenotype <- "wrd6w"

merge.df.data5 <- merge(df.data21, df.data5, by = "gene")
head(merge.df.data5, 10)
merge.df.data5$tissue <- "Cerebellum"
merge.df.data5$phenotype <- "psyd6w"

merge.df.data6 <- merge(df.data21, df.data6, by = "gene")
head(merge.df.data6, 10)
merge.df.data6$tissue <- "Cerebellum"
merge.df.data6$phenotype <- "wrd6w"

merge.df.data7 <- merge(df.data21, df.data7, by = "gene")
head(merge.df.data7, 10)
merge.df.data7$tissue <- "Cortex"
merge.df.data7$phenotype <- "psyd6w"

merge.df.data8 <- merge(df.data21, df.data8, by = "gene")
head(merge.df.data8, 10)
merge.df.data8$tissue <- "Cortex"
merge.df.data8$phenotype <- "wrd6w"

merge.df.data9 <- merge(df.data21, df.data9, by = "gene")
head(merge.df.data9, 10)
merge.df.data9$tissue <- "Frontal_Cortex"
merge.df.data9$phenotype <- "psyd6w"

merge.df.data10 <- merge(df.data21, df.data10, by = "gene")
head(merge.df.data10, 10)
merge.df.data10$tissue <- "Frontal_Cortex"
merge.df.data10$phenotype <- "wrd6w"

merge.df.data11 <- merge(df.data21, df.data11, by = "gene")
head(merge.df.data11, 10)
merge.df.data11$tissue <- "Hippocampus"
merge.df.data11$phenotype <- "psyd6w"

merge.df.data12 <- merge(df.data21, df.data12, by = "gene")
head(merge.df.data12, 12)
merge.df.data12$tissue <- "Hippocampus"
merge.df.data12$phenotype <- "wrd6w"

merge.df.data13 <- merge(df.data21, df.data13, by = "gene")
head(merge.df.data13, 10)
merge.df.data13$tissue <- "Hypothalamus"
merge.df.data13$phenotype <- "psyd6w"

merge.df.data14 <- merge(df.data21, df.data14, by = "gene")
head(merge.df.data14, 14)
merge.df.data14$tissue <- "Hypothalamus"
merge.df.data14$phenotype <- "wrd6w"

merge.df.data15 <- merge(df.data21, df.data15, by = "gene")
head(merge.df.data15, 10)
merge.df.data15$tissue <- "NCA"
merge.df.data15$phenotype <- "psyd6w"

merge.df.data16 <- merge(df.data21, df.data16, by = "gene")
head(merge.df.data16, 16)
merge.df.data16$tissue <- "NCA"
merge.df.data16$phenotype <- "wrd6w"

merge.df.data17 <- merge(df.data21, df.data17, by = "gene")
head(merge.df.data17, 10)
merge.df.data17$tissue <- "Putamen"
merge.df.data17$phenotype <- "psyd6w"

merge.df.data18 <- merge(df.data21, df.data18, by = "gene")
head(merge.df.data18, 18)
merge.df.data18$tissue <- "Putamen"
merge.df.data18$phenotype <- "wrd6w"

merge.df.data19 <- merge(df.data21, df.data19, by = "gene")
head(merge.df.data19, 10)
merge.df.data19$tissue <- "Whole_blood"
merge.df.data19$phenotype <- "psyd6w"

merge.df.data20 <- merge(df.data21, df.data20, by = "gene")
head(merge.df.data20, 20)
merge.df.data20$tissue <- "Whole_blood"
merge.df.data20$phenotype <- "wrd6w"

merge.final <- rbind(merge.df.data20, merge.df.data19, merge.df.data18, merge.df.data17, merge.df.data16, merge.df.data15, merge.df.data14, merge.df.data13, merge.df.data12, merge.df.data11, merge.df.data10, merge.df.data9, merge.df.data8, merge.df.data7, merge.df.data6, merge.df.data5, merge.df.data4, merge.df.data3, merge.df.data2, merge.df.data1)
write.table(merge.final, "C:/Users/Jiang/Desktop/result/merge.final_HLA.txt", quote=FALSE, row.names= FALSE, col.names=TRUE)























































source("http://bioconductor.org/biocLite.R")
biocLite("biomaRt")

a
setwd("~/Desktop/PrediXcanExample")
library(biomaRt)
listEnsembl()