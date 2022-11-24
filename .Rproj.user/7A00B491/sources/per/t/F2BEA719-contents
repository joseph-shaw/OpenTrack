#' session_dashboard UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_session_dashboard_ui <- function(id){
  ns <- NS(id)
  tagList(
    #       ~ Session Dashboard Tab -----------------------------------------------------------------------
    tabItem(
      tabName = "Session_Dashboard",
      tags$style(".small-box.bg-yellow { background-color: #FFFFFF !important; border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; box-shadow: 0px 1px 1px #e0e0e0; color: black !important; }"),
      tags$style("h3 { color: #77889C !important; font-family: Arial }"),
      tags$style("p { color: #77889C !important; }"),
      tags$style(".box.bg-yellow { background-color: #FFFFFF !important; 
                 border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; 
                 box-shadow: 0px 1px 1px #e0e0e0; color: black !important;
                 padding: 100 px !important;
                 }"),
      tags$style(".box-body.bg-yellow { margin:0 !important; }"),
      
      fluidRow(
        br(),
        box(
          width = 2, height = 102,  background = "yellow",
          uiOutput("select_athlete4"),
        ),
        box(
          background = "yellow", width = 2, height = 102,
          uiOutput("select_date")
        ),
        box(
          background = "yellow", width = 4, height = 102,
          uiOutput("select_session")
        ),
        box(
          background = "yellow", width = 2, height = 102,
          actionButton("updatesession", "Update Session")
          
        )#,
       # textOutput("test") # for troubleshooting
      ),
      
      fluidRow(
        br(),
        valueBoxOutput("value_box.7", width = 2),
        valueBoxOutput("value_box.8", width = 2),
        valueBoxOutput("value_box.9", width = 2),
        valueBoxOutput("value_box.10", width = 2),
        valueBoxOutput("value_box.11", width = 2),
        valueBoxOutput("value_box.12", width = 2)
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
          plotlyOutput("sessionplot1", height="300px")
        ),
        box(
          width = 6, background = "yellow",
          plotlyOutput("sessionplot2", height="300px")
        )
      )
    ) 
  )
}
    
#' session_dashboard Server Function
#'
#' @noRd 
mod_session_dashboard_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_session_dashboard_ui("session_dashboard_ui_1")
    
## To be copied in the server
# callModule(mod_session_dashboard_server, "session_dashboard_ui_1")
 
