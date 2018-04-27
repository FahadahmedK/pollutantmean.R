pollutantmean<-function(directory, pollutant, id=1:332) {
  filelist<-list.files(path=directory, pattern = ".csv", full.names = TRUE)
  data<-data.frame()
  
  for (i in id) {
    dta<-read.csv(filelist[i])
    data<-rbind(data,dta)
  }
  mean(data[,pollutant], na.rm=TRUE)
}