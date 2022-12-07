#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(tidyverse)
library(shinydashboard)
library(data.table)


top_500_movies <- read_csv("../data/top-500-movies.csv")
netflix_info <- read.csv("../data/netflix-rotten-tomatoes-metacritic-imdbcsv.csv")

server <- function(input, output, session) {
  output$plot <- renderPlot({
    plot_data <- top_500_movies %>% 
      filter(worldwide_gross > input$ww_gross_choice[1], worldwide_gross < input$ww_gross_choice[2])
    
    # ggplot2 scatterplot with user select column- xaxis, ww gross- yaxis
    # genre- color. Save plot as a variable
    p <- ggplot(
      data = plot_data,
      mapping = aes_string(x = input$feature, y = "worldwide_gross", color = "genre")
    ) +
      geom_point()
    
    # If trendline checkbox is selected, add a 'geom_smooth' line to plot
    
    if (input$smooth) {
      p <- p + geom_smooth(se = FALSE)
    }
    
    # Return the completed plot
    p
  })
  output$out_year <- renderText(input$whatyears)
  
  output$budget_gross <- renderPlot ({
    data2 <- top_500_movies[top_500_movies$year>=input$whatyears[1]&top_500_movies$year<=input$whatyears[2],]
    
    
    plot(data2$production_cost, data2$worldwide_gross, main = "Correlation Between Production Cost and Movie Gross",
         xlab = "Movie Budget", ylab = "Movie Profit", )
    options(scipen=999)
  })
    
    example_data <- data.table(Title = netflix_info$Title, 'Country Availability' = netflix_info$Country.Availability,
                               Language = netflix_info$Languages)
    
    output$filtered_table <- renderTable({
      req(input$searchButton == TRUE)
      example_data[Title %like% input$searchText]
    })
    
  }



