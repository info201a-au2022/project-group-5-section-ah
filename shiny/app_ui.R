library(shiny)
library(shinythemes)

ui = tagList(
  shinythemes::themeSelector(),
  navbarPage(
    theme = "cerulean",  # <--- To use a theme, uncomment this
    "Movies, Money, and More",
    tabPanel("Page 1",
             mainPanel(
               tabsetPanel(
                 tabPanel("Visualization 1",
                          h4("Table"),
                          tableOutput("table"),
                 )
               )
             )
    ),
    tabPanel("Page 2",
             mainPanel(
               tabsetPanel(
                 tabPanel("Visualization 2",
                          h4("Table"),
                          tableOutput("table"),
                 )
               )
             )
    ),
    tabPanel("Page 3",
             mainPanel(
               tabsetPanel(
                 tabPanel("Visualization 3",
                          h4("Table"),
                          tableOutput("table"),
                 )
               )
             )
    ),
  )
)
