library(dplyr)
NEI <- readRDS("~/exdata-data-NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("~/exdata-data-NEI_data/Source_Classification_Code.rds")
NEISCC <- merge(NEI2,SCC,by.x="SCC",by.y="SCC")
NEISCCVehicle <- NEISCC[which(grepl("Vehicles",NEISCC$EI.Sector)==TRUE),]
NEISCCVehicle2 <- subset(NEISCCVehicle,NEISCCVehicle$fips=="24510")
NEISCCVehicle3 <- tapply(NEISCCVehicle2$Emissions,NEISCCVehicle2$year,sum)
plot(names(NEISCCVehicle3),NEISCCVehicle3,type="b",col="red",xlab="Year",ylab="Total Emissions PM2.5 from Vehicles sources in Baltimore")
