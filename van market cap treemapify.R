library(readr)
library(treemapify)
library(ggplot2)



vanmktcap <- read_csv("C:/Users/mmccrae.INFOMINE2/Desktop/Vancouver Market Cap Miners Nov 24 2017 - Removed columns.csv")
View(Vancouver_Market_Cap_Miners_Nov_24_2017_Removed_columns)



vanmktcap<-subset(vanmktcap, googmarketcap > 1601830163)

ggplot(vanmktcap, aes(area = googmarketcap, fill = googmarketcap, label=Company)) +
  geom_treemap() +
  geom_treemap_text(fontface = "italic", colour = "white", place = "centre",  grow = TRUE)





