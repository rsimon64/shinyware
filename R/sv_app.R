

sv_app <- function(input, output, session) {}

sw_app <- function(input, output, session) {
  sv_app(input, output, session)
  
  session$onSessionEnded(function() {
    shiny::stopApp() 
  })
  
}
