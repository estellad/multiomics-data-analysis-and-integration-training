source("./dimensionality_reduction/")
data("nutrimouse")
str(nutrimouse)

lapply(nutrimouse, dim)
lapply(nutrimouse, length)

str(nutrimouse$gene) # df, sample by gene matrix

# chedk if missing
any(is.na(nutrimouse$gene))

# investigate each gene
summary(nutrimouse$gene[, 1])

colors <- rainbow(20, alpha = 1)
lapply


# 3. Perform PCA
pca.res <- prcomp(nutrimouse$gene, center = TRUE, scale = FALSE) # each gene is special so no need to scale, 
                                                                 # also distribution already looks on the same scale 
summary(pca.res)


# PCA functions
stats::prcomp
stats::princomp
mixOmics::pca
multiblock::pca
psych::principal
FactoMineR::PCA