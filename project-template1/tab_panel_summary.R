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
  p("Put summary findings for Visual 1. Then copy paste it under ‘Findings’ in the report.md"),
  
  h2("Movie Finder"),
  p("Put summary findings for Visual 2. Then copy paste it under ‘Findings’ in the report.md"),
  
  h2("Worldwide Movie Gross"),
  img(src = 'chart3.png', style="width: 600px"),
  p("Overall, there is positive correlation between worldwide movie gross
    and the features of interest. This is feasible as higher movie rank and 
    domestic gross naturally increases the worldwide gross. Higher production
    cost also tends to have higher worldwide gross. In most cases gross 
    exceeded production cost. Common runtimes were between 100-140 minutes,
    and the most popular genres were 'Action' and 'Adventure'."),
  
)

