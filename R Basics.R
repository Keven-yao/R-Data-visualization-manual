install.packages(c("ggplot2", "gcookbook"))

library(ggplot2)
library(gcookbook)

install.packages("ggplot2")

library(ggplot2)

data <- read.csv("datafile.csv")

data <- read.csv("datafile.csv", header=FALSE)

# Manually assign the header names
names(data) <- c("Column1","Column2","Column3")

data <- read.csv("datafile.csv", sep="\t")

data <- read.csv("datafile.csv", stringsAsFactors=FALSE)

# Convert to factor
data$Sex <- factor(data$Sex)

str(data)

# Only need to install once
install.packages("xlsx")

library(xslx)
data <- read.xlsx("datafile.xlsx", 1)

# Only need to install once
install.packages("gdata")

library(gdata)
# Read first sheet
data <- read.xls("datafile.xls")

data <- read.xlsx("datafile.xls", sheetIndex=2)

data <- read.xlsx("datafile.xls", sheetName="Revenues")

data <- read.xls("datafile.xls", sheet=2)

# Only need to install the first time
install.packages("foreign")

library(foreign)
data <- read.spss("datafile.sav")
