#' analyse_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_analyse_page_ui <- function(id){
  ns <- NS(id)
  tagList(
    
    #       ~ Tab 2 ---- "Analyse Data"------------------------------------------   
    
    tabItem(
      tabName = "Dashboard",
      # Acceleration plots
      fluidRow(
        tabBox(
          width = 12,
          tabPanel(
            status = "primary",
            title = "Accelerometry Graph - Central",
            withSpinner(dygraphOutput("Graph1", height = 190), type = 3, color.background = "white")
          ),
          tabPanel(
            status = "secondary",
            title = "Accelerometry Graph - L/R",
            withSpinner(dygraphOutput("Graph2", height = 190), type = 3, color.background = "white")
          )
        )
      ), 
      # Data entry boxes 
      fluidRow(
        tabBox(
          width = 12, height = 350,
          # Session info
          tabPanel(
            status = "primary",
            title = "Session/Drill Data",
            column(3,
                   h4("Enter Session Information"),
                   selectInput('sessiontype',
                               'Session Type:',
                               selected = 'Rehearsal',
                               choices =  sessiontypelist()
                   ),
                   uiOutput("select_athlete"),
                   textInput("durationoverride",
                             "Duration Override:",
                             value = "0"
                   )
            ),
            column(4, offset = 1,
                   br(),
                   br(),
                   textInput('sessionname',
                             'Session Name:'
                   ),
                   splitLayout(
                     textInput('rpe',
                               'RPE:',
                               value = 0
                     ),
                     br(),
                     textInput('position',
                               'Position:',
                               value = NA
                     ), cellWidths = c(100,10, 185)
                   ),
                   
                   textInput('comments',
                             'Comments:'
                   )
            ),
            column(4, offset = 0,
                   br(),
                   br(),
                   numericInput(
                     inputId = "sessionnumber",
                     label = "Session Number:",
                     value = 1,
                     step = 1
                   ),
                   
                   # Create action buttons
                   br(),
                   actionButton("addsession1",
                                "Add Session to Database",
                                width = 300
                   ),
                   br(),
                   uiOutput("clip"),
                   br(),
                   br(),
                   # actionButton("saveproc",
                   #              "Save Processed Data",
                   #              width = 300
                   # )
            )
          ),
          # Add athlete
          tabPanel(
            title = "Add New Athlete",
            column(3,
                   textInput('new_name',
                             'Name:'
                   ),
                   dateInput("new_dob",
                             "Date of Birth:"
                   ),
                   textInput('new_sex',
                             'Sex (single letter):'
                   ),
                   textInput('new_email',
                             'Email Address:'
                   )
                   
            ),
            column(
              width = 1,
              br(),
              actionButton("new_athlete",
                           "Add Athlete",
                           width = 100
              )
            )
          )
        )
      )          
    )
  )
}
    
#' analyse_page Server Function
#'
#' @noRd 
mod_analyse_page_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_analyse_page_ui("analyse_page_ui_1")
    
## To be copied in the server
# callModule(mod_analyse_page_server, "analyse_page_ui_1")
 
