# Load libraries so they are available
library("shiny")

# Use source() to execute the `app_ui.R` and `app_server.R` files. These will
# define the UI value and server function respectively.
source("~/Documents/info201/projects/project-group-5-section-ah/shiny/app_ui.R")
source("~/Documents/info201/projects/project-group-5-section-ah/shiny/app_server.R")

# You will need to fill in the `app_ui.R` file to create the layout.
# Run the app through this file.

# Create a new `shinyApp()` using the loaded `ui` and `server` variables
shinyApp(ui = ui, server = server)