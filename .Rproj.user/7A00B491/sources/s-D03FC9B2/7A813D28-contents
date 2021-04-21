#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @import tidyverse
#' @import tidyr
#' @import DT
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  callModule(mod_upload_page_server, "upload_page_ui_1")
  callModule(mod_analyse_page_server, "analyse_page_ui_1")
  callModule(mod_dashboard_page_server, "dashboard_page_ui_1")
  callModule(mod_database_page_server, "database_page_ui_1")

# Options -----------------------------------------------------------------
  options(shiny.maxRequestSize = 70*1024^3,
          browser = "C:/Program Files/Mozilla Firefox/firefox.exe",
          shiny.usecairo=T)
  
  # ~ Load SQL db -----------------------------------------------------------
  sql <- read.csv("settings/sql.csv")
  
  
  if(use.sql()){
    conn <- DBI::dbConnect(odbc::odbc(),
                           Driver   = sql$Driver, 
                           Server   = sql$Server, 
                           Database = sql$Database,
                           #Trusted_Connection = "True",
                           UID      = sql$UID, 
                           PWD      = rstudioapi::askForPassword("Database password") #sql$PWD     
                           #Port     = 1433
    )
  }
  
  # ~ ~ Add session  ------------------------------------------------------
  # 1
  observeEvent(input$addsession1, {
    data$df <- data$df %>% 
      mutate(
        session.type = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessiontype, session.type),
        session.name = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessionname, session.name),
        session.num = ifelse(row_number > Time()[1] & row_number < Time()[2], input$sessionnumber, session.num)
      )
    raw_data <- Window() %>% 
      mutate(
        time = as.POSIXct(as.POSIXct(input$Graph1_date_window[1]) + as.numeric(time)),
        row_number = seq(1, nrow(Window()), 1)/100
      )
    n <- colnames(raw_data)
    colnames(raw_data) <-  gsub("\\.", "_", n)

    
    if(use.sql()){
      dbWriteTable(conn = conn, "training_load", summary() , append = TRUE) 
      db$db <- dbGetQuery(conn, "Select * from training_load;")
      dbWriteTable(conn = conn, "raw_training_load", raw_data, append = TRUE) 
    }else{
      new.row <- summary()
      #new.row$session_id <- max(as.numeric(db$db$session_id), na.rm = T) +1
      db$db <- plyr::rbind.fill(db$db, new.row) %>% 
        filter(!is.na(session_id))
      write.csv(db$db, "database.csv", row.names = F)
      folder <- paste0("clipped-sessions/", input$select_athlete)
      filename <- paste0(folder, "/", paste(input$select_athlete, input$sessiontype, input$sessionname, input$sessionnumber, gsub(":", "-", substr(input$Graph1_date_window[1], 12, 16)), ".csv"))
      dir.create(folder, showWarnings = FALSE)
      write.csv(
        raw_data,
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
    raw_data <- Window() %>% 
      mutate(
        time = as.POSIXct(as.POSIXct(input$Graph1_date_window[1]) + as.numeric(time)),
        row_number = seq(1, nrow(Window()), 1)/100
      )
    n <- colnames(raw_data)
    colnames(raw_data) <-  gsub("\\.", "_", n)
    
    
    if(use.sql()){
      dbWriteTable(conn = conn, "training_load", summary() , append = TRUE) 
      db$db <- dbGetQuery(conn, "Select * from training_load;")
      dbWriteTable(conn = conn, "raw_training_load", raw_data, append = TRUE) 
    }else{
      new.row <- summary()
      #new.row$session_id <- max(as.numeric(db$db$session_id), na.rm = T) +1
      db$db <- plyr::rbind.fill(db$db, new.row) %>% 
        filter(!is.na(session_id))
      write.csv(db$db, "database.csv", row.names = F)
      folder <- paste0("clipped-sessions/", input$select_athlete)
      filename <- paste0(folder, "/", paste(input$select_athlete, input$sessiontype, input$sessionname, input$sessionnumber, gsub(":", "-", substr(input$Graph1_date_window[1], 12, 16)), ".csv"))
      dir.create(folder, showWarnings = FALSE)
      write.csv(
        raw_data,
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
  
  # ~ Load TL data into reactive value  -----------------------------------
  db <- reactiveValues(
    db = NULL
  )
  
  # Load data
  if(use.sql()){
    db$db <- dbGetQuery(conn, "Select * from training_load;")  
  }else{
    db$db <- read.csv("database.csv")
  }
  
  # Create datatable
  output$table <- renderDataTable({ 
    db$db
  },  
  options = list(
    lengthMenu = list(
      c(3, 4, 5, 6, 10, -1),
      c('3', '4', '5', '6', '10', 'All')
      ),
    pageLength = 3,
    filter = 'top',
    server = TRUE,
    searchable = FALSE,
    searching = F
    
    )
  )
                                
    
  
  
  # ~ Load athlete data into reactive value  ------------------------------
  
  athletes <- reactiveValues(
    athletes = NULL
  )
  
  # Load data
  if(use.sql()){
    athletes$athletes <- as.vector( dbGetQuery(conn, "Select athlete_name from athletes;") )
  }else{
    athletes$athletes <-  read.csv("settings/athletes.csv")[,1]
  }
  
  # Create dropdown
  output$select_athlete  <- renderUI({
    selectInput('select_athlete',
                label ='Select Athlete',
                choices=athletes$athletes,
                selected = NULL, multiple = FALSE)
  })
  
  # Add new athlete
  observeEvent(input$new_athlete, {
    athlete_details <- data.frame(
      athlete_name = input$new_name,
      sex  = input$new_sex,
      dob = input$new_dob,
      email_address = input$new_email
    )
    if(use.sql()){
      dbWriteTable(conn = conn, "athletes", athlete_details, append = TRUE) 
      athletes$athletes <- as.vector( dbGetQuery(conn, "Select athlete_name from athletes;") )
    }else{
      write.csv(plyr::rbind.fill(read.csv("settings/athletes.csv"), athlete_details), "settings/athletes.csv", row.names = F)
      athletes$athletes <- plyr::rbind.fill(read.csv("settings/athletes.csv"), athlete_details)[,1]
      
    }
    
  })
  
  filepaths <- read.csv("settings/filepaths.csv")
  roots <- filepaths[,2]
  names(roots) <- filepaths[,1]
  
  
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
    if(is.na(parseFilePaths(roots = roots,input$Left)$datapath[1])){NULL
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
  
  
  # Value Boxes -------------------------------------------------------------
  
  output$value_box.1 <- renderValueBox({
    valueBox(sum(Window()$C.Jump, na.rm = TRUE), "Jumps", icon = icon("arrow-alt-circle-up"), width = 2, color = "fuchsia")
  })
  output$value_box.2 <- renderValueBox({
    valueBox(summary()$s_jumps, "Small Jumps", icon = icon("angle-up"), width = 2, color = "olive")
  })
  output$value_box.3 <- renderValueBox({
    valueBox(summary()$m_jumps, "Medium Jumps", icon = icon("angle-double-up"), width = 2, color = "orange")
  })
  output$value_box.4 <- renderValueBox({
    valueBox(summary()$l_jumps, "Large Jumps", icon = icon("fighter-jet"), width = 2, color = "red")
  })
  output$value_box.5 <- renderValueBox({
    valueBox(paste0(round(summary()$active_dur), " min"), "Active Time", icon = icon("clock"), width = 2, color = "purple")
  })
  output$value_box.6 <- renderValueBox({
    valueBox(paste(round(Time()[3]/100/60), " min"), "Duration", icon = icon("clock"), width = 2, color = "teal")
  })
  
  
  # Main Data Processing ----------------------------------------------------
  
  data <- reactiveValues(df = NULL)
  
  #Load raw file and add to create DF
  
  observeEvent(input$processraw, {
    
    file.list <-  c(parseFilePaths(roots = roots,input$Central)$datapath[1],
                    parseFilePaths(roots = roots,input$Left)$datapath[1],
                    parseFilePaths(roots = roots,input$Right)$datapath[1]
    ) 
    
    # Filter settings
    
    run.filter <- TRUE
    data.freq <- 100
    order <- 4
    filt.freq <- 12
    
    nyquist.freq <- data.freq / 2
    bf <- signal::butter(order, filt.freq / nyquist.freq, type="low")
    
    
    if(input$timeunit == "ms"){time_unit <- 1000}  
    if(input$timeunit == "s / 100"){time_unit <- 100}  
    if(input$timeunit == "s / 10"){time_unit <- 10}  
    if(input$timeunit == "s"){time_unit <- 1}  
    
    invert <- as.numeric(input$invertup) #Add a variable to flip up and down
    
    # loop through central, left, and right files
    if(is.na(file.list[1])){order <- c(2,3,1)}else{order <- 1:3}
    for(i in order){
      
      if(is.na(file.list[i])){DF <- data.table::fread("frame.csv") %>% mutate(time = ms/1000)}else{
        DF <- process_imu_data(file = file.list[i], run.filter = run.filter, bf = bf, invert = invert, time_unit = time_unit)  
      }
      
      #Rename cols
      if(i == 1){names(DF)[2:ncol(DF)] <- paste0("C.", names(DF)[2:ncol(DF)])}
      if(i == 2){names(DF)[2:ncol(DF)] <- paste0("L.", names(DF)[2:ncol(DF)])}      
      if(i == 3){names(DF)[2:ncol(DF)] <- paste0("R.", names(DF)[2:ncol(DF)])}
      
      #bind DFs 
      if(i == order[1]){combined.DF <- DF}else{combined.DF <- cbind.fill(combined.DF, DF[,2:ncol(DF)], fill = 0)}
      
    }
    
    DF <- combined.DF %>% 
      mutate(
        Time = seq(from = 1, to = nrow(combined.DF)/100, by = 0.01)[1:nrow(combined.DF)],
        #time = seq(from = 1, to = nrow(combined.DF)/100, by = 0.01)[1:nrow(combined.DF)],
        sec.group = ceiling(Time),
        min.group = ceiling(Time/60),
        session.type = NA,
        session.name = NA,
        session.num = NA,
        athlete.name = "temp",
        C.res.acc = as.numeric(C.res.acc),
        R.res.acc = as.numeric(R.res.acc),
        L.res.acc = as.numeric(L.res.acc),
        row_number = as.numeric(row.names(combined.DF))
      ) %>% 
      # select cols to keep
      select(
        row_number, athlete.name, session.type, session.name, session.num, time, 
        C.res.acc, C.peak.mag, C.f.time, C.Jump, C.jh, C.PL, C.acc.zone, C.acc.zone.time, C.ma.Peak, C.raw.peak.mag, C.active.time,
        L.res.acc, L.peak.mag, L.f.time, L.Jump, L.jh, L.PL, L.acc.zone, L.acc.zone.time, L.ma.Peak, L.raw.peak.mag, L.active.time,
        R.res.acc, R.peak.mag, R.f.time, R.Jump, R.jh, R.PL, R.acc.zone, R.acc.zone.time, R.ma.Peak, R.raw.peak.mag, R.active.time,
        C.x.raw, C.y.raw, C.z.raw, C.up.id
      )
    
    data$df <- DF
    
  })
  
  
  # Clip data to window --------------------------------------------------
  
  # ~ Start/finish times ---------------------------------------------
  Time <- reactive({
    Date <- substr(input$starttime, 1, 10)
    Session.Start.ref <- substr(input$Graph1_date_window[1], 12, 19)
    Session.End.ref <-   substr(input$Graph1_date_window[2], 12, 19)
    Unit.Start.ref  <- strptime(input$starttime, "%Y-%m-%d %H:%M:%OS")
    
    Unit.Start    <- strptime(paste(Unit.Start.ref, sep = ''), "%Y-%m-%d %H:%M:%OS")
    Session.Start <- strptime(paste(Date, Session.Start.ref, sep = ''), "%Y-%m-%d %H:%M:%OS")
    Session.End   <- strptime(paste(Date, Session.End.ref, sep = ''), "%Y-%m-%d %H:%M:%OS")
    
    Start <-     sqrt(((as.numeric(difftime(Unit.Start, Session.Start, units ='secs')))*100) ^ 2)
    Duration <-  sqrt(((as.numeric(difftime(Session.Start, Session.End, units ='secs')))*100) ^ 2)
    End <- Start + Duration
    c(Start,End,Duration)
    #c(Session.Start.ref, Session.End.ref, Unit.Start.ref)
  })
  
  # ~ Subset Data --------------------------------------------------
  Window <- reactive({
    start <- Time()[1]
    end <- Time()[2]
    subset(data$df, row_number >= start & row_number <= end) %>% 
      mutate(athlete.name = input$select_athlete)
  })
  
  # Create new row data ----
  summary1 <- eventReactive(input$filename.go, {
    head(file())
  })
  
  
  # Summary Data ------------------------------------------------------------
  
  # ~ Create data ---------------------------------------------------------
  summary <- reactive({
    sum_cols <- read.csv("settings/export.csv") %>% 
      as.vector()
    
    cols <- colnames(read.csv("settings/export.csv"))
    
    data.frame(
      session_id =  ifelse(is.numeric(max(as.numeric(db$db$session_id), na.rm = T)), round(max(as.numeric(db$db$session_id), na.rm = T) + 1, digits = 0), 1),
      athlete_name = input$select_athlete,
      session_date = paste(substr(input$starttime, 1, 4), substr(input$starttime, 6, 7), substr(input$starttime, 9, 10), sep = '-'),
      season = "2020/21",
      is_dummy = NA,
      session_num = input$sessionnumber,
      session_type = input$sessiontype,
      session_name = input$sessionname,
      comments = input$comments,
      position_name = input$position,
      starttime = substr(input$Graph1_date_window[1], 12, 19),
      endtime = substr(input$Graph1_date_window[2], 12, 19),
      r_starttime = input$Graph1_date_window[1],
      r_endtime = input$Graph1_date_window[2],
      total_dur = round(Time()[3] / 60 / 100, 0),
      active_dur = length(which(Window()$C.active.time != 0))/100/60,
      rpe = input$rpe,
      srpe = ifelse(input$durationoverride == "0", round(Time()[3] / 60 / 100, 0)* as.numeric(input$rpe), as.numeric(input$durationoverride) * as.numeric(input$rpe)),
      total_pl = sum(Window()$C.PL, na.rm = TRUE),
      active_pl = sum(Window()$C.PL.active, na.rm = TRUE),
      DSL = sum(subset(Window(), C.peak.mag >2)$C.peak.mag, na.rm = TRUE),
      Jumps = sum(Window()$C.Jump, na.rm = TRUE),
      Jumps_6_10 =  length(which(Window()$C.Jump == 1 & Window()$C.jh >  6   & Window()$C.jh  < 10)),
      Jumps_10_15 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 10  & Window()$C.jh < 15)),
      Jumps_15_20 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 15  & Window()$C.jh < 20)),
      Jumps_20_25 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 20  & Window()$C.jh < 25)),
      Jumps_25_30 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 25  & Window()$C.jh < 30)),
      Jumps_30_35 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 30  & Window()$C.jh < 35)),
      Jumps_35_40 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 35  & Window()$C.jh < 40)),
      Jumps_40_45 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 40  & Window()$C.jh < 45)),
      Jumps_45_50 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 45  & Window()$C.jh < 50)),
      Jumps_50_55 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 50  & Window()$C.jh < 55)),
      Jumps_55_60 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 55  & Window()$C.jh < 60)),
      Jumps_60_65 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 60  & Window()$C.jh < 65)),
      Jumps_65_70 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 65  & Window()$C.jh < 70)),
      Jumps_70_75 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 70  & Window()$C.jh < 75)),
      Jumps_75_80 = length(which(Window()$C.Jump == 1 & Window()$C.jh >= 75  & Window()$C.jh < 80)),
      s_jumps = length(which(Window()$C.f.time < 40.3 & Window()$C.f.time > 22 & Window()$C.Jump == 1)),
      m_jumps = length(which(Window()$C.f.time > 40.3 & Window()$C.f.time < 57.1 & Window()$C.Jump == 1)),
      l_jumps = length(which(Window()$C.f.time > 57.1 & Window()$C.f.time < 80.7 & Window()$C.Jump == 1)),
      C_count_1_5 = length(which(Window()$C.acc.zone == 1.5)),
      C_count_2_0 = length(which(Window()$C.acc.zone == 2.0)),
      C_count_2_5 = length(which(Window()$C.acc.zone == 2.5)),
      C_count_3_0 = length(which(Window()$C.acc.zone == 3.0)),
      C_count_3_5 = length(which(Window()$C.acc.zone == 3.5)),
      C_count_4_0 = length(which(Window()$C.acc.zone == 4.0)),
      C_count_4_5 = length(which(Window()$C.acc.zone == 4.5)),
      C_count_5_0 = length(which(Window()$C.acc.zone == 5.0)),
      C_count_5_5 = length(which(Window()$C.acc.zone == 5.5)),
      C_count_6_0 = length(which(Window()$C.acc.zone == 6.0)),
      C_count_6_5 = length(which(Window()$C.acc.zone == 6.5)),
      C_count_7_0 = length(which(Window()$C.acc.zone == 7.0)),
      C_count_7_5 = length(which(Window()$C.acc.zone == 7.5)),
      C_count_8_0 = length(which(Window()$C.acc.zone == 8.0)),
      C_count_8_5 = length(which(Window()$C.acc.zone == 8.5)),
      C_count_9_0 = length(which(Window()$C.acc.zone == 9.0)),
      C_count_9_5 = length(which(Window()$C.acc.zone == 9.5)),
      C_count_10_0 = length(which(Window()$C.acc.zone > 9.5)),
      R_count_1_5 = length(which(Window()$R.acc.zone == 1.5)),
      R_count_2_0 = length(which(Window()$R.acc.zone == 2.0)),
      R_count_2_5 = length(which(Window()$R.acc.zone == 2.5)),
      R_count_3_0 = length(which(Window()$R.acc.zone == 3.0)),
      R_count_3_5 = length(which(Window()$R.acc.zone == 3.5)),
      R_count_4_0 = length(which(Window()$R.acc.zone == 4.0)),
      R_count_4_5 = length(which(Window()$R.acc.zone == 4.5)),
      R_count_5_0 = length(which(Window()$R.acc.zone == 5.0)),
      R_count_5_5 = length(which(Window()$R.acc.zone == 5.5)),
      R_count_6_0 = length(which(Window()$R.acc.zone == 6.0)),
      R_count_6_5 = length(which(Window()$R.acc.zone == 6.5)),
      R_count_7_0 = length(which(Window()$R.acc.zone == 7.0)),
      R_count_7_5 = length(which(Window()$R.acc.zone == 7.5)),
      R_count_8_0 = length(which(Window()$R.acc.zone == 8.0)),
      R_count_8_5 = length(which(Window()$R.acc.zone == 8.5)),
      R_count_9_0 = length(which(Window()$R.acc.zone == 9.0)),
      R_count_9_5 = length(which(Window()$R.acc.zone == 9.5)),
      R_count_10_0 = length(which(Window()$R.acc.zone > 9.5)),
      L_count_1_5 = length(which(Window()$L.acc.zone == 1.5)),
      L_count_2_0 = length(which(Window()$L.acc.zone == 2.0)),
      L_count_2_5 = length(which(Window()$L.acc.zone == 2.5)),
      L_count_3_0 = length(which(Window()$L.acc.zone == 3.0)),
      L_count_3_5 = length(which(Window()$L.acc.zone == 3.5)),
      L_count_4_0 = length(which(Window()$L.acc.zone == 4.0)),
      L_count_4_5 = length(which(Window()$L.acc.zone == 4.5)),
      L_count_5_0 = length(which(Window()$L.acc.zone == 5.0)),
      L_count_5_5 = length(which(Window()$L.acc.zone == 5.5)),
      L_count_6_0 = length(which(Window()$L.acc.zone == 6.0)),
      L_count_6_5 = length(which(Window()$L.acc.zone == 6.5)),
      L_count_7_0 = length(which(Window()$L.acc.zone == 7.0)),
      L_count_7_5 = length(which(Window()$L.acc.zone == 7.5)),
      L_count_8_0 = length(which(Window()$L.acc.zone == 8.0)),
      L_count_8_5 = length(which(Window()$L.acc.zone == 8.5)),
      L_count_9_0 = length(which(Window()$L.acc.zone == 9.0)),
      L_count_9_5 = length(which(Window()$L.acc.zone == 9.5)),
      L_count_10_0 = length(which(Window()$L.acc.zone > 9.5))
    ) %>% 
      select(
        cols
      )
  })
  
  # ~ Output Data ----------------------------------------------------------
  output$summarydata1 <- renderDataTable({ 
    summary()
  #  DT::datatable(summary(),
  #                extensions = 'Buttons', 
  #                options = list(
  #                  searching = F,
  #                  paging = F,
  #                  dom = 'Bfrtip',
  #                  buttons = c('copy', 'csv', 'excel')
  #                )
  #                
  #  )
  }, 
  options = list(searching = F,
                 paging = F
                 )
  )
  
  # Analysis Page Plots --------------------------------------------------
  
  # ~ Wrangle time series ------------------------------------
  
  # Central Plot
  time.series <-  reactive({
    df1 <- data$df
    df1 <- df1[seq(from = 1, to = nrow(df1), by = 50),] %>% 
      select(C.res.acc, L.res.acc, R.res.acc)
    x <- nrow(df1)
    TimeSeries <- seq(from = 0.00, to = x, by = 0.5) # 2 Hz (x*0.5)
    #TimeSeries <- seq(from = 0.00, to = (x*0.01), by = 0.01) # 100 Hz
    TimeSeries <- as.POSIXct(TimeSeries, tz = "GMT", strptime(input$starttime, "%Y-%m-%d %H:%M:%OS"))
    xts(df1, order.by = TimeSeries[1:x])
  })
  
  # L and R plot
  time.series2 <-  reactive({
    df1 <- Window()
    df1 <- df1[seq(from = 1, to = nrow(df1), by = 50),] %>% 
      select(C.res.acc, C.PL, C.DSL, C.Jump)
    x <- nrow(df1)
    TimeSeries <- seq(from = 0.00, to = x, by = 0.5) # 2 Hz
    #TimeSeries <- seq(from = 0.00, to = (x*0.01), by = 0.01) # 100 Hz
    TimeSeries <- as.POSIXct(TimeSeries, tz = "GMT", strptime(input$starttime, "%Y-%m-%d %H:%M:%OS"))
    xts(df1, order.by = TimeSeries[1:x])
  })
  
  
  
  # ~ Create plots --------------------------------------------------
  
  output$Graph1 <- renderDygraph(
    dygraph(time.series(), group = 'Group1') %>%
      dySeries('C.res.acc', axis = 'y', color = '#4157c1', strokeWidth = 1.5) %>%
      dySeries('L.res.acc', axis = 'y', color = 'transparent', strokeWidth = 0) %>% 
      dySeries('R.res.acc', axis = 'y', color = 'transparent', strokeWidth = 0) %>%
      dyOptions(useDataTimezone = TRUE, gridLineWidth = 0.09) %>%
      dyAxis("y", label = "Acceleration (g)", drawGrid = FALSE) %>%
      dyLegend(show = "never", hideOnMouseOut = TRUE)
  )
  
  output$Graph2 <- renderDygraph(
    dygraph(time.series(), group = 'Group1') %>% # changed this group
      dySeries('L.res.acc', axis = 'y', color = '#4157c1', strokeWidth = 1.5) %>% 
      dySeries('R.res.acc', axis = 'y', color = 'red', strokeWidth = 1.5) %>%
      dySeries('C.res.acc', axis = 'y', color = 'transparent', strokeWidth = 0) %>%
      dyOptions(useDataTimezone = TRUE, gridLineWidth = 0.09) %>%
      dyAxis("y", label = "Acceleration (g)", drawGrid = FALSE) %>%
      dyLegend(show = "never", hideOnMouseOut = TRUE)
  )
  
  
  # Dashboard Plots ---------------------------------------------------------
  # ~ Plot 1  -----------------------------------------------------------
  
  output$dashboardplot1 <- renderPlotly({
    test <- Window()
    
    df <- data.frame(
      acc.zone = c(test$C.acc.zone, test$R.acc.zone, test$L.acc.zone),
      raw.peak.mag = c(test$C.raw.peak.mag, test$R.raw.peak.mag, test$L.raw.peak.mag),
      ma.peak = c(test$C.ma.Peak, test$R.ma.Peak, test$L.ma.Peak),
      location = c(rep("c", nrow(test)), rep("r", nrow(test)), rep("l", nrow(test)))
    ) %>% 
      mutate_at(1:3, as.numeric) %>% 
      filter(ma.peak == 1 & acc.zone > 1.8) %>% 
      group_by(location, acc.zone) %>% 
      summarise(sum = length(raw.peak.mag)) %>% 
      # sum = sum(raw.peak.mag)) %>% 
      tidyr::pivot_wider(id_cols = acc.zone, names_from = "location", values_from = sum )
    
    
    file.list <-  c(parseFilePaths(roots = roots,input$Central)$datapath[1],
                    parseFilePaths(roots = roots,input$Left)$datapath[1],
                    parseFilePaths(roots = roots,input$Right)$datapath[1]
    ) 
    if(!is.na(file.list[2])){
      
      plotly::plot_ly(df, x = ~acc.zone, y = ~r, type = 'bar', name = 'Right', marker = list(color = 'rgb(99, 203, 228)')) %>%
        plotly::add_trace(y = ~-l, name = 'Left', marker = list(color = 'rgb(234, 104, 109)')) %>% 
        plotly::layout(yaxis = list(title = 'Count'), xaxis = list(title = 'Acceleration Zone (g)'), barmode = 'relative') %>% 
        plotly::layout(plot_bgcolor='transparent') %>% 
        plotly::layout(paper_bgcolor='transparent')
      
    }else{
      plotly::plot_ly(df, x = ~acc.zone, y = ~c, type = 'bar', name = 'Right', marker = list(color = 'rgb(234, 104, 109)')) %>%
        plotly::layout(yaxis = list(title = 'Count'), xaxis = list(title = 'Acceleration Zone (g)'), barmode = 'relative') %>% 
        plotly::layout(plot_bgcolor='transparent') %>% 
        plotly::layout(paper_bgcolor='transparent')
    }
    
  })
  
  # ~ Plot 2  -----------------------------------------------------------
  
  output$dashboardplot2 <- renderPlotly({
    
    df <- Window() 
    now_lt <- as.POSIXlt(Sys.time(), tz = "GMT")
    tm <- df$time
    x <- now_lt + tm
    
    ay1 <- list(
      side = "left",
      title = "",
      zeroline = FALSE,
      showline = FALSE,
      showticklabels = FALSE,
      showgrid = FALSE
    )
    ay <- list(
      tickfont = list(color = "blue"),
      overlaying = "y",
      side = "right",
      title = "",
      zeroline = FALSE,
      showline = FALSE,
      showticklabels = FALSE,
      showgrid = FALSE
    )
    ax <- list(
      title = "",
      zeroline = FALSE,
      showline = FALSE,
      showticklabels = FALSE,
      showgrid = FALSE
    )
    
    if(length(x) < 50000){
      
      plot_ly(x = ~x) %>% 
        plotly::add_trace(y = ~cumsum(df$C.PL), mode = 'lines', type = "scatter", yaxis = "y2", name = "PlayerLoad", line = list(color = '#4BC076')) %>% 
        plotly::add_trace(x = ~x, y = ~df$C.res.acc[1:length(tm)], type = "scatter", mode = "lines", name = "Acceleration (100 Hz)", line = list(color = '#4157c1')) %>% 
        plotly::add_bars(y = ~df$C.Jump[1:length(tm)]*5, name = "Jumps", marker = list(color = 'rgb(234, 104, 109)')) %>% 
        #plotly::add_trace(x = ~x, y = ~cumsum(df[df$C.raw.peak.mag > 1.5,]$C.raw.peak.mag[1:length(tm)])/100, mode = "lines", type = "scatter", yaxis = "y2", name = "Impact Load / 100") %>% 
        plotly::layout(yaxis2 = ay, xaxis = ax, yaxis = ay1) %>% 
        plotly::layout(legend = list(orientation = 'h')) %>% 
        plotly::layout(plot_bgcolor='transparent') %>% 
        plotly::layout(paper_bgcolor='transparent')
      
    }else{
      
      plot_ly(df[df$C.Jump == 1,], x = ~time) %>% 
        plotly::add_trace(data = df[seq(1, nrow(df), 20),], y = ~C.res.acc, type =  "scatter", mode = "lines", name = "Acceleration (20 Hz)", line = list(color = '#4157c1')) %>% 
        plotly::add_bars(data = df[df$C.Jump == 1,], y = ~C.Jump*4, name = "Jumps", marker = list(color = '#ea686d')) %>% 
        plotly::layout(yaxis2 = ay, xaxis = ax, yaxis = ay1) %>% 
        plotly::layout(legend = list(orientation = 'h')) %>% 
        plotly::layout(plot_bgcolor='transparent') %>% 
        plotly::layout(paper_bgcolor='transparent')  
      
    }
  })
  
  
  
  
  
  }
