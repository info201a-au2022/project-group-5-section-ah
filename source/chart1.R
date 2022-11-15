# Bar Plot/Bar graph with Top 10 Languages on y-axis, 
# highest average IMDb score on x-axis

# Load ggplot2
library(ggplot2)
library(dplyr)
library(forcats)

# Combine languages, find average IMDb score of each.
newdf <- netflix_stats %>%
  group_by(Languages) %>%
  summarize(avg_IMDb = mean(`IMDb Score`))

# Order scores to find the top 10 highest averages.
greatest_to_least <- arrange(newdf, -avg_IMDb)

# Create dataframe with top 10 languages and scores.
data <- data.frame(
  Top_10_Languages=c("Romanian","English","Dutch","German","Hebrew",
                     "Quenya", "Taglog", "Urdu", "Arabic", "Icelandic") ,  
  Average_IMDb_Score=c(9.1,9,8.9,8.9,8.9,8.9,8.9,8.9,8.8,8.8)
)

# Create bar graph with labels, reorder from greatest to least.
chart1 <- data %>%
  mutate(Top_10_Languages = fct_reorder(Top_10_Languages, Average_IMDb_Score)) %>%
  ggplot( aes(x=Top_10_Languages, y=Average_IMDb_Score)) +
  geom_bar(stat="identity", fill="#f68060", alpha=.6, width=.4) +
  coord_flip() +
  theme_bw() +
  labs(title ="Top 10 Movie Languages with Highest Average IMDb Score in 2016-2021")

plot(chart1)


