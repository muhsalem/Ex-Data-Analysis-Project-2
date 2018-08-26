NEI <- readRDS("~/exdata-data-NEI_data/summarySCC_PM25.rds")
NEI1 <- tapply(NEI$Emissions,NEI$year,sum)
plot(names(NEI1),NEI1,type="b",col="red",xlab="Year",ylab="Total Emissions PM2.5")
