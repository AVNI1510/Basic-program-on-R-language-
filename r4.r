Input=("
volume pitch
1760   529
2040   566
2440   473
2550    461
2730    456
2740    532
3010    484
3080    527
3370    488
3740    485
")
Data=read.table(textconnection(Input),header=TRUE)
cor.test(~ pitch+volume,
           data=Data,
           method="spearman",
           continuity=FALSE,
           conf.level=0.95)
plot(pitch ~ volume,
     data=Data,
     pch=16)

