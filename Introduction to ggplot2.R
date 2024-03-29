library(gcookbook) # For the data set
simpledat
barplot(simpledat, beside=TRUE)
t(simpledat)
barplot(t(simpledat), beside=TRUE)
plot(simpledat[1,], type="l")
lines(simpledat[2,], type="l", col="blue")
simpledat_long
library(ggplot2)
ggplot(simpledat_long, aes(x=Aval, y=value, fill=Bval)) +
  geom_bar(stat="identity", position="dodge")
ggplot(simpledat_long, aes(x=Bval, y=value, fill=Aval)) +
  geom_bar(stat="identity", position="dodge")
ggplot(simpledat_long, aes(x=Aval, y=value, colour=Bval, group=Bval)) +
  geom_line()
dat <- data.frame(xval=1:4, yval=c(3,5,6,9), group=c("A","B","A","B"))
dat
ggplot(dat, aes(x=xval, y=yval))
ggplot(dat, aes(x=xval, y=yval)) + geom_point()
p <- ggplot(dat, aes(x=xval, y=yval))
p + geom_point()
p + geom_point(aes(colour=group))
p + geom_point(colour="blue")
p + geom_point() + scale_x_continuous(limits=c(0,8))
p + geom_point() +
  scale_colour_manual(values=c("orange","forestgreen"))