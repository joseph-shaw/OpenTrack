#' longitudinal_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_longitudinal_page_ui <- function(id){
  ns <- NS(id)
  tagList(
 
    # Page 5 - Longitudinal Analysis
    tabItem(
      tabName = "Longitudinal_Analysis",
      tags$style(".box.bg-yellow { background-color: #FFFFFF !important; 
                 border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; 
                 box-shadow: 0px 1px 1px #e0e0e0; color: black !important;
                 padding: 100 px !important;
                 }"),
      tags$style(".box-body.bg-yellow { margin:0 !important; }"),
      fluidRow(
        br(),
        box(
          width = 3, height = 102,  background = "yellow",
          uiOutput("select_athlete2"),
        ),
        box(
          background = "yellow", width = 5,
          uiOutput("date_range")
        ),
        box(
          background = "yellow", width = 2,height = 102,
          radioButtons("time_grouping", label = NULL, 
                             choices = list("Days" = 1, "Weeks" = 2),
                             selected = 1)
        )
      ),
      fluidRow(
        box(
          width = 6, height = "auto",  background = "yellow",
          plotlyOutput("longplot1", height = "250px"),
          br(),
          radioButtons("variables", label = NULL, 
                             choices = list("Jumps" = 1, "Impacts" = 2, "PlayerLoad" = 3, "Impact Load (linear)" = 4),
                             selected = 1, inline = T)
        ),
        box(
          width = 6, height = "auto",  background = "yellow",
          plotlyOutput("longplot2", height = "250px"),
          br(),
          radioButtons("variables2", label = NULL, 
                       choices = list("s-RPE" = 1),
                       selected = 1, inline = T)
        )
      ),
      fluidRow(
        box(
          title = "Impact Load Asymmetry",
          width = 12, height = "auto",  background = "yellow", collapsible = TRUE, collapsed = T,
          div(style="display: inline-block;padding:60; width: 1150px;overflow-x: scroll",
              formattable::formattableOutput("longtable0")
          ),
          plotlyOutput("longplot3", height = "250px")
        )
      ),
      fluidRow(
        box(
          title = "Raw Session Data",
          width = 12, height = "auto",  background = "yellow", collapsible = TRUE, collapsed = T,
          formattable::formattableOutput("longtable1")
        )
      )
    )
  )
}
    
#' longitudinal_page Server Function
#'
#' @noRd 
mod_longitudinal_page_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_longitudinal_page_ui("longitudinal_page_ui_1")
    
## To be copied in the server
# callModule(mod_longitudinal_page_server, "longitudinal_page_ui_1")
 
