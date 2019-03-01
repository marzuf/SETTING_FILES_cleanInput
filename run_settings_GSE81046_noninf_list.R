
# in this file, settings that are specific for a run on a dataset

# gives path to output folder
pipOutFold <- "OUTPUT_FOLDER/GSE81046_noninf_list"

# full path (starting with /mnt/...)
# following format expected for the input
# colnames = samplesID
# rownames = geneID
# !!! geneID are expected not difficulted

# *************************************************************************************************************************
# ************************************ SETTINGS FOR 0_prepGeneData
# *************************************************************************************************************************

    # UPDATE 12.12.2018: for RSEM data, the "analog" FPKM file is provided separately (built in prepData)
    rna_fpkmDT_file <- "/mnt/ed4/marie/other_datasets/GSE81046/GSE81046_FPKM_all_DT.Rdata"


rnaseqDT_file <- "/mnt/ed4/marie/other_datasets/GSE81046/GSE81046_expected_count_all_DT.Rdata"
my_sep <- "\t"
# input is Rdata or txt file ?
# TRUE if the input is Rdata
inRdata <- TRUE

# can be ensemblID, entrezID, geneSymbol
geneID_format <- "ensemblID"
stopifnot(geneID_format %in% c("ensemblID", "entrezID", "geneSymbol"))

# are geneID rownames ? -> "rn" or numeric giving the column
geneID_loc <- "rn"
stopifnot(geneID_loc == "rn" | is.numeric(geneID_loc))


removeDupGeneID <- TRUE

# *************************************************************************************************************************
# ************************************ SETTINGS FOR 1_runGeneDE
# *************************************************************************************************************************

# labels for conditions
cond1 <- "noninf"
cond2 <- "list"

# path to sampleID for each condition - should be Rdata
sample1_file <- "/mnt/ed4/marie/other_datasets/GSE81046/04.09_prepData/noninf_ID.Rdata"
sample2_file <- "/mnt/ed4/marie/other_datasets/GSE81046/04.09_prepData/list_ID.Rdata"

inputDataType <- "RSEM"
