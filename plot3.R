library(ggplot2)
library(dplyr)
## 
## Attaching package: 'dplyr'
## The following objects are masked from 'package:stats':
## 
##     filter, lag
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
NEI <- readRDS("~/exdata-data-NEI_data/summarySCC_PM25.rds")
NEI2 <- subset(NEI, NEI$fips=="24510")
GroupedData <- group_by(NEI2,year,type)
Summary <- summarise(GroupedData,EmissionsSum=sum(Emissions))
g <- ggplot(Summary,aes(year,EmissionsSum))
p <- g + geom_point()+geom_smooth()+labs(title= "PM2.5 Emissions Evolution per source type in Baltimore")+ labs(y="Total PM2.5 Emissions")+facet_grid(.~type)
print(p)
