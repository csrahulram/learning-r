complete <- function(directory, id = 1:332){
  data_frame <- data.frame("id", "nobs")
  files <- list.files(directory, full.names = TRUE)
  count <- 0
  for(file in files[id]){
    count <- count + 1
    single <- read.csv(file)
    result <- na.omit(single, cols=c("sulfate", "nitrate"))
    data_frame <- rbind(data_frame, list(id[count], length(result$ID)))
  }
  return(data_frame)
}