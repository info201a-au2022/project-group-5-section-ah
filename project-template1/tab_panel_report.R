# tab_panel_report

library(shiny)
library("markdown")

tab_panel_report <-tabPanel(
  "Report",
  
  h1(strong("Report")),

  fluidRow(
    column(
      10,
      includeMarkdown("report.md")
    )
  )


)


