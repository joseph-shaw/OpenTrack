#' upload_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_upload_page_ui <- function(id){
  ns <- NS(id)
  tagList(
 
    #       ~ Tab 1 ---- "Upload Data"-------------
      tabItem(
        tabName = "upload",
        tags$style(".box.bg-yellow { background-color: #FFFFFF !important; 
                 border-color: #e5e5e5 !important; border-radius: 1px; border: 1px solid #e0e0e0; 
                 box-shadow: 0px 1px 1px #e0e0e0; color: black !important;
                 padding: 100 px !important;
                 }"),
        tags$style(".box-body.bg-yellow { margin:0 !important; }"),
        br(),
        # Upload buttons
        fluidRow(
          box(
            background = "yellow", width = 12,
            column(width = 3,
            selectInput('athlete_count', "How many athletes? (2+ coming soon)", choices = 1, selected = 1, width = 500),
            ),
            column(width = 3,
            selectInput("time_unit", "What are the input units of time?:", choices = c("s", "1 / 10", "1 / 100", "ms"), selected = "ms", width = 500)
            ),
            column(width = 4,
                   selectInput('athlete_focus', "Which athlete's data do you want to view?", choices = 1:8, selected = 1, width = 500),
                   
            )
          )
        ),
        # Athlete 1 ----
        fluidRow(
          box(
            width = 12, title = "Athlete 1", background = "yellow",
            column(width = 3,
              uiOutput("athlete1", inline = T, width = 250)
            ),
            column(width = 1,
              shinyFilesButton('Central', label='Central', title='Please select a file', multiple=FALSE, style='font-size:100%')
            #),
            ,div(style="margin-bottom:10px")
            #column(width = 1,
              ,shinyFilesButton('Left', label='Left', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
            #),
            ,div(style="margin-bottom:10px")
            #column(width = 1,
              ,shinyFilesButton('Right', label='Right', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
            ),
            column(width = 1,
                   radioButtons("orientation", label = "Vertical Axis",
                                choices = list("Auto" = 0, "1" = 1, "2" = 2, "3" = 3), 
                                selected = 0),
            ),
            column(width = 2,
                   radioButtons("invertup", "Swap up/down:", choiceNames = c("No", "Yes"), choiceValues = c(1, -1), selected = 1),
            ),
            column(width = 3,
              airDatepickerInput("starttime", timepicker = TRUE, # Time input
                                label = "What time were the units turned on?:",
                                placeholder = NULL,
                                multiple = FALSE,
                                clearButton = TRUE,
                                value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
                                width = 300
              )
            )
          )
        ),
    #    # Athlete 2 ----
    #    fluidRow( id = "athlete_upload_2",
    #      box(
    #        width = 12, title = "Athlete 2", background = "yellow",
    #        column(width = 3,
    #               uiOutput("athlete2", inline = T, width = 250)
    #        ),
    #        column(width = 2,
    #               shinyFilesButton('Central2', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%')
    #        ),
    #        column(width = 2,
    #               shinyFilesButton('Left2', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
    #        ),
    #        column(width = 2,
    #               shinyFilesButton('Right2', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
    #        ),
    #        column(width = 3,
    #               airDatepickerInput("starttime2", timepicker = TRUE, # Time input
    #                                  label = "What time were the units turned on?:",
    #                                  placeholder = NULL,
    #                                  multiple = FALSE,
    #                                  clearButton = TRUE,
    #                                  value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
    #                                  width = 300
    #               )
    #        )
    #      )
    #    ),
    #    # Athlete 3 ----
    #    fluidRow( id = "athlete_upload_3",
    #              box(
    #                width = 12, title = "Athlete 3", background = "yellow",
    #                column(width = 3,
    #                       uiOutput("athlete3", inline = T, width = 250)
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Central3', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Left3', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Right3', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
    #                ),
    #                column(width = 3,
    #                       airDatepickerInput("starttime3", timepicker = TRUE, # Time input
    #                                          label = "What time were the units turned on?:",
    #                                          placeholder = NULL,
    #                                          multiple = FALSE,
    #                                          clearButton = TRUE,
    #                                          value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
    #                                          width = 300
    #                       )
    #                )
    #              )
    #    ),
    #    # Athlete 4 ----
    #    fluidRow( id = "athlete_upload_4",
    #              box(
    #                width = 12, title = "Athlete 4", background = "yellow",
    #                column(width = 3,
    #                       uiOutput("athlete4", inline = T, width = 250)
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Central4', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Left4', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Right4', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
    #                ),
    #                column(width = 3,
    #                       airDatepickerInput("starttime4", timepicker = TRUE, # Time input
    #                                          label = "What time were the units turned on?:",
    #                                          placeholder = NULL,
    #                                          multiple = FALSE,
    #                                          clearButton = TRUE,
    #                                          value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
    #                                          width = 300
    #                       )
    #                )
    #              )
    #    ),
    #    # Athlete 5 ----
    #    fluidRow( id = "athlete_upload_5",
    #              box(
    #                width = 12, title = "Athlete 5", background = "yellow",
    #                column(width = 3,
    #                       uiOutput("athlete5", inline = T, width = 250)
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Central5', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Left5', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Right5', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
    #                ),
    #                column(width = 3,
    #                       airDatepickerInput("starttime5", timepicker = TRUE, # Time input
    #                                          label = "What time were the units turned on?:",
    #                                          placeholder = NULL,
    #                                          multiple = FALSE,
    #                                          clearButton = TRUE,
    #                                          value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
    #                                          width = 300
    #                       )
    #                )
    #              )
    #    ),
    #    # Athlete 6 ----
    #    fluidRow( id = "athlete_upload_6",
    #              box(
    #                width = 12, title = "Athlete 6", background = "yellow",
    #                column(width = 3,
    #                       uiOutput("athlete6", inline = T, width = 250)
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Central6', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Left6', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Right6', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
    #                ),
    #                column(width = 3,
    #                       airDatepickerInput("starttime6", timepicker = TRUE, # Time input
    #                                          label = "What time were the units turned on?:",
    #                                          placeholder = NULL,
    #                                          multiple = FALSE,
    #                                          clearButton = TRUE,
    #                                          value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
    #                                          width = 300
    #                       )
    #                )
    #              )
    #    ),
    #    # Athlete 7 ----
    #    fluidRow( id = "athlete_upload_7",
    #              box(
    #                width = 12, title = "Athlete 7", background = "yellow",
    #                column(width = 3,
    #                       uiOutput("athlete7", inline = T, width = 250)
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Central7', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Left7', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Right7', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
    #                ),
    #                column(width = 3,
    #                       airDatepickerInput("starttime7", timepicker = TRUE, # Time input
    #                                          label = "What time were the units turned on?:",
    #                                          placeholder = NULL,
    #                                          multiple = FALSE,
    #                                          clearButton = TRUE,
    #                                          value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
    #                                          width = 300
    #                       )
    #                )
    #              )
    #    ),
    #    # Athlete 8 ----
    #    fluidRow( id = "athlete_upload_8",
    #              box(
    #                width = 12, title = "Athlete 8", background = "yellow",
    #                column(width = 3,
    #                       uiOutput("athlete8", inline = T, width = 250)
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Central8', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Left8', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%')
    #                ),
    #                column(width = 2,
    #                       shinyFilesButton('Right8', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%')
    #                ),
    #                column(width = 3,
    #                       airDatepickerInput("starttime8", timepicker = TRUE, # Time input
    #                                          label = "What time were the units turned on?:",
    #                                          placeholder = NULL,
    #                                          multiple = FALSE,
    #                                          clearButton = TRUE,
    #                                          value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
    #                                          width = 300
    #                       )
    #                )
    #              )
    #    ),
        # Process Button ----

        actionButton("processraw", "Process Data", width = 200, style='padding-top:0px; padding-bottom:0px; padding-left:10px; font-size:100%'),
        #actionButton("saveraw", "Save Raw Data", width = 200) 
      )
    )
  
}
    
#' upload_page Server Function
#'
#' @noRd 
mod_upload_page_server <- function(input, output, session){
  ns <- session$ns
 
  # Filepaths --------------------------------------------------------------
  
  # File select 
  
  shinyFiles::shinyFileChoose(input, 'Central', root=roots, filetypes='csv')
  shinyFiles::shinyFileChoose(input, 'Left', root=roots, filetypes='csv')
  shinyFiles::shinyFileChoose(input, 'Right', root=roots, filetypes='csv')
  
  # ~ Output filepaths ------------------------------------------------------
  
  output$filepath1 <- renderText({ 
    if(is.na(parseFilePaths(roots = roots,input$Central)$datapath[1])){NULL
    }else(
      paste("Central:",
            parseFilePaths(roots = roots,input$Central)$datapath[1])
    )
  })
  
  output$filepath2 <- renderText({ 
    if(is.na(parseFilePaths(roots = rootsinput$Left)$datapath[1])){NULL
    }else(
      paste("Left:",
            parseFilePaths(roots = roots,input$Left)$datapath[1])
    )
  })
  
  output$filepath3 <- renderText({ 
    if(is.na(parseFilePaths(roots = roots,input$Right)$datapath[1])){NULL
    }else(
      paste("Right:",
            parseFilePaths(roots = roots,input$Right)$datapath[1])
    )
  })
  
  
  
  
}
    
## To be copied in the UI
# mod_upload_page_ui("upload_page_ui_1")
    
## To be copied in the server
# callModule(mod_upload_page_server, "upload_page_ui_1")
 
