complete <- function(directory, id = 1:332){
  nobs <- rep(0, length(id), names = id)
  for( i in id){
    if (i <10)
      csvlist <- read.csv(paste(directory, '/00',toString(i),'.csv',sep = ''))
    if (i >= 10 & i < 100)
      csvlist <- read.csv(paste(directory,'/0',toString(i),'.csv', sep = ''))
    if(i >= 100){
      csvlist <- read.csv(paste(directory,'/',toString(i),'.csv', sep = ''))
    }
    a <- csvlist["nitrate"]
    b <- csvlist["sulfate"]
    count <- 0
    for (j in length(a)){
      if (!is.na(a[j]) && !is.na(b[j])){
        count -> count + 1
      }
    nobs[toString(i)] <- count
    }
  }
  cbind(id, nobs)
}