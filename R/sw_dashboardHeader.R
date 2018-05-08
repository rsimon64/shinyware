sw_title <- function(title) {
  shiny::tags$div(style="color:white;text-align:left;vertical-align:middle;display:inline-block;font-size: 30px;font-size: 1.5vw;padding-left: 5px",
    shiny::HTML(paste0(title)))
}

dashboardHeader2 <- function(..., title = NULL, disable = FALSE, title.navbar=NULL, .list = NULL) {
  items <- c(list(...), .list)
  shiny::tags$header(class = "main-header",
              style = if (disable) "display: none;",
              shiny::span(class = "logo", title),
              shiny::tags$nav(class = "navbar navbar-static-top", role = "navigation",
                       # Embed hidden icon so that we get the font-awesome dependency
                       shiny::span(shiny::icon("bars"), style = "display:none;"),
                       # Sidebar toggle button
                       shiny::a(href="#", class="sidebar-toggle", `data-toggle`="offcanvas",
                         role="button",
                         shiny::span(class="sr-only", "Toggle navigation")
                       ),title.navbar,
                       shiny::div(class = "navbar-custom-menu",
                                  shiny::tags$ul(class = "nav navbar-nav",
                                   items
                           )
                       )
              )
  )
}



#' sw_dashboardHeader
#'
#' @param title string; default: Title
#' @param logo image name; image mast be in www subdirectory of app dir
#' @param add_tags additional tags for header as tagList, e.g. notification
#' @references https://github.com/rstudio/shinydashboard/issues/41
#' @return shiny object
#' @export
#'
sw_dashboardHeader <- function(title = "Title", logo = NULL, add_tags = NULL) {
  title.navbar.html <- sw_title(title)
  logo <- shiny::img(src=logo, height = 45)
  
  dashboardHeader2(title = logo, title.navbar = title.navbar.html,
                   add_tags
  )
}
