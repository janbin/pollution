pollutantmean <- function(directory, pollutant, ID = 1:332){
    x <- 0
    count <- 0
    for( i in ID){
        if (i <10)
            csvlist <- read.csv(paste(directory, '/00',toString(i),'.csv',sep = ''))
        if (i >= 10 & i < 100)
            csvlist <- read.csv(paste(directory,'/0',toString(i),'.csv', sep = ''))
        if(i >= 100){
            csvlist <- read.csv(paste(directory,'/',toString(i),'.csv', sep = ''))
        }
        y <- csvlist[pollutant]
        z <- y[!is.na(y)]
        if(length(z) > 0){
          x <- x + sum(z)
          count <- count + length(z)
        }
    }   
    
    
    x/count
}
