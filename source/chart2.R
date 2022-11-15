
library("plotly")

chart2 <- ggplot(data = top_500_movies, aes(x = worldwide_gross,
                                            y = production_cost,
                                            label = title)) +
  xlab("Worldwide Gross") +
  ylab("Production Cost") +
  labs(title = "Worldwide Gross vs Production Cost") +
  geom_point()

