# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
  "Visualization 1",
  p("This chart expresses the relationship between the production cost of a given movie title and the actual Worldwide gross of said movie. This comparison is meant to describe the size of correlation between the amount a director decided to spend on a movie and how much that investment (or lack of investment) affected the overall profitability of said movie title. As we can see, the movie with the highest production cost is Avengers: Endgame, which is also the second most grossed movie. Additionally, the movie titled: Avatar, had a production budget/cost of only half that of Avengers: Endgame, but still managed to gross more money. This means that the worldwide gross of a movie may not be as tied to the production cost of a movie as we had initially thought."),
  fluidPage(
    titlePanel("Visualization 1"),
    sidebarLayout(position = "right",
                  sidebarPanel(h4("Filters"),
                               sliderInput("whatyears", "Select a range of years",
                                           min = 1991, max = 2023, value = c(1991, 2023),
                                           sep = "")),
                  mainPanel(textOutput("out_year"), plotOutput("budget_gross"))
    )
  )
)