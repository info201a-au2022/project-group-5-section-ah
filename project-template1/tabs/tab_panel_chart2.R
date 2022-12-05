# tab_panel_chart2

library(shiny)
library(shinydashboard)
library(data.table)


tab_panel_chart2 <-tabPanel(
  "Visualization 2",
  p("This is chart 2."),

  fluidPage(
  header <- dashboardHeader(title = "Search"),
  sidebar <- dashboardSidebar(
    sidebarSearchForm(textId = "searchText", buttonId = "searchButton", 
                      label = "Search dataset", icon = shiny::icon("search"))
  ),
  body <- dashboardBody(tableOutput("filtered_table")),
  
  #ui <- dashboardPage(title = 'Search', header, sidebar, body)
)
)



