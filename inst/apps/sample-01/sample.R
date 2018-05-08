library(shinyware)

header <- sw_dashboardHeader("Test 123", logo = "inia.jpg", 
                             shinydashboard::dropdownMenu(
                               type = "notifications", 
                               icon = shiny::icon("question-circle"),
                               badgeStatus = NULL,
                               headerText = "See also:",
                               
                               shinydashboard::notificationItem("shiny", icon = icon("file"),
                                                                href = "http://shiny.rstudio.com/"),
                               shinydashboard::notificationItem("shinydashboard", icon = icon("file"),
                                                                href = "https://rstudio.github.io/shinydashboard/")
                             )
                             )


sidebar <- shinydashboard::dashboardSidebar()

sv_app <- function(input, output, session) {}

body <- shinydashboard::dashboardBody()

ui_app <- shinydashboard::dashboardPage(
  skin = "green", header, sidebar,body
)

shiny::shinyApp(
  ui = ui_app,
  server = sv_app,
  options = list(
    port = 12324,
    launch.browser = TRUE
  )
)
