#' Inverted versions of in, is.null and is.na
#' 
#' @noRd
#' 
#' @examples
#' 1 %not_in% 1:10
#' not_null(NULL)
`%not_in%` <- Negate(`%in%`)

not_null <- Negate(is.null)

not_na <- Negate(is.na)

#' Removes the null from a vector
#' 
#' @noRd
#' 
#' @example 
#' drop_nulls(list(1, NULL, 2))
drop_nulls <- function(x){
  x[!sapply(x, is.null)]
}

#' If x is `NULL`, return y, otherwise return x
#' 
#' @param x,y Two elements to test, one potentially `NULL`
#' 
#' @noRd
#' 
#' @examples
#' NULL %||% 1
"%||%" <- function(x, y){
  if (is.null(x)) {
    y
  } else {
    x
  }
}

#' If x is `NA`, return y, otherwise return x
#' 
#' @param x,y Two elements to test, one potentially `NA`
#' 
#' @noRd
#' 
#' @examples
#' NA %||% 1
"%|NA|%" <- function(x, y){
  if (is.na(x)) {
    y
  } else {
    x
  }
}

#' Typing reactiveValues is too long
#' 
#' @inheritParams reactiveValues
#' @inheritParams reactiveValuesToList
#' 
#' @noRd
rv <- shiny::reactiveValues
rvtl <- shiny::reactiveValuesToList

# Use sql
use.sql <- function(){
  settings <- read.csv("settings/sql.csv")
  return(settings$csv[1] == 0)
}





#roots <- function(){
#  filepaths <- read.csv("settings/filepaths.csv")
#  roots <- filepaths[,2]
#  names(roots) <- filepaths[,1]
#  return(roots)
#}


# Add data processing function --------------------------------------------

