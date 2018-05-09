

shiny::shinyApp(
  ui = shinyware:::ui_app,
  server = shinyware:::sw_app,
  options = list(
    port = 12324,
    launch.browser = TRUE
  )
)
