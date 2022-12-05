# tab_panel_chart3

library(shiny)

ww_gross_range <- range(top_500_movies$worldwide_gross)
select_values <- colnames(top_500_movies)

# Worldwide Gross Slider
ww_gross_input <- sliderInput(
  inputId = "ww_gross_choice",
  label = "Worldwide Gross (in dollars)", 
  min = ww_gross_range[1],
  max = ww_gross_range[2],
  value = ww_gross_range
)

# Dropdown Menu with feature of interest
feature_input <- selectInput(
  inputId = "feature", 
  label = "Feature of Interest", 
  choices = select_values, 
  selected = "title"
)

tab_panel_chart3 <-tabPanel(
    "Chart 3",
    p("This is chart 3."), 
    fluidPage(
      titlePanel("Top 500 Movies"),
      ww_gross_input, 
      feature_input, 
      checkboxInput("smooth", label = strong("Show Trendline"), value = TRUE),
      plotOutput("plot")
    )
)
