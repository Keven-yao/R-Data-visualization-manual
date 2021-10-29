library(ggplot2)
ggplot(faithful, aes(x=waiting)) + geom_histogram()
faithful
w <- faithful$waiting
ggplot(NULL, aes(x=w)) + geom_histogram()
ggplot(faithful, aes(x=waiting)) +
  geom_histogram(binwidth=5, fill="white", colour="black")
binsize <- diff(range(faithful$waiting))/15
ggplot(faithful, aes(x=waiting)) +
  geom_histogram(binwidth=binsize, fill="white", colour="black")
h <- ggplot(faithful, aes(x=waiting))  # Save the base object for reuse
h + geom_histogram(binwidth=8, fill="white", colour="black", origin=31)
h + geom_histogram(binwidth=8, fill="white", colour="black", origin=35)
library(MASS) # For the data set
# Use smoke as the faceting variable
ggplot(birthwt, aes(x=bwt)) + geom_histogram(fill="white", colour="black") +
  facet_grid(smoke ~ .)
