# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    
    h1(strong("Introduction")),
    p("INFO-201A"),
    p("Autumn 2022"),
    p("Group AH"),
    
    img(src = 'movie.jpg', style="width: 600px"),
    
    h2("Overview"),
    p("Movies are one the major forms of digital entertainment.
    From script to screen, thousands of people are involved, and the whole production 
    takes quite a while. As grand of a scale it is, the average movie budget ranges 
    in the millions. Major costs are spent on paying staff, CGI, special effects and 
    marketing. However, not all expensive movies are popular or rated highly among the 
    audience."),
    
    p("To investigate this deeper, we strove to discover how budget could impact 
    a movie’s overall ratings. This is a crucial question for people involved in movie 
    production because based on the chances of success, they are able to proceed from the 
    concept and idea brainstorming step to the budgeting, casting and filming step. By 
    compiling three datasets with categories such as genre, rating and revenue and creating
    multiple visuals, we hope to see a correlation between movie budget and rating."),
    
    h2("Research Questions"),
    p("1. How does the budget of a movie correlate with the overall success of said movie?"),
    p("2. Does a specific actor's presence correlate with the box office revenues of the movies they star in?"),
    p("3. How do the total profit and viewing numbers of a movie relate to its sequel?")
    
    
)
