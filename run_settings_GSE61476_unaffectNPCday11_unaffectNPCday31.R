
# in this file, settings that are specific for a run on a dataset

# gives path to output folder
pipOutFold <- "OUTPUT_FOLDER/GSE61476_unaffectNPCday11_unaffectNPCday31"

# full path (starting with /mnt/...)
# following format expected for the input
# colnames = samplesID
# rownames = geneID
# !!! geneID are expected not difficulted

# *************************************************************************************************************************
# ************************************ SETTINGS FOR 0_prepGeneData
# *************************************************************************************************************************

rnaseqDT_file <- "/mnt/ed4/marie/other_datasets/GSE61476/15.11_prepData/GSE61476_countDT.Rdata"
my_sep <- "\t"
# input is Rdata or txt file ?
# TRUE if the input is Rdata
inRdata <- TRUE

# can be ensemblID, entrezID, geneSymbol
geneID_format <- "geneSymbol"
stopifnot(geneID_format %in% c("ensemblID", "entrezID", "geneSymbol"))

# are geneID rownames ? -> "rn" or numeric giving the column
geneID_loc <- "rn"
stopifnot(geneID_loc == "rn" | is.numeric(geneID_loc))

removeDupGeneID <- TRUE

# *************************************************************************************************************************
# ************************************ SETTINGS FOR 1_runGeneDE
# *************************************************************************************************************************

# labels for conditions
cond1 <- "unaffectNPCday11"
cond2 <- "unaffectNPCday31"

# path to sampleID for each condition - should be Rdata
sample1_file <- "/mnt/ed4/marie/other_datasets/GSE61476/15.11_prepData/unaffectNPCday11_ID.Rdata"
sample2_file <- "/mnt/ed4/marie/other_datasets/GSE61476/15.11_prepData/unaffectNPCday31_ID.Rdata"

inputDataType <- "raw"
