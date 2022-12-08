# app_ui.R

library(shiny)
library(shinythemes)

source("tab_panel_intro.R")
source("tab_panel_chart1.R")
source("tab_panel_chart2.R")
source("tab_panel_chart3.R")
source("tab_panel_summary.R")
source("tab_panel_report.R")

ui <- navbarPage(
  theme = shinytheme("cosmo"),
  title = "Movies, Money, & More",
  position = "fixed-top",

  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("INFO-201A Autumn 2022 Group AH-5"),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # The three charts
  tab_panel_chart1,
  tab_panel_chart2,
  tab_panel_chart3,

  # The project summary
  tab_panel_summary,

  # The project report
  tab_panel_report
)
