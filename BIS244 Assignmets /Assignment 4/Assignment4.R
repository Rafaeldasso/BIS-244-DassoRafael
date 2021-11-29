library(here)
library(ggrepel)
library(scales)
library(tidyverse)
PopularMovie <- read_csv("Top_10000_Popular_Movies.csv")
str(PopularMovie)
PopularMovie$year <- format(as.Date(PopularMovie$release_date), format = "%Y")
PopularMovie <- PopularMovie[which (PopularMovie$year>="2020" &
                                      PopularMovie$year<="2021"),]
p <- ggplot(data = PopularMovie,
            mapping = aes(x = release_date, y = popularity))
p + geom_point()
p + geom_point()+
  geom_text_repel(data = subset(PopularMovie, popularity > 500,
                                max.overlaps = Inf),
                  mapping = aes(label = original_title)) +
  labs(x = "Date",
       y = "Score for Popularity",
       title = "Top 10,000 Most Popular Movies") +
  scale_y_continuous(labels = scientific)
