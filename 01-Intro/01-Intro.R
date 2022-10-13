## Easy exercises

# Suck in some data
UVM <- read.csv("data/UVM.csv")

# Get the dimensions of this baby
dim(UVM)

# Get only the counts data
Counts <- UVM[ , 4:21]

# Give the counts nicer names
rownames(Counts) <- UVM$Gene.Name

# Look at the structure of the data
str(UVM)
str(Counts)

# Important info when looking for help:
sessionInfo()


## Intermediate exercises

Total <- sum(Counts$h1)

rm(Total)

boxplot(Counts)

Clog2 <- log2(Counts)

boxplot(Clog2)

plot(Clog2$h1, Clog2$h1.1)

library(gplots)

heatmap.2(Clog2)

heatmap.2(as.matrix(Clog2))

