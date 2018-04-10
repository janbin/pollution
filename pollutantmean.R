pollutantmean <- function(pollutant, ID = 1:332){
    x <- 0
    
    for( i in 1:length(ID)){
        if (i <10)
            csvlist <- read.csv(paste('specdata/00',toString(i),'.csv',sep = ''))
        if (i >= 10 & i < 100)
            csvlist <- read.csv(paste('specdata/0',toString(i),'.csv', sep = ''))
        if(i >= 100)
            csvlist <- read.csv(paste('specdata/',toString(i),'.csv', sep = ''))
        y <- csvlist$pollutant
        z <- y[!is.na(y)]
        x <- x + mean(z)
    }   
    
    
    mean(x)
}
