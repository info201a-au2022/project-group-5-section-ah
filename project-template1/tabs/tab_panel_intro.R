# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    p("Movies are one the major forms of digital entertainment.
    From script to screen, thousands of people are involved, and the whole production 
    takes quite a while. As grand of a scale it is, the average movie budget ranges 
    in the millions. Major costs are spent on paying staff, CGI, special effects and 
    marketing. However, not all expensive movies are popular or rated highly among the 
    audience. To investigate this deeper, we strove to discover *how budget could impact 
    a movie’s overall ratings.* This is a crucial question for people involved in movie 
    production because based on the chances of success, they are able to proceed from the 
    concept and idea brainstorming step to the budgeting, casting and filming step. By 
    compiling three datasets with categories such as genre, rating and revenue and creating
    multiple visuals, we hope to see a correlation between movie budget and rating.")
)
