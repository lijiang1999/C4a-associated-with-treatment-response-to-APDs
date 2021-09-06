setwd("C:/Users/jli/Desktop/C4_additional")
#location of the figures and tables
library(ggplot2)
library(tidyr) #install tidyr only, some functions not working
library(tidyverse)
library(dplyr)
library(data.table)
df <- read.csv("Final_table_Association_C4A_loadingfile.csv", header = TRUE, stringsAsFactors = FALSE)
df <- read.csv("Final_table_Association_BTN3A2_loadingfile.csv", header = TRUE, stringsAsFactors = FALSE)
str(df)
colnames(df)
head(df)
#[1] "tissue_C4A"    "estimate"      "t"             "p.value"       "se"            "rank"          "Dataset"       "conf.low"      "conf.high"    
#[10] "estimate_95CI"
#df$Rate_COV[df$Rate_COV == 0] <- NA
#df$Death_Rate[df$Death_Rate == 0] <- NA

Result1 <- df

library(forestplot)


tabletext <- Result1 %>%
  dplyr::select(tissue_C4A, p.value, estimate_95CI)
header <- c("tissue for C4A", "P value", "estimate(95%CI)")
tabletext <- rbind(header, tabletext)
forestdata <- Result1 %>%
  dplyr::select(estimate, conf.low, conf.high)
header2 <- c(1, 1, 1)
forestdata <- rbind(header2, forestdata)
#forestdata_new <- forestdata[c(1:12, 24:26, 13, 18, 16, 17, 19, 14, 15, 20, 21:23),]
#forestdata_new <- forestdata[c(1:3, 4:18),]
forestdata_new <- forestdata[c(1:3, 4:18),]
#tabletext <- tabletext %>%
#mutate(PHENO = sub("Diabetes_mellitus2", "Diabetes_mellitus_type2", PHENO)) %>%
#mutate(PHENO = sub("HOME_Anticoag", "HOME_Anticoagulant", PHENO)) %>%
#mutate(PHENO = sub("HOme_Metformin", "HOME_Metformin", PHENO)) %>%
#mutate(PHENO = sub("Home_Oral_Antidiabetics", "HOME_Oral_Antidiabetics", PHENO))
#tabletext$PHENO
#tabletext_new <- tabletext[c(1:3, 4:18),]
tabletext_new <- tabletext[c(1:3, 4:18),]

forestplot(tabletext_new, 
           graph.pos = 3,
           forestdata_new,new_page = TRUE,
           #is.summary=c(TRUE,TRUE,rep(FALSE,8),TRUE),
           clip=c(-13,3),
           boxsize=0.25,
           xlog=FALSE, 
           col=fpColors(box="royalblue",line="darkblue", summary="royalblue"),
           xlab = "estimate(95%CI)",
           txt_gp = fpTxtGp(label = list(gpar(fontfamily = "Arial"),
                                         gpar(fontfamily = "",
                                              col = "#660000")),
                            ticks = gpar(fontfamily = "", cex=1.0),
                            xlab  = gpar(fontfamily = "Arial", cex = 1.0)))

head(Result1)

#bin the tissue.
tabletext_bin <- data.frame(Result1$tissue_C4A[1:8])
tabletext_bin <- data.frame(Result1$tissue_BTN3A2[1:8])
forestplot(tabletext_bin, 
           legend = c("Discovery", "Replicate"),
           #fn.ci_norm = c(fpDrawnormalCI, fpDrawCircleCI),
           line.margin = .3, #We need to add this to avoid crowding
           mean = cbind(data.frame(Result1$estimate[1:8]), data.frame(Result1$estimate[9:16])),
           lower = cbind(data.frame(Result1$conf.low[1:8]), data.frame(Result1$conf.low[9:16])),
           upper = cbind(data.frame(Result1$conf.high[1:8]), data.frame(Result1$conf.high[9:16])),
           graph.pos = 2,
           #forestdata_new,new_page = TRUE,
           #is.summary=c(TRUE,TRUE,rep(FALSE,8),TRUE),
           clip=c(-13,4),
           boxsize=-log(Result1$p.value)/50,
           xlog=FALSE, 
           col=fpColors(box=c("royalblue", "darkred")),
           xlab = "estimate(95%CI)",
           txt_gp = fpTxtGp(label = list(gpar(fontfamily = "Arial"),
                                         gpar(fontfamily = "",
                                              col = "#660000")),
                            ticks = gpar(fontfamily = "", cex=1.0),
                            xlab  = gpar(fontfamily = "Arial", cex = 1.0)))


