# Last updated: 180628
# Author: Wesley Cai
# Purpose: Demonstrate answer for Part 1 homework
# Download https://github.com/wescaiju/R_tutorial_part_1/tree/master/resources
#   Gene expression file (microarray_values.txt)
#   Dictionary file (dictionary.txt)
#
# Homework
# 1. Convert probe ID’s to gene symbols
# 2. Generate a heatmap and save as an image file
# Hint: read.table(), merge(), Heatmap() or heatmap(), as.matrix()
# 
# Bonus
# 1. Download gene of interest file (goi.txt)
# 2. Only plot heatmap of genes of interest

setwd("Downloads/R_tutorial_part_1-master-6/resources/exercise/")

# Read in all the data
dat <- read.table("microarray_values.txt", header = TRUE)
dict <- read.table("dictionary.txt", header = TRUE)
goi <- read.table("goi.txt", header = TRUE)

# Merge dat and dict to get joined table
mergedDat <- merge(dat, dict, by = "probe_id")

# Set row.names of mergedDat to be gene symbols
row.names(mergedDat) <- mergedDat$gene_symbol

# Generate matrix by only selecting relevant columns
mergedDatMatrix <- as.matrix(mergedDat[,2:4])

# Scale and plot heatmap
mergedDatMatrixScaled <- t(scale(t(mergedDatMatrix)))
heatmap(mergedDatMatrixScaled)

# Save image programmatically or going over to plot panel and clicking export -> Save as Image
png("heatmap.png", width = 5, height = 5, unit = "in", res = 300)
heatmap(mergedDatMatrixScaled)
dev.off()

# BONUS
goiDat <- mergedDat[as.character(goi$gene_symbol),]
goiDatMatrix <- as.matrix(goiDat[,2:4])
goiDatMatrixScaled <- t(scale(t(goiDatMatrix)))
heatmap(goiDatMatrixScaled)
