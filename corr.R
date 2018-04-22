corr <- function(directory1, threshold = 0){
    correlation <- 0
    thresholdt <- complete(directory1)
    print("complete function complete")
    for( z in 1:332){
        print(paste(toString(z), "st start", sep = ""))
        if (z <10)
            csvlist1 <- read.csv(paste(directory1, '/00',toString(z),'.csv',sep = ''))
        if (z >= 10 & z < 100)
            csvlist1 <- read.csv(paste(directory1,'/0',toString(z),'.csv', sep = ''))
        if(z >= 100){
            csvlist1 <- read.csv(paste(directory1,'/',toString(z),'.csv', sep = ''))
        }
        print("read file complete")
        
        
        if (thresholdt[z, 2] > threshold){
            correlation <- rbind(correlation, c(z, cor(csvlist1["nitrate"], csvlist1["sulfate"], use = "complete.obs")))
        }
        print(paste(toString(z), "st complete", sep = ""))
    }
    correlation
}