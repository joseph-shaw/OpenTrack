#' database_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_database_page_ui <- function(id){
  ns <- NS(id)
  tagList(
 
    #       ~ Tab 4 ---- "Database"-----------------------------------------------------------------------
    tabItem(
      tabName = "Database",
      #     Database DataTable 
      tags$style(".box.bg-yellow { background-color: #FFFFFF !important; 
                 border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; 
                 box-shadow: 0px 1px 1px #e0e0e0; color: black !important;
                 padding: 100 px !important;
                 }"),
      tags$style(".box-body.bg-yellow { margin:0 !important; }"),
      fluidRow(
        br(),
        box(height = "auto", width = 12,   background = "yellow",
            h5("Database"),
            div(style="display: inline-block;padding:0; width: 1150px;overflow-x: scroll",
                #tableOutput("summarydata12" #, height = 300
                dataTableOutput("table" #, height = "auto"
                )
            )
        )
      ),
      #     New Row 
      fluidRow(
        box(height = "auto", width = 12,  background = "yellow",
            h5("New Row"),
            #width = 12,
            div(style="display: inline-block;padding:0; width: 1150px;overflow-x: scroll",
                dataTableOutput("summarydata1") #
            )
        )
      ),
      #     SQL Buttons 
      fluidRow(
        box(
          h5("Add Session:"),
          width = 2,  background = "yellow", height = 106,
          actionButton("addsession2", "Add Session", width = 150)
        ),
        box(
          h5("Session ID:"),
          width = 2,  background = "yellow",
          textInput("rowref", label = NULL, width = 150)
        ),
        box(
          h5("Column reference:"),
          width = 2,  background = "yellow",
          textInput("columnref", label = NULL, width = 150)
        ),
        box(
          h5("New data to input:"),
          width = 2,  background = "yellow",
          textInput("newinput", label = NULL, width = 150)
        ),
        box(
          h5("Delete whole row:"),
          width = 2,  background = "yellow", height = 106,
          actionButton("droprowbutton",
                       "Delete row",
                       width = 150
          )
        ),
        box(
          h5("Insert new data:"),
          width = 2,  background = "yellow", height = 106,
          actionButton("SQLinputbutton",
                       "Insert data",
                       width = 150
          )
        )
      )
    )
  )
}
    
#' database_page Server Function
#'
#' @noRd 
mod_database_page_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_database_page_ui("database_page_ui_1")
    
## To be copied in the server
# callModule(mod_database_page_server, "database_page_ui_1")
 
