#' dashboard_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_dashboard_page_ui <- function(id){
  ns <- NS(id)
  tagList(
 
    #       ~ Tab 3 ---- "Dashboard"-----------------------------------------------------------------------
    tabItem(
      tabName = "Dashboard2",
      fluidRow(
        valueBoxOutput("value_box.1", width = 2),
        valueBoxOutput("value_box.2", width = 2),
        valueBoxOutput("value_box.3", width = 2),
        valueBoxOutput("value_box.4", width = 2),
        valueBoxOutput("value_box.5", width = 2),
        valueBoxOutput("value_box.6", width = 2)
      ),
      fluidRow(
        column(6,plotlyOutput("dashboardplot1", width="600px",height="300px")),  
        column(6,plotlyOutput("dashboardplot2", width="600px",height="300px"))
        
      )
    )   
    
    
    
  )
}
    
#' dashboard_page Server Function
#'
#' @noRd 
mod_dashboard_page_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_dashboard_page_ui("dashboard_page_ui_1")
    
## To be copied in the server
# callModule(mod_dashboard_page_server, "dashboard_page_ui_1")
 
