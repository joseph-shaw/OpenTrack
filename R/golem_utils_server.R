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

process_imu_data <- function(file, run.filter, bf, invert, time_unit){
  
  # Read data ---------------------------------------------------------------
  df <- fread(file) %>% 
    mutate(
      time = ms / time_unit,
      zacc = zacc * invert
    )
  
  #### Interpolate time series to 100 Hz ####
  max <- RoundTo(max(df$time, na.rm = TRUE), multiple = 1000, FUN = floor)  #df$V1
  time <- seq(from = 6, to = max, by = 0.01)
  
  x.acc <-   as.numeric(unlist(approx(x = df$time, y = df$xacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  y.acc <-   as.numeric(unlist(approx(x = df$time, y = df$yacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  z.acc <-   as.numeric(unlist(approx(x = df$time, y = df$zacc,  xout = time, method = 'linear')[2], use.names=FALSE))
  x.a_vel <- as.numeric(unlist(approx(x = df$time, y = df$xgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  y.a_vel <- as.numeric(unlist(approx(x = df$time, y = df$ygyro, xout = time, method = 'linear')[2], use.names=FALSE))
  z.a_vel <- as.numeric(unlist(approx(x = df$time, y = df$zgyro, xout = time, method = 'linear')[2], use.names=FALSE))
  x.deg <-   as.numeric(unlist(approx(x = df$time, y = df$xdeg,  xout = time, method = 'linear')[2], use.names=FALSE))
  y.deg <-   as.numeric(unlist(approx(x = df$time, y = df$ydeg,  xout = time, method = 'linear')[2], use.names=FALSE))
  z.deg <-   as.numeric(unlist(approx(x = df$time, y = df$zdeg,  xout = time, method = 'linear')[2], use.names=FALSE))
  x.com <-   as.numeric(unlist(approx(x = df$time, y = df$xcom,  xout = time, method = 'linear')[2], use.names=FALSE))
  y.com <-   as.numeric(unlist(approx(x = df$time, y = df$ycom,  xout = time, method = 'linear')[2], use.names=FALSE))
  z.com <-   as.numeric(unlist(approx(x = df$time, y = df$zcom,  xout = time, method = 'linear')[2], use.names=FALSE))
  
  df <- data.frame(time, x.acc, y.acc, z.acc, x.a_vel, y.a_vel, z.a_vel, x.deg, y.deg, z.deg, x.com, y.com, z.com) %>% 
    mutate(time = time - 5.99)
  
  # Filter data -------------------------------------------------------------
  cor.cross <- function(x0, y0, i=0) {
    if (i < 0) {x<-y0; y<-x0; i<- -i}
    else {x<-x0; y<-y0}
    n <- length(x)
    cor(x[(i+1):n], y[1:(n-i)], use="pairwise.complete.obs")
  }
  
  df <- df %>% 
    mutate(x.raw = x.acc,
           y.raw = y.acc,
           z.raw = z.acc)
  
  
  if(run.filter == TRUE){
    
    df <- df %>% 
      mutate_at(2:6, signal::filtfilt, filt = bf) %>% 
      mutate_at(2:6, as.vector)
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
      x.rot = cumsum(x.a_vel * 0.01),
      y.rot = cumsum(y.a_vel * 0.01),    
      z.rot = cumsum(z.a_vel * 0.01),
      x.a_acc = (x.a_vel - lag(x.a_vel, 1)) / 0.01,
      y.a_acc = (y.a_vel - lag(y.a_vel, 1)) / 0.01,
      z.a_acc = (z.a_vel - lag(z.a_vel, 1)) / 0.01,
      res.acc = sqrt(x.acc^2 + y.acc^2 + z.acc^2),
      angle = sqrt(z.deg^2 + y.deg^2)
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
  
  
  # If up acc is 0, make resultant 0
  df$resultant.id <- ifelse(df$up.id == 0, 0, sqrt(df$up.id ^2 + df$x.acc ^2 + df$y.acc ^2))
  
  #Identify peaks
  df$peak <- ifelse(df$resultant.id == runmax(df$resultant.id, 55, align = "center") & 
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
  df$f.time[as] <- df$row[next_b]
  df$f.time <- df$f.time - df$row
  
  #Calculate time to next peak
  next_c <- base::sapply(as, function(a) {
    diff <- cs-a
    if(all(diff < 0)) return(NA)
    cs[min(diff[diff > 0]) == diff]
  })
  df$ttp <- NA
  df$ttp[as] <- df$row[next_c]
  df$ttp <- df$ttp - df$row
  
  df$l.to.p <- ifelse(df$f.time > 0, df$ttp - df$f.time, 0)
  
  #calculate landing acceleration
  next_c <- base::sapply(as, function(a) {
    diff <- cs-a
    if(all(diff < 0)) return(NA)
    cs[min(diff[diff > 0]) == diff]
  })
  df$landing.acc <- NA
  df$landing.acc[as] <- df$peak.mag[next_c]
  
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
        (lead(z.acc, 1) - z.acc) ^2 +
          (lead(y.acc, 1) - y.acc) ^2 +
          (lead(x.acc, 1) - x.acc) ^2),
      PL = PL / 100,
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
  
  return(df)
}
