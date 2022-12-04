library(shiny)
library(ggplot2)
library(tidyverse)

server = function(input, output) {
  output$txtout <- renderText({
    paste(input$txt, input$slider, format(input$date), sep = ", ")
  })
  output$table <- renderTable({
    head(cars, 4)
  })
}

#load datasets
top_500_movies <- read.csv("../data/top-500-movies.csv")