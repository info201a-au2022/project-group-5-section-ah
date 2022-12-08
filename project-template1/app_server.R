# app_server.R

library(shiny)
library(ggplot2)
library(plotly)
library(tidyverse)
library(shinydashboard)
library(data.table)


top_500_movies <- read_csv("https://raw.githubusercontent.com/info201a-au2022/project-group-5-section-ah/main/data/top-500-movies.csv")
netflix_info <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-5-section-ah/main/data/netflix-rotten-tomatoes-metacritic-imdbcsv.csv")

server <- function(input, output, session) {
  # Chart 3
  output$plot <- renderPlotly({
    plot_data <- top_500_movies %>% 
      filter(worldwide_gross > input$ww_gross_choice[1], worldwide_gross < input$ww_gross_choice[2])
    
    p <- ggplot(
      data = plot_data,
      mapping = aes_string(x = input$feature, y = "worldwide_gross", color = "genre")
    ) +
      geom_point(alpha = .5) +
      labs(
        title = "Worldwide Movie Gross vs. Selected Feature (1990-2020)",
        y = "Worldwide Gross (U.S. dollars)"
      )
    
    if (input$smooth) {
      p <- p + geom_smooth(se = FALSE)
    }
    
    p
  })
  # Chart 1
  output$out_year <- renderText(input$whatyears)
  
  output$budget_gross <- renderPlot ({
    data2 <- top_500_movies[top_500_movies$year>=input$whatyears[1]&top_500_movies$year<=input$whatyears[2],]
    
    
    plot(data2$production_cost, data2$worldwide_gross, main = "Correlation Between Production Cost and Movie Gross",
         xlab = "Movie Budget", ylab = "Movie Profit", )
    options(scipen=999)
  })
  # Chart 2  
    example_data <- data.table(Title = netflix_info$Title, 'Country Availability' = netflix_info$Country.Availability,
                               Language = netflix_info$Languages)
    
    output$filtered_table <- renderTable({
      req(input$searchButton == TRUE)
      example_data[Title %like% input$searchText]
    })
    
  }



