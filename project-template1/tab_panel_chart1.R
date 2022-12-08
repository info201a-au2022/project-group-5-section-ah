# tab_panel_chart1

library(shiny)

tab_panel_chart1 <-tabPanel(
  "Production Cost",
  
  h1(strong("Production Cost vs. Movie Gross")),
  
  fluidPage(
    sidebarLayout(position = "right",
                  sidebarPanel(h4("Filters"),
                               sliderInput("whatyears", "Select a range of years",
                                           min = 1991, max = 2023, value = c(1991, 2023),
                                           sep = "")),
                  mainPanel(textOutput("out_year"), plotOutput("budget_gross"))
    ),
    p("This chart expresses the relationship between the production cost of a 
      given movie title and the actual Worldwide gross of said movie. This 
      comparison is meant to describe the size of correlation between the 
      amount a director decided to spend on a movie and how much that investment
      (or lack of investment) affected the overall profitability of said movie 
      title. One thing that is interesting to see is that while filtering from 1990 to 2000,
      you can see that the highest movie budget at the time was around $200 million, but if
      you filter for 2000 to present (2022), movie budgets have gone up to $400 million."
    )
  )
)