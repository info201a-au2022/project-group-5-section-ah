# tab_panel_chart2

library(shiny)
library(shinydashboard)
library(data.table)


tab_panel_chart2 <-tabPanel(
  "Visualization 2",
  p("CAPITALIZATION MATTERS! This table has a search function which allows users to search for a movie or TV show on Netflix around the world. After the user searches for a movie or TV show, they are presented with a table which displays movies or TV shows with whatever term the user input, and two other columns. These two columns are Country Availability and Language. By comparing these two columns, we can see that there are some discrepancies between what language a movie or TV show is in and what country it is available in. For example, some movies or TV shows are not available in the country where the movie language is spoken."),

  fluidPage(
  header <- dashboardHeader(title = "Search"),
  sidebar <- dashboardSidebar(
    sidebarSearchForm(textId = "searchText", buttonId = "searchButton", 
                      label = "Search dataset", icon = shiny::icon("search"))
  ),
  body <- dashboardBody(tableOutput("filtered_table")),
  )
)



