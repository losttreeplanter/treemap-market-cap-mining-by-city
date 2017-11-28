library(readr)
library(treemap)
library(ggplot2)



vanmktcap <- read_csv("C:/Users/mmccrae.INFOMINE2/Desktop/Vancouver Market Cap Miners Nov 24 2017 - Removed columns.csv")


vanmktcap<-subset(vanmktcap, googmarketcap > 1601830163)

# treemap
treemap(vanmktcap,
        index="Company",
        vSize="googmarketcap",
        type="value",
        vColor="googmarketcap",
        palette="#2d70da",
       #mapping=c("-1408634263", "2965959024", "16931312755"),
        border.col="white"
)