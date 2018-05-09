

sv_app <- function(input, output, session) {}

sw_app <- function(input, output, session) {
  
  output$notificationMenu <- shinydashboard::renderMenu({
   
    shinydashboard::dropdownMenu(type = "notifications", 
                 icon = shiny::icon("question-circle"),
                 badgeStatus = NULL,
                 headerText = "See also:",
                 shinydashboard::notificationItem("shiny", icon = shiny::icon("file"),
                                                 href = "http://shiny.rstudio.com/")
    )
   })
  
  output$messageMenu <- shinydashboard::renderMenu({
    
    shinydashboard::dropdownMenu(type = "message", 
                                 shinydashboard::messageItem("app", message = "Hi" )
    )
    
  })
  
  output$taskMenu <- shinydashboard::renderMenu({
    
    shinydashboard::dropdownMenu(type = "task", 
                                 shinydashboard::taskItem("Your next task is: ")
    )
    
  })
  
  sv_app(input, output, session)
  
  
  
  session$onSessionEnded(function() {
    shiny::stopApp() 
  })
  
}
