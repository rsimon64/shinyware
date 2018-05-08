header <- sw_dashboardHeader("Test 123", logo = "inia.jpg", 
                             shinydashboard::dropdownMenu(
                               type = "notifications", 
                               icon = shiny::icon("question-circle"),
                               badgeStatus = NULL,
                               headerText = "See also:",
                               
                               shinydashboard::notificationItem("shiny", icon = shiny::icon("file"),
                                                                href = "http://shiny.rstudio.com/"),
                               shinydashboard::notificationItem("shinydashboard", icon = shiny::icon("file"),
                                                                href = "https://rstudio.github.io/shinydashboard/")
                             )
)


sidebar <- shinydashboard::dashboardSidebar()



body <- shinydashboard::dashboardBody()

ui_app <- shinydashboard::dashboardPage(
  skin = "green", header, sidebar, body
)
