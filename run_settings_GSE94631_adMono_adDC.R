
# in this file, settings that are specific for a run on a dataset

# gives path to output folder
pipOutFold <- "OUTPUT_FOLDER/GSE94631_adMono_adDC"

# full path (starting with /mnt/...)
# following format expected for the input
# colnames = samplesID
# rownames = geneID
# !!! geneID are expected not difficulted

# *************************************************************************************************************************
# ************************************ SETTINGS FOR 0_prepGeneData
# *************************************************************************************************************************

rnaseqDT_file <- "/mnt/ed4/marie/other_datasets/GSE94631/GSE94631_htseq_count.diff_ad.mono_dc.txt"
my_sep <- "\t"
# input is Rdata or txt file ?
# TRUE if the input is Rdata
inRdata <- FALSE

# can be ensemblID, entrezID, geneSymbol
geneID_format <- "geneSymbol"
stopifnot(geneID_format %in% c("ensemblID", "entrezID", "geneSymbol"))

# are geneID rownames ? -> "rn" or numeric giving the column
geneID_loc <- 1
stopifnot(geneID_loc == "rn" | is.numeric(geneID_loc))

removeDupGeneID <- TRUE

# *************************************************************************************************************************
# ************************************ SETTINGS FOR 1_runGeneDE
# *************************************************************************************************************************

# labels for conditions
cond1 <- "mono"
cond2 <- "dc"

# path to sampleID for each condition - should be Rdata ( ! sample1 for cond1, sample2 for cond2 ! )
sample1_file <- "/mnt/ed4/marie/other_datasets/GSE94631/adMono_ID.Rdata"
sample2_file <- "/mnt/ed4/marie/other_datasets/GSE94631/adDC_ID.Rdata"


minCpmRatio <- 20/888 

inputDataType <- "raw"
