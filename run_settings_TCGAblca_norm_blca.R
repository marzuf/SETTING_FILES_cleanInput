
    # > file written: Sat, 08 Dec 2018 19:05:02 +0100 

    # in this file, settings that are specific for a run on a dataset

    # gives path to output folder
    pipOutFold <- "OUTPUT_FOLDER/TCGAblca_norm_blca"

    # full path (starting with /mnt/...)
    # following format expected for the input
    # colnames = samplesID
    # rownames = geneID
    # !!! geneID are expected not difficulted

    # *************************************************************************************************************************
    # ************************************ SETTINGS FOR 0_prepGeneData
    # *************************************************************************************************************************

    # UPDATE 07.12.2018: for RSEM data, the "analog" FPKM file is provided separately (built in prepData)
    rna_fpkmDT_file <- "/mnt/ed4/marie/other_datasets/TCGAblca_norm_blca/fpkmDT.Rdata"

    rnaseqDT_file <- "/mnt/ed4/marie/other_datasets/TCGAblca_norm_blca/rnaseqDT_v2.Rdata"
    my_sep <- "\t"
    # input is Rdata or txt file ?
    # TRUE if the input is Rdata
    inRdata <- TRUE

    # can be ensemblID, entrezID, geneSymbol
    geneID_format <- "entrezID"
    stopifnot(geneID_format %in% c("ensemblID", "entrezID", "geneSymbol"))

    # are geneID rownames ? -> "rn" or numeric giving the column
    geneID_loc <- "rn"
    stopifnot(geneID_loc == "rn" | is.numeric(geneID_loc))

    removeDupGeneID <- TRUE

    # *************************************************************************************************************************
    # ************************************ SETTINGS FOR 1_runGeneDE
    # *************************************************************************************************************************

    # labels for conditions
    cond1 <- "norm"
    cond2 <- "blca"

    # path to sampleID for each condition - should be Rdata ( ! sample1 for cond1, sample2 for cond2 ! )
    sample1_file <- "/mnt/ed4/marie/other_datasets/TCGAblca_norm_blca/norm_ID.Rdata"
    sample2_file <- "/mnt/ed4/marie/other_datasets/TCGAblca_norm_blca/blca_ID.Rdata"

    minCpmRatio <- 20/888 

    inputDataType <- "RSEM"

    nCpu <- 20

    # number of permutations
nRandomPermut <- 10000
step8_for_permutGenes <- TRUE
step8_for_randomTADsFix <- FALSE
step8_for_randomTADsGaussian <- FALSE
step8_for_randomTADsShuffle <- FALSE
step14_for_randomTADsShuffle <- FALSE

