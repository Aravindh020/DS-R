# Check the data type...Is it correct?
str(imdb.ratings)
# Remove special characters
imdb.ratings$year <-gsub("\\(|\\)", "", imdb.ratings$year)
View(imdb.ratings)
imdb.ratings$duration <-gsub("min","",imdb.ratings$duration)
View(imdb.ratings)
imdb.ratings$Name<-as.character(imdb.ratings$Name)
imdb.ratings$year<-as.numeric(imdb.ratings$year)
imdb.ratings$duration<-as.numeric(imdb.ratings$duration)
imdb.ratings$rating<-as.numeric(as.character(imdb.ratings$rating))
View(imdb.ratings)
imdb.ratings$Rank<-c(1:50)
View(imdb.ratings)
imdb.ratings<-imdb.ratings[c("Rank","Name","year","duration","rating")]
View(imdb.ratings)
#Gross_collected
set.seed(123)
imdb.ratings$Gross_dollars<-runif(50,min = 10000000, max = 1000000000)
View(imdb.ratings)
