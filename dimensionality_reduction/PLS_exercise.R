pls.res <- mixOmics::pls(nutrimouse$gene, nutrimouse$lipid, ncomp = 2, scale = TRUE, mode = "canonical")

max(abs(scale(nutrimouse$gene, center = TRUE, scale = TRUE) - pls.res$X))

max(abs(scale(nutrimouse$lipid, center = TRUE, scale = TRUE) - pls.res$Y))

str(pls.res$variates)

loadings.ind.X <- order(abs(pls.res$loadings$X[, "comp1"]), decreasing = TRUE)
loadings.ind.Y <- order(abs(pls.res$loadings$Y[, "comp1"]), decreasing = TRUE)

names(pls.res$loadings.star)







plotIndiv(nutrimouse)

plotLoadings()