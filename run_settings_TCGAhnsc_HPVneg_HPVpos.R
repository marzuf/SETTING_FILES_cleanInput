
    # > file written: Fri, 07 Dec 2018 16:05:30 +0100 

    # in this file, settings that are specific for a run on a dataset

    # gives path to output folder
    pipOutFold <- "OUTPUT_FOLDER/TCGAhnsc_HPVneg_HPVpos"

    # full path (starting with /mnt/...)
    # following format expected for the input
    # colnames = samplesID
    # rownames = geneID
    # !!! geneID are expected not difficulted

    # *************************************************************************************************************************
    # ************************************ SETTINGS FOR 0_prepGeneData
    # *************************************************************************************************************************

    # UPDATE 07.12.2018: for RSEM data, the "analog" FPKM file is provided separately (built in prepData)
    rna_fpkmDT_file <- "/mnt/ed4/marie/other_datasets/TCGAhnsc_HPVneg_HPVpos/fpkmDT.Rdata"

    rnaseqDT_file <- "/mnt/ed4/marie/other_datasets/TCGAhnsc_HPVneg_HPVpos/rnaseqDT_v2.Rdata"
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
    cond1 <- "HPVneg"
    cond2 <- "HPVpos"

    # path to sampleID for each condition - should be Rdata ( ! sample1 for cond1, sample2 for cond2 ! )
    sample1_file <- "/mnt/ed4/marie/other_datasets/TCGAhnsc_HPVneg_HPVpos/HPVneg_ID.Rdata"
    sample2_file <- "/mnt/ed4/marie/other_datasets/TCGAhnsc_HPVneg_HPVpos/HPVpos_ID.Rdata"

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