#https://cran.r-project.org/web/packages/forestplot/vignettes/forestplot.html

# Cochrane data from the 'rmeta'-package
cochrane_from_rmeta <- 
  structure(list(
    mean  = c(NA, NA, 0.578, 0.165, 0.246, 0.700, 0.348, 0.139, 1.017, NA, 0.531), 
    lower = c(NA, NA, 0.372, 0.018, 0.072, 0.333, 0.083, 0.016, 0.365, NA, 0.386),
    upper = c(NA, NA, 0.898, 1.517, 0.833, 1.474, 1.455, 1.209, 2.831, NA, 0.731)),
    .Names = c("mean", "lower", "upper"), 
    row.names = c(NA, -11L), 
    class = "data.frame")

tabletext<-cbind(
  c("", "Study", "Auckland", "Block", 
    "Doran", "Gamsu", "Morrison", "Papageorgiou", 
    "Tauesch", NA, "Summary"),
  c("Deaths", "(steroid)", "36", "1", 
    "4", "14", "3", "1", 
    "8", NA, NA),
  c("Deaths", "(placebo)", "60", "5", 
    "11", "20", "7", "7", 
    "10", NA, NA),
  c("", "OR", "0.58", "0.16", 
    "0.25", "0.70", "0.35", "0.14", 
    "1.02", NA, "0.53"))

forestplot(tabletext, 
           cochrane_from_rmeta,new_page = TRUE,
           is.summary=c(TRUE,TRUE,rep(FALSE,8),TRUE),
           clip=c(0.1,2.5), 
           xlog=TRUE, 
           col=fpColors(box="royalblue",line="darkblue", summary="royalblue"))

#############################################################################################
#C:/Users/jli/Desktop/C4_additional
library("readxl")

#load NCBI gene names in this region
MHCGENES <- read.csv("C:/Users/jli/Desktop/C4_additional/MHC_GENES.csv", header = TRUE, stringsAsFactors = FALSE)
colnames(MHCGENES)
#[1] "X.bin"        "name"         "chrom"        "strand"       "txStart"      "txEnd"        "cdsStart"     "cdsEnd"      
#[9] "exonCount"    "exonStarts"   "exonEnds"     "score"        "name2"        "cdsStartStat" "cdsEndStat"

#load the ENST Gene name in this region
MHCGENES_ENSEMBLE <- read.csv("C:/Users/jli/Desktop/C4_additional/MHC_GENES_ENSEMBLE.csv", header = TRUE, stringsAsFactors = FALSE)
colnames(MHCGENES_ENSEMBLE)
#[1] "X.bin"        "name"         "chrom"        "strand"       "txStart"      "txEnd"        "cdsStart"     "cdsEnd"      
#[9] "exonCount"    "exonStarts"   "exonEnds"     "score"        "name2"        "cdsStartStat" "cdsEndStat"  

head(MHCGENES_ENSEMBLE)

#load summary statistics of Predixcan result
MHCREGION <- read_excel("C:/Users/jli/Desktop/C4_additional/Results/association_annotated_Anterior_cingulate_cortex_BA24.xlsx")
colnames(MHCREGION)
#[1] "gene"                 "beta"                 "t"                    "p"                    "se.beta."            
#[6] "X2"                   "Transcript.ID"        "Associated.Gene.Name"
class(MHCREGION)
head(MHCREGION)
#MHCGENES$Associated.Gene.Name <- MHCGENES$name2
#MHC_MERGE <- merge(MHCREGION, MHCGENES[,c("Associated.Gene.Name", "name")])

