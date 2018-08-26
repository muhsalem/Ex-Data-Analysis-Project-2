NEI <- readRDS("~/exdata-data-NEI_data/summarySCC_PM25.rds")
NEI2 <- subset(NEI, NEI$fips=="24510")
NEI3 <- tapply(NEI2$Emissions,NEI2$year,sum)
plot(names(NEI3),NEI3,type="b",col="red",xlab="Year",ylab="Total Emissions PM2.5 in Baltimore")
