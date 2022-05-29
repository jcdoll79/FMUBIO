#Create data frame
dat2 = data.frame(cpue = c(8.9,11.9,11.3,13.2,10.2,9.8,6.4,12.9,12.9,17.1,
                           21.7,22.3,21.2,20.9,18.8,20.9,17.3,18.4,22.8,21.3),
                  group = c("A","A","A","A","A","A","A","A","A","A",
                            "B","B","B","B","B","B","B","B","B","B"))

#Print data frame
dat2

#Summary statistics
#Average CPUE per group
tapply(X = dat2$cpue, INDEX = dat2$group, FUN = mean)

#Standard deviation of CPUE per group
tapply(X = dat2$cpue, INDEX = dat2$group, FUN = sd)

#Create Boxplot
boxplot(dat2$cpue~dat2$group,
        ylab = "CPUE (n/day)", xlab = "Group")

#t test
res2 = t.test(dat2$cpue~dat2$group, var.equal=TRUE)
#print results
res2