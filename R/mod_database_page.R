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
      fluidRow(
        box(height = "auto", width = 12,
            h5("Database"),
            div(style="display: inline-block;padding:0; width: 1200px;overflow-x: scroll",
                #tableOutput("summarydata12" #, height = 300
                dataTableOutput("table" #, height = "auto"
                )
            )
        )
      ),
      #     New Row 
      fluidRow(
        box(height = "auto", width = 12,
            h5("New Row"),
            #width = 12,
            div(style="display: inline-block;padding:0; width: 1200px;overflow-x: scroll",
                dataTableOutput("summarydata1") #
            )
        )
      ),
      #     SQL Buttons 
      fluidRow(
        box(
          h5("Add Session:"),
          width = 2,
          actionButton("addsession2", "Add Session", width = 150)
        ),
        box(
          h5("Session ID:"),
          width = 2,
          textInput("rowref", label = NULL, width = 150)
        ),
        box(
          h5("Column reference:"),
          width = 2,
          textInput("columnref", label = NULL, width = 150)
        ),
        box(
          h5("New data to input:"),
          width = 2,
          textInput("newinput", label = NULL, width = 150)
        ),
        box(
          h5("Delete whole row:"),
          width = 2,
          actionButton("droprowbutton",
                       "Delete row",
                       width = 150
          )
        ),
        box(
          h5("Insert new data:"),
          width = 2,
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
 
