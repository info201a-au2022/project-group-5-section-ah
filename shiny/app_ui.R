library(shiny)

ui = tagList(
  shinythemes::themeSelector(),
  navbarPage(
    theme = "cerulean",  # <--- To use a theme, uncomment this
    "shinythemes",
    tabPanel("Navbar 1",
             sidebarPanel(
             ),
             mainPanel(
               tabsetPanel(
                 tabPanel("Visualization 1",
                          h4("Table"),
                          tableOutput("table"),
                 )
               )
             )
    ),
    tabPanel("Navbar 2", "This panel is intentionally left blank"),
    tabPanel("Navbar 3", "This panel is intentionally left blank")
  )
)
