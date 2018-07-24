

setwd("/Users/mlemery/Desktop/")

#read data
dat<- read.csv("test.csv", header=T)

head(dat)
summary(dat)

#difference between groups
anova = anova(lm(dat$Value ~ dat$Run))

#
PostHoc = pairwise.t.test(dat$Value, dat$Rep, p.adj="bonferroni")
PostHoc

