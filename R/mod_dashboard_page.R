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
      tags$style(".small-box.bg-yellow { background-color: #FFFFFF !important; border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; box-shadow: 0px 1px 1px #e0e0e0; color: black !important; }"),
      tags$style("h3 { color: #77889C !important; font-family: Arial }"),
      tags$style("p { color: #77889C !important; }"),
      

      fluidRow(
        br(),
        valueBoxOutput("value_box.1", width = 2),
        valueBoxOutput("value_box.2", width = 2),
        valueBoxOutput("value_box.3", width = 2),
        valueBoxOutput("value_box.4", width = 2),
        valueBoxOutput("value_box.5", width = 2),
        valueBoxOutput("value_box.6", width = 2)
      ),
      tags$style(".box.bg-yellow { background-color: #FFFFFF !important; 
                 border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; 
                 box-shadow: 0px 1px 1px #e0e0e0; color: black !important;
                 padding: 100 px !important;
                 }"),
      tags$style(".box-body.bg-yellow { margin:0 !important; }"),
      
      fluidRow(
        box(
          width = 6, background = "yellow",
          plotlyOutput("dashboardplot1", height="300px")
        ),
        box(
          width = 6, background = "yellow",
          plotlyOutput("dashboardplot2", height="300px")
        )
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
 
