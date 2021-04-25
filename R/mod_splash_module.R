#' splash_module UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_splash_module_ui <- function(id){
  ns <- NS(id)
  tagList(
    tags$head(tags$style(HTML(".content { padding-top: 0;}"))), # This changes the padding for all tabs
    
    # Module for splash screen
    fluidRow(
      div(id = ns("splash_screen"),
      HTML(
        '<img src="www/ot_splash.gif" class = "center" width = "50%" style = "display: block; margin-left: auto; margin-right: auto;">'
        )
      )
      #div(id = ns("splash_screen"), img(src = "www/splash-t.png"),
      #    style = "padding:0px; max-width: 10%; width: 10%; height: 10%")
      )
  )
}
    
#' splash_module Server Function
#'
#' @noRd 
mod_splash_module_server <- function(input, output, session){
  ns <- session$ns
 
  # Module for splash screen
    Sys.sleep(1)
    delay(5, hide("splash_screen", anim = F, time = 0)) #animType = "fade", 
  
  
}
    
## To be copied in the UI
# mod_splash_module_ui("splash_module_ui_1")
    
## To be copied in the server
# callModule(mod_splash_module_server, "splash_module_ui_1")
 
