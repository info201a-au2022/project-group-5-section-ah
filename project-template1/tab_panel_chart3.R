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
    "Worldwide Gross",
    
    h1(strong("Worldwide Movie Gross")),
    
    fluidPage(
      ww_gross_input, 
      feature_input, 
      checkboxInput("smooth", label = strong("Show Trendline"), value = TRUE),
      plotlyOutput("plot"),
      
      p(""),
      p("The interactive scatterplot explores the correlation between 
    worldwide movie gross and a user selected feature such as: rank, production cost,
    domestic gross, runtime etc.
        "),
      
      p("Overall, there is", strong("positive correlation"), "between worldwide 
      movie gross and the feature of interest. Specifically for", em("rank,"),
      "higher ranked movies had larger worldwide gross. The legend also shows 
      that the most frequent genre is Action/Adventure. For", em("runtime,"),
      "most movies ranged between 100-140 minutes but the movie with the highest
      worldwide gross(Avengers: Endgame, 2019) was about 180 minutes.
      ")
    )
)
