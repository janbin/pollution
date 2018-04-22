corr <- function(directory1, threshold = 0){
    correlation <- 0
    for( i in 1:332){
        if (i <10)
            csvlist1 <- read.csv(paste(directory1, '/00',toString(i),'.csv',sep = ''))
        if (i >= 10 & i < 100)
            csvlist1 <- read.csv(paste(directory1,'/0',toString(i),'.csv', sep = ''))
        if(i >= 100){
            csvlist1 <- read.csv(paste(directory1,'/',toString(i),'.csv', sep = ''))
        }
        
        
        thresholdt <- complete(directory1)[i, 2]
        if (thresholdt > threshold){
            correlation <- rbind(correlation, c(i, cor(csvlist1["nitrate"], csvlist1["sulfate"])))
        }
        
    }
    correlation
}