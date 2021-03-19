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
        # Upload buttons
        tags$h5("Upload the raw data:", style = "font-weight: bold;"),
        shinyFilesButton('Central', label='Select Central File...', title='Please select a file', multiple=FALSE, style='font-size:100%'),
        tags$span(style="display:inline-block; width: 10px;"),
        shinyFilesButton('Left', label='Select Left File...', title='Please select a file', multiple=FALSE, style='padding-right:23px; padding-left:23px; font-size:100%'),
        tags$span(style="display:inline-block; width: 10px;"),
        shinyFilesButton('Right', label='Select Right File...', title='Please select a file', multiple=FALSE, style='padding-right:18px; padding-left:18px; font-size:100%'),
        tags$br(),
        textOutput("filepath1"), 
        textOutput(outputId = "res_defaultValue"),
        textOutput("filepath2"), 
        textOutput("filepath3"), 
        tags$br(), 
        # Time input
        airDatepickerInput("starttime",
                           timepicker = TRUE,
                           label = "What time were the units turned on?:",
                           placeholder = NULL,
                           multiple = FALSE,
                           clearButton = TRUE,
                           
                           value = as.POSIXct(paste(Sys.Date(),'10:00', sep = " ")),
                           width = 300
        ),
        # Otheroptions
        selectInput("timeunit", "What are the input units of time?:", choices = c("s", "1 / 10", "1 / 100", "ms"), selected = "ms"),
        radioButtons("invertup", "Swap up/down:", choiceNames = c("No", "Yes"), choiceValues = c(1, -1), selected = 1),
        tags$hr(), 
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
 
