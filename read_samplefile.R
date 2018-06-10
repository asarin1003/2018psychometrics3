library(psy)
library(psych)
library(effsize)
library(ggplot2)

#使うデータを読み込み
dat3 <- read.csv("paired_sample.csv", header=TRUE)

x <- data.frame (
  year = c(2017, 2018),
  anx_mean = c(mean(dat3$anx2017), mean(dat3$anx2018))
)

g <- ggplot(x, aes(x = year, y = anx_mean))
g <- g + geom_line()
plot(g)