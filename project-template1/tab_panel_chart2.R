# tab_panel_chart2

library(shiny)
library(shinydashboard)
library(data.table)


tab_panel_chart2 <-tabPanel(
  "Movie Finder",
  
  h1(strong("Movie Search Bar")),
  
  p(strong("CAPITALIZATION MATTERS!"),"This table has a search function which allows users
    to search for a movie or TV show on Netflix around the world. After the user 
    searches for a movie or TV show, they are presented with a table which 
    displays movies or TV shows with whatever term the user input, and two other
    columns. These two columns are", em("Country Availability"), "and", em("Language."), 
    "By comparing these two columns, we can see that there are some discrepancies 
    between what language a movie or TV show is in and what country it is available in. 
    For example, some movies or TV shows are not available in the country where 
    the movie language is spoken."),

  fluidPage(
  header <- dashboardHeader(title = em("Search a Movie you'd like to find!")),
  sidebar <- dashboardSidebar(
    sidebarSearchForm(textId = "searchText", buttonId = "searchButton", 
                      label = "Search dataset", icon = shiny::icon("search"))
  ),
  body <- dashboardBody(tableOutput("filtered_table")),
  )
)



