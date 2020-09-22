pollutantmean <- function(directory, pollutant, id=1:332){
  files <- list.files(directory, full.names = TRUE)
  all_csv <- lapply(files[id], function(file){
    read.csv(file)
  })
  data_set <- do.call(rbind.data.frame, all_csv)
  result <- data_set[[pollutant]]
  mean <- mean(result, na.rm = TRUE)
  return(mean)
}