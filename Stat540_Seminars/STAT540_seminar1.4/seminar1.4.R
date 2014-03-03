setwd("~/Stat540_Seminars/STAT540_seminar1.4")
prDat <- read.table("GSE4051_MINI.txt", header = TRUE, row.names = 1)
str(prDat)
#basic exploration of prDat
##row number?
nrow(prDat)
dim(prDat) ##row number 39
##col number?
ncol(prDat) ##col number 6
length(prDat)
dim(prDat)

##inspect observations
head(prDat)
tail(prDat)
sample(prDat, x[i, j]) #messiong around didn't work
prDat[i, j] #messiong around didn't work
sample(prDat)
E(prDat) #messiong around didn't work
num(prDat) #messiong around didn't work
names(prDat)
dimnames(prDat)
str(prDat) #flavors: int,factor, num, num, num.
###left out sanity check for sample, will return to this later.
levels(prDat)
str(prDat) #how to put variables here? need to name each one?
levels(str(prDat)) #also, how to put variables here?
levels(prDat$devStage)
summary(prDat)
table(prDat) #no idea how to get levels for each fator variable
table(prDat$devStage) #OK, so it can work if I do it individually... 
  #but there really needs to be a 'for all subsets' command
###the answers. Worried that these have been put up, and I've lost my chance for points on these seminars.

str(prDat)
dim(prDat)
nrow(prDat)
ncol(prDat)
length(prDat)
names(prDat)
head(prDat)
tail(prDat)
prDat[sample(nrow(prDat), size = 6), ] #Would not have guessed this. Learn.
prDat[sample(ncol(prDat), size = 6), ]
prDat[sample(tail(prDat), size = 6), ] #doesn't work
identical(prDat[sample(ncol(prDat), size = 6), ], prDat[sample(nrow(prDat), size = 6), ] )
table(prDat$sample)
table(prDat$devStage)
table(prDat$gType)
all(sort(prDat$sample))
all(sort(prDat$devStage)) #error: not meaningful factors
all(sort(prDat$gType)) 
all(sort(prDat$crabHammer)) 
all?
?all
?all()
(x <- 1)
(x <- 4)
x <- 1:4
x[5] <- 12
all(sort(x))
x
rm(x[5])
x <- 1:4
all(sort(x))
x <- 1:11
all(sort(x))
x <- 1:11
x[12] <- 13
x
all(sort(x)) #OK, now back to the sheet
seq_len(nrow(prDat))
seq_len(ncol(prDat))
all(sort(prDat$sample) == seq_len(nrow(prDat)))
sort(prDat$sample)
sort(prDat$eggBomb)
sort(prDat$gType)
str(prDat$devStage)
summary(prDat$devStage)
table(prDat$devStage)
levels(prDat$devStage)
summary(prDat$gType)
table(prDat$gType)
levels(prDat$gType)
table(prDat$devStage, prDat$gType)
min(prDat$crabHammer)
max(prDat$eggBomb)
range(prDat$poisonFang)
summary(prDat$crabHammer)
fivenum(prDat$eggBomb)
mean(prDat$poisonFang)
median(prDat$crabHammer)
quantile(prDat$crabHammer, probs = 0.5)
quantile(prDat$crabHammer, probs = c(0.05, 0.10, 0.9, 0.95))
weeDat <- subset(prDat, poisonFang > 7.5)
nrow(weeDat)
table(weeDat$gType)
table(weeDat$devStage)
addmargins(with(weeDat, table(devStage, gType)))
prDat[c("Sample_16", "Sample_38"), c("crabHammer", "eggBomb", "poisonFang")]
rownames(prDat[prDat$eggBomb < quantile(prDat$eggBomb, 0.1), ])
