library(ggplot2)

setwd("~/Documents/P51_SurvivalAnalysis/")

rawdat <- read.csv("autoship.csv")
rawdat$half_life <- c(1, 0.5, 0.25, 0.125)
rawdat <- rawdat[,c("ith_fix", "pct_created_with_auto_ship", "half_life")]
names(rawdat) <- c("ith_fix", "autoship", "half_life")

dat <- melt(rawdat, id="ith_fix")
names(dat) <- c("ith_Fix", "Autoship", "Pct_Subscribed")
ggplot(data=dat, aes(x=ith_Fix, y=Pct_Subscribed, colour=Autoship)) + geom_line() + theme(legend.position="bottom")