process_imu_data <- function(file, run.filter, bf, invert, time_unit, up){
  
  # Read data ---------------------------------------------------------------
  df <- fread(file)
  
  # Pad if no gyro data
  if(ncol(df) == 4){
    df$xgyro <- 0
    df$ygyro <- 0
    df$zgyro <- 0
  }
  
  if(up == 0){
    c1.mn <- mean(  unlist(df[runmax(unlist(abs(df[,2])), 20000) > 1.05, 2])  , na.rm = T)
    c2.mn <- mean(  unlist(df[runmax(unlist(abs(df[,3])), 20000) > 1.05, 3])  , na.rm = T)
    c3.mn <- mean(  unlist(df[runmax(unlist(abs(df[,4])), 20000) > 1.05, 4])  , na.rm = T)

    c1.diff <- 1 - abs(c1.mn)
    c2.diff <- 1 - abs(c2.mn)
    c3.diff <- 1 - abs(c3.mn)
    
    up <- which(c(c1.diff, c2.diff, c3.diff) == min(c(c1.diff, c2.diff, c3.diff)))
    if(c(c1.diff, c2.diff, c3.diff)[up] < 0){invert <- 1}
  }
  
    zcol <- 1+up
    xcol <- ifelse(zcol == 2, 3, 2)
    ycol <- ifelse(zcol %in% c(2, 3), 4, 3)
    
  
  # rename columns,  alter time variable, flip z
  df <- df %>% 
    rename(
      time = 1,
      xacc = xcol,
      yacc = ycol,
      zacc = zcol,
      xgyro = 5,
      ygyro = 6,
      zgyro = 7
      ) %>% 
    mutate(
      time = time / time_unit,
      zacc = zacc * invert
    ) 
  
  #### Interpolate time series to 100 Hz ####
  max <- RoundTo(max(df$time, na.rm = TRUE), multiple = 1, FUN = floor)  #df$V1
  time <- seq(from = 6, to = max, by = 0.01)
  
  x.acc <-   as.numeric(unlist(approx(x = df$time, y = df$xacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  y.acc <-   as.numeric(unlist(approx(x = df$time, y = df$yacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  z.acc <-   as.numeric(unlist(approx(x = df$time, y = df$zacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  x.a_vel <- as.numeric(unlist(approx(x = df$time, y = df$xgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  y.a_vel <- as.numeric(unlist(approx(x = df$time, y = df$ygyro, xout = time, method = 'linear')[2], use.names=FALSE))
  z.a_vel <- as.numeric(unlist(approx(x = df$time, y = df$zgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  #x.deg <-   as.numeric(unlist(approx(x = df$time, y = df$xdeg,  xout = time, method = 'linear')[2], use.names=FALSE))
  #y.deg <-   as.numeric(unlist(approx(x = df$time, y = df$ydeg,  xout = time, method = 'linear')[2], use.names=FALSE))
  #z.deg <-   as.numeric(unlist(approx(x = df$time, y = df$zdeg,  xout = time, method = 'linear')[2], use.names=FALSE))
  #x.com <-   as.numeric(unlist(approx(x = df$time, y = df$xcom,  xout = time, method = 'linear')[2], use.names=FALSE))
  #y.com <-   as.numeric(unlist(approx(x = df$time, y = df$ycom,  xout = time, method = 'linear')[2], use.names=FALSE))
  #z.com <-   as.numeric(unlist(approx(x = df$time, y = df$zcom,  xout = time, method = 'linear')[2], use.names=FALSE))
  
  df <- data.frame(time, x.acc, y.acc, z.acc, x.a_vel, y.a_vel, z.a_vel) %>%  #, x.deg, y.deg, z.deg, x.com, y.com, z.com) %>% 
    mutate(time = time - 5.99)
  
  # Filter data -------------------------------------------------------------
  cor.cross <- function(x0, y0, i=0) {
    if (i < 0) {x<-y0; y<-x0; i<- -i}
    else {x<-x0; y<-y0}
    n <- length(x)
    cor(x[(i+1):n], y[1:(n-i)], use="pairwise.complete.obs")
  } # cross correlation planned for synchronisation
  
  df <- df %>% 
    mutate(x.raw = x.acc,
           y.raw = y.acc,
           z.raw = z.acc)
  
  
  if(run.filter == TRUE){
    
    df <- df %>% 
      mutate_at(2:7, signal::filtfilt, filt = bf) %>% 
      mutate_at(2:7, as.vector)
  }
  
  # Calculate acc / vel / dis -----------------------------------------------
  
  df <- df %>% 
    mutate(
      x.a_vel = x.a_vel * 180/pi,
      y.a_vel = y.a_vel * 180/pi,
      z.a_vel = z.a_vel * 180/pi,
      x.vel = cumsum(x.acc * 0.01),
      y.vel = cumsum(y.acc * 0.01),
      z.vel = cumsum(z.acc * 0.01),
      x.dis = cumsum(x.vel * 0.01),
      y.dis = cumsum(y.vel * 0.01),
      z.dis = cumsum(z.vel * 0.01),
      #x.rot = cumsum(x.a_vel * 0.01),
      #y.rot = cumsum(y.a_vel * 0.01),    
      #z.rot = cumsum(z.a_vel * 0.01),
      x.a_acc = (x.a_vel - lag(x.a_vel, 1)) / 0.01,
      y.a_acc = (y.a_vel - lag(y.a_vel, 1)) / 0.01,
      z.a_acc = (z.a_vel - lag(z.a_vel, 1)) / 0.01,
      res.acc = sqrt(x.acc^2 + y.acc^2 + z.acc^2),
      #angle = sqrt(z.com^2 + y.com^2)
    )
  
  #### Create 'clean' time series for classification ####
  # flatten values below 0.2
  df$up.id <- ifelse(df$z.acc < 0.2 | df$z.raw < 0.2, 0, df$z.acc)
  df2 <- df
  df2[1,1] <- 10000
  
  # Iterate flight smoothing
  while(min(df == df2, na.rm = TRUE) == 0){
    df2 <- df
    df$up.id  <- ifelse(runmin(df$up.id, 10 ,align = "left") == 0 & runmin(df$up.id, 10, align = "right") == 0 & df$up.id < 0.6, 0, df$up.id)
    df$up.id <- ifelse(runmin(df$up.id, 5 ,align = "left") == 0 & runmin(df$up.id, 5 ,align = "right") == 0 & df$up.id < 1.5, 0, df$up.id)
  }
  
  # Add in a final smoother for extreme whip new
  df$up.id <- ifelse(runmin(df$up.id, 6 ,align = "left") == 0 & runmin(df$up.id, 6 ,align = "right") == 0 & df$up.id < 5, 0, df$up.id)
  # double tour change
  df$up.id <- ifelse(runmin(df$up.id, 20 ,align = "left") == 0 & runmin(df$up.id, 20 ,align = "right") == 0 & runmax(df$up.id, 30 ,align = "center") < 1, 0, df$up.id)
  
  # Iterate flight smoothing
  while(min(df == df2, na.rm = TRUE) == 0){
    df2 <- df
    df$up.id  <- ifelse(runmin(df$up.id, 10 ,align = "left") == 0 & runmin(df$up.id, 10, align = "right") == 0 & df$up.id < 0.6, 0, df$up.id)
    df$up.id <- ifelse(runmin(df$up.id, 5 ,align = "left") == 0 & runmin(df$up.id, 5 ,align = "right") == 0 & df$up.id < 1.5, 0, df$up.id)
    df$up.id <- ifelse(runmin(df$up.id, 20 ,align = "left") == 0 & runmin(df$up.id, 20 ,align = "right") == 0 & runmax(df$up.id, 30 ,align = "center") < 1, 0, df$up.id)
  }
  
  
  # If up acc is 0, make resultant 0
  df$resultant.id <- ifelse(df$up.id == 0, 0, sqrt(df$up.id ^2 + df$x.acc ^2 + df$y.acc ^2))
  
  #Identify peaks
  df$peak <- ifelse(df$resultant.id == runmax(df$resultant.id, 45, align = "center") & 
                      df$resultant.id >= 1.65, 1, 0)
  
  #Calculate the magnitude of the peak
  df$peak.mag <- ifelse(df$peak == 1, df$resultant.id, 0)
  df$peak.up.mag <- ifelse(df$peak == 1, df$z.acc, 0)
  
  df[is.na(df)] <- 0
  
  #Identify periods of flight
  df$flight <- ifelse(df$up.id == 0, 1, 0)
  
  #Make row number helper column
  df$row <- 1:nrow(df)
  
  #Identify onset and end of jump, and peaks
  df$flight.s.f <- ifelse(df$flight == 1 & lag(df$flight, 1) == 0, 'A',
                          ifelse(df$flight == 0 & lag(df$flight, 1) == 1, 'B',
                                 ifelse(df$peak == 1 & df$peak.up.mag > 1.35, 'C','')))
  
  df$flight.s.f <- ifelse(lag(df$flight.s.f,1) == 'B' & lag(df$peak,1) == 1 & lag(df$peak.up.mag,1) > 1.35, 'C', df$flight.s.f)
  
  #Calculate duration of jump
  as <- which(df$flight.s.f == "A")
  bs <- which(df$flight.s.f == "B")
  cs <- which(df$flight.s.f == "C")
  
  #time to jump landing
  next_b <- base::sapply(as, function(a) {
    diff <- bs-a
    if(all(diff < 0)) return(NA)
    bs[min(diff[diff > 0]) == diff]
  })
  
  df$f.time <- NA
  df$f.time[as] <- df$row[unlist(next_b)] # THE 1 CAN BE REMOVED #################################
  df$f.time <- df$f.time - df$row
  
  #Calculate time to next peak
  next_c <- base::sapply(as, function(a) {
    diff <- cs-a
    if(all(diff < 0)) return(NA)
    cs[min(diff[diff > 0]) == diff]
  })
  df$ttp <- NA
  df$ttp[as] <- df$row[unlist(next_c)]
  df$ttp <- df$ttp - df$row
  
  df$l.to.p <- ifelse(df$f.time > 0, df$ttp - df$f.time, 0)
  
  #calculate landing acceleration
  next_c <- base::sapply(as, function(a) {
    diff <- cs-a
    if(all(diff < 0)) return(NA)
    cs[min(diff[diff > 0]) == diff]
  })
  df$landing.acc <- NA
  df$landing.acc[as] <- df$peak.mag[unlist(next_c)]
  
  #Eliminate flight times beyond 80cs and below 15cs
  df$f.time <- ifelse(df$f.time > 80, 0,
                      ifelse(df$f.time < 15, 0, df$f.time))
  
  #Check if there's takeoff peak present
  df$takeoff.peak <- ifelse(df$flight.s.f == 'A'
                            & runmax(df$peak.mag, 40, align = "right", endrule = "NA") > 1.65
                            & df$f.time > 1, 1, 0)
  
  #Is it a jump?
  df$Jump <- ifelse(df$flight.s.f == 'A' &
                      df$f.time > 22 &
                      df$f.time < 80 &
                      df$l.to.p < 38 &
                      df$takeoff.peak == 1, 1, 0)  
  
  df <- df %>% 
    mutate(
      #If a jump is identified, calculate the height?
      jh = ifelse(Jump == 1, 9.81 * (f.time/10)^2 / 8, NA),
      jh = (0.9301*jh) - 0.9443,
      
      #Calculate PlayerLoad
      PL = sqrt(
        (
          (lead(z.acc, 1) - z.acc) ^ 2 +
          (lead(y.acc, 1) - y.acc) ^ 2 +
          (lead(x.acc, 1) - x.acc) ^ 2
        )/100
      ),
      #Calculate PL over a resting threshold
      PL.active = ifelse(PL > 0.005, PL, 0),
      #Calculate the vector MA
      ma5.vector = runmean(res.acc, 5, endrule = "NA", align = "center"),
      #Is the vector ma a peak?
      ma.Peak = ifelse(ma5.vector == runmax(ma5.vector, 21, align = 'center') & ma5.vector >= 0, 1, 0),
      #Calculate the magnitude of the peak
      raw.peak.mag = ifelse(ma.Peak == 1, runmax(res.acc, 9, endrule = "NA"), 0),
      #Calculate the zone of each accel
      acc.zone = RoundTo(raw.peak.mag, multiple = 0.5, FUN = ceiling),
      #Calculate the time in each accel zone
      acc.zone.time = RoundTo(res.acc, multiple = 0.5, FUN = ceiling),
      #Calculate active time
      active.time = df$res.acc,
      active.time = ifelse(runmax(active.time, 350, align = "right", endrule = "NA") < 1.2, 0, active.time),
      active.time = ifelse(runmax(active.time, 1000, align = "right", endrule = "NA") < 1.5, 0, active.time)
    )
  
  #write.csv(df, "dataproc.csv", row.names = F) # for testing output
  return(df)
}


#r.shank <- "C:/Users/shaw_/Documents/R/OpenTrack/example_upload.csv"
#l.shank <- "C:/Users/shaw_/Documents/R/OpenTrack/example_upload.csv"
#waist <- "C:/Users/shaw_/Documents/R/OpenTrack/example_upload.csv"
#invert = FALSE
#up = 2
#side = 3
#forward = 4
#ach = F
#tib = T
#pat = F
#grf = F
#jump.only = F
#
# tissue force function
tissue_force <- function(l.shank, r.shank, waist, invert = F, up = 2, side = 3, forward = 4, ach = F, tib = F, pat = F, grf = F, jump.only = F){
  
  
  library(tidyverse)
  library(keras)
  
  # Filter settings ---------------------------------------------------------
  run.filter <- TRUE
  data.freq <- 100
  order <- 4
  filt.freq <- 22
  nyquist.freq <- data.freq / 2
  bf <- signal::butter(order, filt.freq / nyquist.freq, type="low")
  
  # set seed for reproducible results
  set.seed(1234)
  tensorflow::set_random_seed(1234)
  
  # Acceleration calculator function --------------------------------------
  calc.a_acc <- function(x){
    (lead(x, 1) - x)/0.01
  }

# -------------------------------------------------------------------------

  

  # read data - unlooped for clarity

  # Left shank
  
  df.l <- read.csv(l.shank) %>%
    rename(time = 1) %>% 
    mutate(time = time/1000)

  max <- DescTools::RoundTo(max(df.l$time, na.rm = TRUE), multiple = 1, FUN = floor) 
  time <- seq(from = 6, to = max, by = 0.01)
  
  x.acc <-   as.numeric(unlist(approx(x = df.l$time, y = df.l$xacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  y.acc <-   as.numeric(unlist(approx(x = df.l$time, y = df.l$yacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  z.acc <-   as.numeric(unlist(approx(x = df.l$time, y = df.l$zacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  x.a_vel <- as.numeric(unlist(approx(x = df.l$time, y = df.l$xgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  y.a_vel <- as.numeric(unlist(approx(x = df.l$time, y = df.l$ygyro, xout = time, method = 'linear')[2], use.names=FALSE))
  z.a_vel <- as.numeric(unlist(approx(x = df.l$time, y = df.l$zgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  
  df.l <- data.frame(time, x.acc, y.acc, z.acc, x.a_vel, y.a_vel, z.a_vel) %>%
    mutate(time = time - 5.99) %>% 
    mutate(
      x.a_vel = x.a_vel * 180/pi, # convert from radians to degrees
      y.a_vel = y.a_vel * 180/pi,
      z.a_vel = z.a_vel * 180/pi
    ) %>% 
    mutate_at(2:7, signal::filtfilt, filt = bf) %>%
    mutate_at(2:7, as.vector) %>% 
    mutate(
      r.acc = sqrt(x.acc^2 + y.acc^2 + z.acc^2), # resultants
      r.a_vel = sqrt(x.a_vel^2 + y.a_vel^2 + z.a_vel^2),
      x.a_acc = calc.a_acc(x.a_vel),
      y.a_acc = calc.a_acc(y.a_vel),
      z.a_acc = calc.a_acc(z.a_vel),
      r.a_acc = sqrt(x.a_acc^2 + y.a_acc^2 + z.a_acc^2)
    ) %>% 
    dplyr::select(-contains("r.a_vel"))  

  names(df.l)[2:12] <- paste0("LSHANK_", names(df.l)[2:12])
  
  # Right shank
  
  df.r <- read.csv(r.shank) %>%
    rename(time = 1) %>% 
    mutate(time = time/1000)
  
  max <- DescTools::RoundTo(max(df.r$time, na.rm = TRUE), multiple = 1, FUN = floor) 
  time <- seq(from = 6, to = max, by = 0.01)
  
  x.acc <-   as.numeric(unlist(approx(x = df.r$time, y = df.r$xacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  y.acc <-   as.numeric(unlist(approx(x = df.r$time, y = df.r$yacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  z.acc <-   as.numeric(unlist(approx(x = df.r$time, y = df.r$zacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  x.a_vel <- as.numeric(unlist(approx(x = df.r$time, y = df.r$xgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  y.a_vel <- as.numeric(unlist(approx(x = df.r$time, y = df.r$ygyro, xout = time, method = 'linear')[2], use.names=FALSE))
  z.a_vel <- as.numeric(unlist(approx(x = df.r$time, y = df.r$zgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  
  df.r <- data.frame(time, x.acc, y.acc, z.acc, x.a_vel, y.a_vel, z.a_vel) %>%
    mutate(time = time - 5.99) %>% 
    mutate(
      x.a_vel = x.a_vel * 180/pi, # convert from radians to degrees
      y.a_vel = y.a_vel * 180/pi,
      z.a_vel = z.a_vel * 180/pi
    ) %>% 
    mutate_at(2:7, signal::filtfilt, filt = bf) %>%
    mutate_at(2:7, as.vector) %>% 
    mutate(
      r.acc = sqrt(x.acc^2 + y.acc^2 + z.acc^2), # resultants
      r.a_vel = sqrt(x.a_vel^2 + y.a_vel^2 + z.a_vel^2),
      x.a_acc = calc.a_acc(x.a_vel),
      y.a_acc = calc.a_acc(y.a_vel),
      z.a_acc = calc.a_acc(z.a_vel),
      r.a_acc = sqrt(x.a_acc^2 + y.a_acc^2 + z.a_acc^2)
    ) %>% 
    dplyr::select(-contains("r.a_vel")) 
  
  names(df.r)[2:12] <- paste0("RSHANK_", names(df.r)[2:12])
  
  
  # Waist
  
  df.w <- read.csv(waist) %>%
    rename(time = 1) %>% 
    mutate(time = time/1000)
  
  max <- DescTools::RoundTo(max(df.w$time, na.rm = TRUE), multiple = 1, FUN = floor) 
  time <- seq(from = 6, to = max, by = 0.01)
  
  x.acc <-   as.numeric(unlist(approx(x = df.w$time, y = df.w$xacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  y.acc <-   as.numeric(unlist(approx(x = df.w$time, y = df.w$yacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  z.acc <-   as.numeric(unlist(approx(x = df.w$time, y = df.w$zacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  x.a_vel <- as.numeric(unlist(approx(x = df.w$time, y = df.w$xgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  y.a_vel <- as.numeric(unlist(approx(x = df.w$time, y = df.w$ygyro, xout = time, method = 'linear')[2], use.names=FALSE))
  z.a_vel <- as.numeric(unlist(approx(x = df.w$time, y = df.w$zgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  
  df.w <- data.frame(time, x.acc, y.acc, z.acc, x.a_vel, y.a_vel, z.a_vel) %>%
    mutate(time = time - 5.99) %>% 
    mutate(
      x.a_vel = x.a_vel * 180/pi, # convert from radians to degrees
      y.a_vel = y.a_vel * 180/pi,
      z.a_vel = z.a_vel * 180/pi
    ) %>% 
    mutate_at(2:7, signal::filtfilt, filt = bf) %>%
    mutate_at(2:7, as.vector) %>% 
    mutate(
      r.acc = sqrt(x.acc^2 + y.acc^2 + z.acc^2), # resultants
      r.a_vel = sqrt(x.a_vel^2 + y.a_vel^2 + z.a_vel^2),
      x.a_acc = calc.a_acc(x.a_vel),
      y.a_acc = calc.a_acc(y.a_vel),
      z.a_acc = calc.a_acc(z.a_vel),
      r.a_acc = sqrt(x.a_acc^2 + y.a_acc^2 + z.a_acc^2)
    ) %>% 
    dplyr::select(-contains("r.a_vel")) 
  
  names(df.w)[2:12] <- paste0("WAIST_", names(df.w)[2:12])
  
  data <- df.w %>% 
    left_join(df.r, by = "time") %>% 
    left_join(df.l, by = "time")
  
# limb
  data$limb <- 1 #!!!!!!!!!!!!!!!!
  
  
  
  # Flatten periods of flight in IMU data
  check <- data$WAIST_z.acc
  data$WAIST_z.acc <- ifelse(data$WAIST_z.acc < 0.2 , 0, data$WAIST_z.acc)
  
  # Iterate flight smoothing
  for(i in 1:20){
    check <- data$WAIST_z.acc
    data$WAIST_z.acc  <- ifelse(caTools::runmin(data$WAIST_z.acc, 10 ,align = "left") == 0 & caTools::runmin(data$WAIST_z.acc, 10, align = "right") == 0 & data$WAIST_z.acc < 0.6, 0, data$WAIST_z.acc)
    data$WAIST_z.acc <- ifelse(caTools::runmin(data$WAIST_z.acc, 5 ,align = "left") == 0 & caTools::runmin(data$WAIST_z.acc, 5 ,align = "right") == 0 & data$WAIST_z.acc < 1.5, 0, data$WAIST_z.acc)
  }
  
  # extreme whip
  data$WAIST_z.acc <- ifelse(caTools::runmin(data$WAIST_z.acc, 6 ,align = "left") == 0 & caTools::runmin(data$WAIST_z.acc, 6 ,align = "right") == 0 & data$WAIST_z.acc < 5, 0, data$WAIST_z.acc)
  
  
  
  data <- data %>% 
    dplyr::select(
    c(
      time,limb,
      starts_with("LSHANK", ignore.case = F), 
      starts_with("RSHANK", ignore.case = F), 
      starts_with("WAIST", ignore.case = F)
      )
    ) %>% 
    dplyr::select(
      c(
        time, limb,
        LSHANK_r.a_acc, LSHANK_r.acc, LSHANK_x.a_acc, LSHANK_x.a_vel, LSHANK_x.acc, LSHANK_y.a_acc,
        LSHANK_y.a_vel, LSHANK_y.acc, LSHANK_z.a_acc, LSHANK_z.a_vel, LSHANK_z.acc,
        RSHANK_r.a_acc, RSHANK_r.acc, RSHANK_x.a_acc, RSHANK_x.a_vel, RSHANK_x.acc, RSHANK_y.a_acc,
        RSHANK_y.a_vel, RSHANK_y.acc, RSHANK_z.a_acc, RSHANK_z.a_vel, RSHANK_z.acc,
        WAIST_r.a_acc, WAIST_r.acc, WAIST_x.a_acc, WAIST_x.a_vel, WAIST_x.acc, WAIST_y.a_acc,
        WAIST_y.a_vel, WAIST_y.acc, WAIST_z.a_acc, WAIST_z.a_vel, WAIST_z.acc
      )
    ) %>% 
    drop_na()
  
  #write.csv(data, "raw.csv")
  
  
  data[data$WAIST_z.acc == 0,3:35] <- 0
  
  values <- read.csv("utils/values.csv")

  # scale and normalise based on training data
  # create function to normalize data
  normalize <- function(x, min, max) {
    return ((x - min) / (max - min))
  }
  

  # scale
  df.scaled <- as.data.frame(scale(data[,3:35], center = values[1,], scale = values[2,]))
  
  
  # normalize each column based on training data
  for(i in 1:ncol(df.scaled)){
    df.scaled[,i] <- normalize(df.scaled[,i], min = values[3,i], max = values[4,i])
  }
  
  
  time <- data[,1]
  #read limb and row
  data[,3:35] <- df.scaled
  
  
  if(ach){
    lookback <- 4
    delay <- 1
  }
  
  if(pat | grf){
    lookback <- 5
    delay <- 2
  }
  
  if(tib){
    lookback <- 5
    delay <- 1
  }
  
  step <- 1
  min_index <- 1

  # create function to organise data into nn inputs (rolling time windows) and outputs 
  create.ts <- function(dat = dat, lookback, delay, min_index, max_index, step = 1) {
    function() {
      i <<- min_index + lookback
      rows <<- c(i:min(i+max_index-1, max_index))
      i <<- i + length(rows)
      
      samples <- array(0, dim = c(length(rows),
                                  lookback / step,
                                  dim(dat)[[-1]]))
      
      
      for (j in 1:length(rows)) {
        indices <- seq(rows[[j]] + delay, rows[[j]] - lookback + 1 + delay,
                       length.out = dim(samples)[[2]])
        indices = rev(indices) ###
        samples[j,,] <- data.matrix(dat[indices,])
        
      }  
      list(samples)
    }
  }
  
  # test
  data.left <- data[,c(3:13, 25:35, 2)]
  data.right<- data[,c(14:35, 2)]
  
  max_index <- nrow(data.left)
  data_rnn_ts <- create.ts(step = step, dat = data.left, lookback = lookback, delay = delay, 
                           min_index = 1, max_index = max_index)
  data_rnn_left <- data_rnn_ts()
  
  max_index <- nrow(data.right)
  data_rnn_ts <- create.ts(step = step, dat = data.right, lookback = lookback, delay = delay, 
                           min_index = 1, max_index = max_index)
  data_rnn_right <- data_rnn_ts()
  
  
 
  
  data_rnn_left  <- data_rnn_left[[1]]    #[,,1:length(data_rnn_left[[1]][,1,1]) ]
  data_rnn_right <- data_rnn_right[[1]]   #[,,1:length(data_rnn_left[[1]][,1,1]) ]
  
  
  # Load models and predict forces
  
  
  left_achilles = NA
  right_achilles = NA
  left_grf = NA
  right_grf = NA
  left_pat.tendon = NA
  right_pat.tendon = NA
  left_tibia = NA
  right_tibia = NA
  
  values <- read.csv("utils/values_out.csv")
  
  # create function to reverse normalization of data
  inv.normalize <- function(norm, x.min, x.max){
    norm*(x.max-x.min)+x.min
  }
  
  if(ach){
    model <- keras::load_model_tf("models/achilles")
    left_achilles <-  model %>% predict(unlist(data_rnn_left))
    right_achilles <- model %>% predict(unlist(data_rnn_right))
    left_achilles <-  ifelse(left_achilles < 0, 0, left_achilles)
    right_achilles <- ifelse(right_achilles < 0, 0, right_achilles)
    left_achilles <-  inv.normalize(left_achilles, values$achilles[3], values$achilles[4])
    right_achilles <- inv.normalize(right_achilles, values$achilles[3], values$achilles[4])
    left_achilles <- t((t(left_achilles) * values$achilles[2]) + values$achilles[1])
    right_achilles <- t((t(right_achilles) * values$achilles[2]) + values$achilles[1])
    left_achilles <- c(rep(NA, lookback), left_achilles)
    right_achilles <- c(rep(NA, lookback), right_achilles)
  }
  if(grf){
    model <- keras::load_model_tf("models/grf")
    left_grf <-  model %>% predict(unlist(data_rnn_left))
    right_grf <- model %>% predict(unlist(data_rnn_right))
    left_grf <- ifelse(left_grf < 0, 0, left_grf)
    right_grf <- ifelse(right_grf < 0, 0, right_grf)
    left_grf <-  inv.normalize(left_grf, values$grf[3], values$grf[4])
    right_grf <- inv.normalize(right_grf, values$grf[3], values$grf[4])
    left_grf <- t((t(left_grf) * values$grf[2]) + values$grf[1])
    right_grf <- t((t(right_grf) * values$grf[2]) + values$grf[1])
    left_grf <- c(rep(NA, lookback), left_grf)
    right_grf <- c(rep(NA, lookback), right_grf)
    }
  if(pat){
    model <- keras::load_model_tf("models/pat_tendon")
    left_pat.tendon <-  model %>% predict(unlist(data_rnn_left))
    right_pat.tendon <- model %>% predict(unlist(data_rnn_right))
    left_pat.tendon <- ifelse(left_pat.tendon < 0, 0, left_pat.tendon)
    right_pat.tendon <- ifelse(right_pat.tendon < 0, 0, right_pat.tendon)
    left_pat.tendon <-  inv.normalize(left_pat.tendon, values$patellartendon[3], values$patellartendon[4])
    right_pat.tendon <- inv.normalize(right_pat.tendon, values$patellartendon[3], values$patellartendon[4])
    left_pat.tendon <- t((t(left_pat.tendon) * values$patellartendon[2]) + values$patellartendon[1])
    right_pat.tendon <- t((t(right_pat.tendon) * values$patellartendon[2]) + values$patellartendon[1])
    left_pat.tendon <- c(rep(NA, lookback), left_pat.tendon)
    right_pat.tendon <- c(rep(NA, lookback), right_pat.tendon)
    }
  if(tib){
    model <- keras::load_model_tf("models/tibia")
    left_tibia <-  model %>% predict(unlist(data_rnn_left))
    right_tibia <- model %>% predict(unlist(data_rnn_right))
    left_tibia <- ifelse(left_tibia < 0, 0, left_tibia)
    right_tibia <- ifelse(right_tibia < 0, 0, right_tibia)
    left_tibia <-  inv.normalize(left_tibia, values$tibia[3], values$tibia[4])
    right_tibia <- inv.normalize(right_tibia, values$tibia[3], values$tibia[4])
    left_tibia <- t((t(left_tibia) * values$tibia[2]) + values$tibia[1])
    right_tibia <- t((t(right_tibia) * values$tibia[2]) + values$tibia[1])
    left_tibia <- c(rep(NA, lookback), left_tibia)
    right_tibia <- c(rep(NA, lookback), right_tibia)
    }
  
  n <- max(
    length(time),
    length(left_achilles),
    length(right_achilles),
    length(left_grf),
    length(right_grf),
    length(left_pat.tendon),
    length(right_pat.tendon),
    length(left_tibia),
    length(right_tibia) 
  )
  
  length(left_achilles) <- n
  length(right_achilles) <- n
  length(left_grf) <- n
  length(right_grf) <- n
  length(left_pat.tendon) <- n
  length(right_pat.tendon) <- n
  length(left_tibia) <- n
  length(right_tibia) <- n
  
  force <- data.frame(
    time = time,
    left_achilles = left_achilles,
    right_achilles = right_achilles,
    left_grf = left_grf,
    right_grf = right_grf,
    left_pat.tendon = left_pat.tendon,
    right_pat.tendon = right_pat.tendon,
    left_tibia = left_tibia,
    right_tibia = right_tibia #,
    #waist = df.w$WAIST_r.acc
  )
  
  return(force)
  
  }


#r.shank <- "C:/Users/shaw_/Documents/R/OpenTrack/example_upload.csv"
#l.shank <- "C:/Users/shaw_/Documents/R/OpenTrack/example_upload.csv"
#waist <- "C:/Users/shaw_/Documents/R/OpenTrack/example_upload.csv"
#invert = FALSE
#up = 2
#side = 3
#forward = 4
#ach = F
#tib = F
#pat = F
#grf = T
#jump.only = F
#
#test <- tissue_force(r.shank = r.shank, l.shank = l.shank, waist = waist, invert = F, ach = T)
#  
#  
#