MHCGENES_ENSEMBLE$Transcript.ID <- MHCGENES_ENSEMBLE$name
MHC_MERGE <- merge(MHCREGION, MHCGENES_ENSEMBLE[,c("Transcript.ID", "name2")], by = "Transcript.ID")
MHC_MERGE <- MHC_MERGE[order(MHC_MERGE$p),]
MHC_MERGE$RANK <- 1:nrow(MHC_MERGE) 

p <- MHC_MERGE$p
p_adj <- data.frame(round(p.adjust(p, "BH"), 3))
summary_file <- cbind(MHC_MERGE, p_adj)
summary_file$Tissue <- "Anterior_cingulate_cortex_BA24" 
summary_file_Anterior_cingulate_cortex_BA24 <- summary_file
write.csv(summary_file_Anterior_cingulate_cortex_BA24, "C:/Users/jli/Desktop/C4_additional/Results/association_annotated_Anterior_cingulate_cortex_BA24_MHCREGION_BHFDR.csv", col.names = T, row.names = F, quote = F)

#load summary statistics of Predixcan result
MHCREGION <- read_excel("C:/Users/jli/Desktop/C4_additional/Results/association_annotated_Whole_blood.xlsx")
colnames(MHCREGION)
#[1] "gene"                 "beta"                 "t"                    "p"                    "se.beta."            
#[6] "X2"                   "Transcript.ID"        "Associated.Gene.Name"
class(MHCREGION)
head(MHCREGION)
#MHCGENES$Associated.Gene.Name <- MHCGENES$name2
#MHC_MERGE <- merge(MHCREGION, MHCGENES[,c("Associated.Gene.Name", "name")])

MHCGENES_ENSEMBLE$Transcript.ID <- MHCGENES_ENSEMBLE$name
MHC_MERGE <- merge(MHCREGION, MHCGENES_ENSEMBLE[,c("Transcript.ID", "name2")], by = "Transcript.ID")
MHC_MERGE <- MHC_MERGE[order(MHC_MERGE$p),]
MHC_MERGE$RANK <- 1:nrow(MHC_MERGE) 

p <- MHC_MERGE$p
p_adj <- data.frame(round(p.adjust(p, "BH"), 3))
summary_file <- cbind(MHC_MERGE, p_adj)
summary_file$Tissue <- "Whole_blood" 
summary_file_Whole_blood <- summary_file
write.csv(summary_file_Whole_blood, "C:/Users/jli/Desktop/C4_additional/Results/association_annotated_Whole_blood_MHCREGION_BHFDR.csv", col.names = T, row.names = F, quote = F)

#load summary statistics of Predixcan result
MHCREGION <- read_excel("C:/Users/jli/Desktop/C4_additional/Results/association_annotated_Whole_blood.xlsx")
colnames(MHCREGION)
#[1] "gene"                 "beta"                 "t"                    "p"                    "se.beta."            
#[6] "X2"                   "Transcript.ID"        "Associated.Gene.Name"
class(MHCREGION)
head(MHCREGION)
#MHCGENES$Associated.Gene.Name <- MHCGENES$name2
#MHC_MERGE <- merge(MHCREGION, MHCGENES[,c("Associated.Gene.Name", "name")])

MHCGENES_ENSEMBLE$Transcript.ID <- MHCGENES_ENSEMBLE$name
MHC_MERGE <- merge(MHCREGION, MHCGENES_ENSEMBLE[,c("Transcript.ID", "name2")], by = "Transcript.ID")
MHC_MERGE <- MHC_MERGE[order(MHC_MERGE$p),]
MHC_MERGE$RANK <- 1:nrow(MHC_MERGE) 

p <- MHC_MERGE$p
p_adj <- data.frame(round(p.adjust(p, "BH"), 3))
summary_file <- cbind(MHC_MERGE, p_adj)
summary_file$Tissue <- "Whole_blood" 
summary_file_Whole_blood <- summary_file
write.csv(summary_file_Whole_blood, "C:/Users/jli/Desktop/C4_additional/Results/association_annotated_Whole_blood_MHCREGION_BHFDR.csv", col.names = T, row.names = F, quote = F)




