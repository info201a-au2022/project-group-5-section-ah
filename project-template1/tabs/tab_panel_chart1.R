# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
  "Chart 1",
  p("This is chart 1."),
  fluidPage(
    titlePanel("Movies, Money & More"),
    sidebarLayout(position = "right",
                  sidebarPanel(h4("Filters"),
                               sliderInput("whatyears", "Select a range of years",
                                           min = 1991, max = 2023, value = c(1991, 2023),
                                           sep = "")),
                  mainPanel(textOutput("out_year"), plotOutput("budget_gross"))
    )
  )
)