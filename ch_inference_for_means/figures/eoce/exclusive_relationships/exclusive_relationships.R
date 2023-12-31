# load packages -----------------------------------------------------
library(openintro)
library(dplyr)

# load data ---------------------------------------------------------
survey <- exclusive_relationship

# sample size -------------------------------------------------------
n <- survey %>%
  na.omit(excl_relation) %>%
  nrow() # 203

# histogram ---------------------------------------------------------

pdf("exclusive_relationships_rel_hist.pdf", height = 3, width = 6)
par(mar=c(3.7,2.2,0.5,0.5), las=1, mgp=c(2.5,0.7,0), cex.lab = 1.5)
histPlot(survey$excl_relation, col = COL[1], xlab = "Number of exclusive relationships", ylab = "", xlim = c(0, 10))
dev.off()