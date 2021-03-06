#' squad_dashboard UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_squad_dashboard_ui <- function(id){
  ns <- NS(id)
  tagList(
    # Page 5 - Squad Dashboard
    tabItem(
      tabName = "Squad_Dashboard",
      tags$style(".box.bg-yellow { background-color: #FFFFFF !important; 
                 border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; 
                 box-shadow: 0px 1px 1px #e0e0e0; color: black !important;
                 padding: 100 px !important;
                 }"),
      tags$style(".box-body.bg-yellow { margin:0 !important; }"),
      fluidRow(
        br(),
        box(
          width = 4, height = 102,  background = "yellow",
          uiOutput("select_athlete3"),
        ),
        box(
          background = "yellow", width = 4,
          uiOutput("date_range2")
        ),
        box(
          background = "yellow", width = 2,height = 102,
          radioButtons("time_grouping2", label = NULL, 
                       choices = list("Days" = 1, "Weeks" = 2),
                       selected = 1)
        ),
        box(
          background = "yellow", width = 2,height = 102,
          actionButton("updatesquad", "Update Table")
        )
      ),
      fluidRow(
        box(
          title = "Squad Training Load", footer = "The table may take a few seconds to load with large squads and/or date ranges",
          width = 12, height = "auto",  background = "yellow", collapsible = FALSE, collapsed = T,
          radioButtons("select_squad_variable", label = NULL, inline = T,
                       choices = list("PlayerLoad" = 1, "Impact Load" = 2, "Session RPE" = 3),
                       selected = 1),
          div(style="display: inline-block;padding:0; width: 1150px;overflow-x: scroll",
          withSpinner( formattable::formattableOutput("squadtable") )
          )
        )
      )
    )
  )
}
    
#' squad_dashboard Server Function
#'
#' @noRd 
mod_squad_dashboard_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_squad_dashboard_ui("squad_dashboard_ui_1")
    
## To be copied in the server
# callModule(mod_squad_dashboard_server, "squad_dashboard_ui_1")
 
