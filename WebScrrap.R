# importing packages
library(robotstxt)
Path<-paths_allowed("https://www.imdb.com/chart/top/")
#import rvest library
library(rvest)
url<-"https://www.imdb.com/chart/top/"
My_web<-read_html(url)
# Import all tables
My_table<-html_nodes(My_web,"table")
Movie_basic<-html_table(My_table)[[1]]
View(Movie_basic)
Movie_final<-Movie_basic[,2:3]
View(Movie_final)
write.csv(Movie_final,"My_practice.csv")

library(robotstxt)
path<-paths_allowed("https://www.imdb.com/search/title/?groups=top_250&sort=user_rating")
link<-"https://www.imdb.com/search/title/?groups=top_250&sort=user_rating"
library(rvest)
library(dplyr)
web<-read_html(link)
Name<-web%>%html_nodes(".lister-item-header a")%>%html_text()
Director_Name<-web%>%html_nodes(".text-muted+ p a:nth-child(1)")%>%html_text()
View(Director_Name)
rating<-web%>%html_nodes(".ratings-imdb-rating strong")%>%html_text()
View(rating)
Fav_Movies<-data.frame(Name, Director_Name, rating, Votes)
View(Fav_Movies)
write.csv(Fav_Movies,"Hollywood.csv")
