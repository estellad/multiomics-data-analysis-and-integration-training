# install.packages(c("MBAnalysis", "multiblock", "CCA", "RVAideMemoire", "factoextra"))
# BiocManager::install("mixOmics")

library(MBAnalysis)
library(multiblock)
library(CCA)
library(mixOmics)
library(RVAideMemoire)
library(factoextra)
library(ggplot2)


library(scater)
example_sce <- mockSCE()
example_sce <- logNormCounts(example_sce)

## default plot
plotExpression(example_sce, rownames(example_sce)[1:15], point_alpha = 0.05, jitter = "jitter")





