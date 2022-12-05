#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

top_500_movies <- read_csv("https://raw.githubusercontent.com/info201a-au2022/project-group-5-section-ah/main/data/top-500-movies.csv")

server <- function(input, output) {
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
}


