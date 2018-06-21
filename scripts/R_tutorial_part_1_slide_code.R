# 2. Basics of R programming
myAnswer <- 1 + 2 + 3 + 4 + 5
myAnswer <- 1/5 + 2/4 + 3/3 + 4/2 + 5/1

V1 <- c(1, 2, 3, 4, 5)
V2 <- c(5, 4, 3, 2, 1)
sum(V1/V2)
V1[2]

sum(seq(1, 5)/seq(5, 1))

data.frame(DV1 = c(1, 2, 3, 4, 5),
           DV2 = c(5, 4, 3, 2, 1),
           DV3 = c(TRUE, FALSE, TRUE, TRUE))
myDF <- data.frame(DV1 = c(1, 2, 3, 4, 5),
                   DV2 = c(5, 4, 3, 2, 1),
                   DV3 = c(TRUE, FALSE, TRUE, TRUE))
class(myDF)

row.names(myDF) <- c("mouse", "sushi", "corgi", "subaru", "cat")
row.names(myDF)
myDF$animals <- row.names(myDF)
myDF["crow", ] <- c(4, 4, FALSE, "crow")

source("https://bioconductor.org/biocLite.R")
biocLite("ComplexHeatmap", dependencies = TRUE)
