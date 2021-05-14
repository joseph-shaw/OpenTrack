#' sql_buttons UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_sql_buttons_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' sql_buttons Server Function
#'
#' @noRd 
mod_sql_buttons_server <- function(input, output, session){
  ns <- session$ns
 
  # ~ ~ Add session  ------------------------------------------------------
  # 1
  observeEvent(input$addsession1, {
    data$df <- data$df %>% 
      mutate(
        session.type = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessiontype, session.type),
        session.name = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessionname, session.name),
        session.num = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessionnumber, session.num)
      )
    if(use.sql()){
      dbWriteTable(conn = conn, "training_load", summary(), append = TRUE) 
      db$db <- dbGetQuery(conn, "Select * from training_load;")
      dbWriteTable(conn = conn, "raw_training_load",
                   Window() %>% 
                     mutate(
                       time = as.POSIXct(input$Graph1_date_window[1]) + as.numeric(time),
                       row_number = seq(1, nrow(Window()), 1)/100
                     ),
                   append = TRUE) 
      
    }else{
      new.row <- summary()
      new.row$session_id <- max(db$db$session_id, na.rm = T) +1
      db$db <- plyr::rbind.fill(db$db, new.row) %>% 
        filter(!is.na(session_id))
      write.csv(db$db, "database.csv", row.names = F)
      folder <- paste0("clipped-sessions/", input$select_athlete)
      filename <- paste0(folder, "/", paste(input$select_athlete, input$sessiontype, input$sessionname, input$sessionnumber, gsub(":", "-", substr(input$Graph1_date_window[1], 12, 16)), ".csv"))
      dir.create(folder, showWarnings = FALSE)
      write.csv(
        Window() %>% 
          mutate(
            time = as.POSIXct(input$Graph1_date_window[1]) + as.numeric(time),
            row_number = seq(1, nrow(Window()), 1)/100
          ),
        filename, row.names = F)
    }
    
  })
  
  # 2
  observeEvent(input$addsession2, {
    data$df <- data$df %>% 
      mutate(
        session.type = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessiontype, session.type),
        session.name = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessionname, session.name),
        session.num = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessionnumber, session.num)
      )
    if(use.sql()){
      dbWriteTable(conn = conn, "training_load", summary(), append = TRUE) 
      db$db <- dbGetQuery(conn, "Select * from training_load;")
      dbWriteTable(conn = conn, "raw_training_load",
                   Window() %>% 
                     mutate(
                       time = as.POSIXct(input$Graph1_date_window[1]) + as.numeric(time),
                       row_number = seq(1, nrow(Window()), 1)/100
                     ),
                   append = TRUE) 
      
    }else{
      new.row <- summary()
      new.row$session_id <- max(db$db$session_id, na.rm = T) +1
      db$db <- plyr::rbind.fill(db$db, new.row) %>% 
        filter(!is.na(session_id))
      write.csv(db$db, "database.csv", row.names = F)
      folder <- paste0("clipped-sessions/", input$select_athlete)
      filename <- paste0(folder, "/", paste(input$select_athlete, input$sessiontype, input$sessionname, input$sessionnumber, gsub(":", "-", substr(input$Graph1_date_window[1], 12, 16)), ".csv"))
      dir.create(folder, showWarnings = FALSE)      
      write.csv(
        Window() %>% 
          mutate(
            time = as.POSIXct(input$Graph1_date_window[1]) + as.numeric(time),
            row_number = seq(1, nrow(Window()), 1)/100
          ),
        filename, row.names = F)
    }
  })  
  
  # ~ ~ Delete row  ------------------------------------------------------
  observeEvent(input$droprowbutton, {
    if(use.sql()){
      dbSendStatement(conn, paste0("DELETE FROM  training_load WHERE session_id = ", input$rowref))
      db$db <- dbGetQuery(conn, "Select * from training_load;")
    }else{
      db$db <- db$db %>% 
        filter(session_id != input$rowref)
      write.csv(db$db, "database.csv", row.names = F)
    }
  })
  
  # ~ ~ Edit cell  -------------------------------------------------------
  observeEvent(input$SQLinputbutton, {
    if(use.sql()){
      dbSendStatement(conn, paste0("UPDATE training_load SET ", input$columnref, " = '", input$newinput, "' WHERE session_id = ", input$rowref)) 
      db$db <- dbGetQuery(conn, "Select * from training_load;")
    }else{
      db$db[input$rowref, input$columnref] <- input$newinput
      write.csv(db$db, "database.csv", row.names = F)
    }
  })
  
  # ~ ~ Download db csv --------------------------------------------------
  observeEvent(input$db_csv, {
    write.csv(
      db$db,
      paste("database_export", Sys.Date(), ".csv"),
      row.names = F
    )
  })
  
  
  
  
  
  
}
    
## To be copied in the UI
# mod_sql_buttons_ui("sql_buttons_ui_1")
    
## To be copied in the server
# callModule(mod_sql_buttons_server, "sql_buttons_ui_1")
 
