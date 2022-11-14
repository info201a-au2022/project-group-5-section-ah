library("tidyverse")

top_500_movies <- read_csv("https://raw.githubusercontent.com/info201a-au2022/project-group-5-section-ah/main/data/top-500-movies.csv")

revenue <- read_csv("https://raw.githubusercontent.com/info201a-au2022/project-group-5-section-ah/main/data/statistic_id187069_box-office-revenue-in-the-us-and-canada-1980-2021.csv")

netflix_stats <- read_csv("https://raw.githubusercontent.com/info201a-au2022/project-group-5-section-ah/main/data/netflix-rotten-tomatoes-metacritic-imdbcsv.csv")

#number of movies in Netflix dataset
netflix_movie_number <- nrow(netflix_stats)
netflix_movie_number <- paste0("There are", netflix_movie_number, "movies in the Netflix dataset. ")

#number of unique genre combinations in the Netflix dataset
unique_genres <- length(unique(netflix_stats$Genre))
unique_genres <- paste0("There are", unique_genres, "unique genre combinations in the Netflix dataset. ")

#year with max movie revenue in U.S. and Canada
year_max_revenue <- revenue %>% 
  filter(...2 == max(...2, na.rm = TRUE)) %>% 
  pull(`Box office revenue in the U.S. and Canada 1980-2021`)
year_max_revenue <- paste0(year_max_revenue, " was the year with the max movie revenue in the U.S. and Canada. ")

#movie with highest IMDb score
highest_imdb_score <- netflix_stats %>% 
  filter(`IMDb Score` == max(`IMDb Score`, na.rm = TRUE)) %>% 
    pull(Title)
highest_imdb_score <- paste0("The movie with the highest IMDb rating is ", highest_imdb_score, ". ")
highest_imdb_score

#movie with highest production cost
highest_production_cost <- top_500_movies %>% 
  select(title, production_cost) %>% 
  filter(production_cost == max(production_cost)) %>% 
  pull(title)
highest_production_cost <- paste0("The movie with the highest production cost is ", highest_production_cost, ". ")

#movie with highest domestic gross 
highest_domestic_gross <- top_500_movies %>% 
  select(title, domestic_gross) %>% 
  filter(domestic_gross == max(domestic_gross)) %>% 
  pull(title)
highest_domestic_gross <- paste0("The movie with the highest domestic gross is ", highest_domestic_gross, ". ")

#movie with highest opening weekend gross 
highest_opening_weekend <- top_500_movies %>% 
  select(title, opening_weekend) %>% 
  filter(opening_weekend == max(opening_weekend, na.rm = TRUE)) %>% 
  pull(title)
highest_opening_weekend <- paste0("The movie with the highest opening weekend gross is ", highest_opening_weekend, ". ")

#highest occuring genre
frequent_genre <- sort(table(top_500_movies$genre), decreasing = TRUE)[1:10]
frequent_genre









