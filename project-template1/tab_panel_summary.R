# tab_panel_summary

# A page that focuses on at least 3 major takeaways from the project
# (which should be related to a specific aspect of your analysis). 
# Feel free to incorporate tables, graphics, or other elements to convey 
# these conclusions. The key goal: Present the key takeaways for your audience.

library(shiny)

tab_panel_summary <-tabPanel(
  "Summary",
  
  h1(strong("Summary Findings")),
  
  h2("Production Cost vs. Movie Gross"),
  img(src = 'chart1.png', style="width: 600px"),
  p("After examining the Visualization and its information, we can see that the movie with the highest production cost is 
      Avengers: Endgame, which is also the second most grossed movie. 
      Additionally, the movie titled: Avatar, had a production cost/budget of 
      only half that of Avengers: Endgame, but still managed to gross more money.
      This means that the worldwide gross of a movie may not be as tied to the 
      production cost of a movie as we had initially thought. Another factor that 
      adds to the correlation between production cost and movie gross, is movie genre.
      For example, it takes a far larger budget to create a visually moving Action movie in comparison to a Drama."
  ),
  
  h2("Movie Finder"),
  p("By using this search function and table visualization, it becomes clear 
    that some countries are treated more unfairly than others. Some movies in 
    a certain language are not available in the language's main country. This 
    can be due to government corruption or bias within Netflix. Although some 
    movies/TV shows were like this, most were still available in the language's
    main countries."),
  
  h2("Worldwide Movie Gross"),
  img(src = 'chart3.png', style="width: 600px"),
  p("Overall, there is positive correlation between worldwide movie gross
    and the features of interest. This is feasible as higher movie rank and 
    domestic gross naturally increases the worldwide gross. Higher production
    cost also tends to have higher worldwide gross. In most cases gross 
    exceeded production cost. Common runtimes were between 100-140 minutes,
    and the most popular genres were 'Action' and 'Adventure'."),
  
)

