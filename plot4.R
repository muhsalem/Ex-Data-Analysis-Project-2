library(dplyr)
NEI <- readRDS("~/exdata-data-NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("~/exdata-data-NEI_data/Source_Classification_Code.rds")
NEISCC <- merge(NEI,SCC,by.x="SCC",by.y="SCC")
NEISCCCoal <- NEISCC[which(grepl("Coal",NEISCC$EI.Sector)==TRUE),]
NEISCCCoal2 <- tapply(NEISCCCoal$Emissions,NEISCCCoal$year,sum)
plot(names(NEISCCCoal2),NEISCCCoal2,type="b",col="red",xlab="Year",ylab="Total Emissions PM2.5 from Coal Combustion sources")
