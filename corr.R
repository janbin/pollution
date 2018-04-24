corr <- function(directory, threshold = 0){
    correlation <- numeric(length = 0)
    thresholdt <- complete(directory)
    print("complete function complete")
    for( z in 1:332){
        print(paste(toString(z), "st start", sep = ""))
        if (z <10)
            csvlist <- read.csv(paste(directory, '/00',toString(z),'.csv',sep = ''))
        if (z >= 10 & z < 100)
            csvlist <- read.csv(paste(directory,'/0',toString(z),'.csv', sep = ''))
        if(z >= 100){
            csvlist <- read.csv(paste(directory,'/',toString(z),'.csv', sep = ''))
        }
        print("read file complete")
        
        
        if (thresholdt[z, 2] > threshold){
            correlation <- rbind(correlation, c(z, cor(csvlist["nitrate"], csvlist["sulfate"], use = "complete.obs")))
        }
        print(paste(toString(z), "st complete", sep = ""))
    }
    correlation
}