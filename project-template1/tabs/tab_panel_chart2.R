# tab_panel_chart2

library(shiny)
library(shinydashboard)
library(data.table)

header <- dashboardHeader(title = "Search")

sidebar <- dashboardSidebar(
  sidebarSearchForm(textId = "searchText", buttonId = "searchButton", 
                    label = "Search dataset", icon = shiny::icon("search"))
)

body <- dashboardBody(tableOutput("filtered_table"))

ui <- dashboardPage(title = 'Search', header, sidebar, body)


server <- function(input, output, session) {
  
  example_data <- data.table(Title = netflix_info$Title, 'Country Availability' = netflix_info$Country.Availability,
                             Language = netflix_info$Languages)
  
  output$filtered_table <- renderTable({
    req(input$searchButton == TRUE)
    example_data[Title %like% input$searchText]
  })
  
}

shinyApp(ui = ui, server = server)
