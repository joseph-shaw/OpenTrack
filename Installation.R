# OpenTrack Installation Script

# This script is designed to install OpenTrack from a brand new R/Rstudio install

# Enter your PC user account name here
user <- "shaw_"


# set the R folder as the wd
setwd(paste0("C:/Users/", user, "/Documents/R"))

# download a copy of the repo
download.file(url = "https://github.com/joseph-shaw/OpenTrack/archive/refs/heads/main.zip"
              , destfile = "OpenTrack.zip")

# unzip the .zip file
unzip(zipfile = "OpenTrack.zip")

# rename
file.rename("OpenTrack-main", "OpenTrack")

# set OpenTrack as the wd
setwd(paste0("C:/Users/", user, "/Documents/R/OpenTrack"))

# install devtools
install.packages("devtools")

# install rtools
install.packages("installr")
installr::install.rtools()

install.packages("stringr", type = "binary")

# install specific version of shinydashboardPlus
devtools::install_version("shinydashboardPlus", version = "0.7.5", repos = "http://cran.us.r-project.org", type = "source")

# install other dependencies
install.packages(
   c( 'config', 'golem', 'attempt', 'DT', 'dplyr', 'DBI', 'DescTools', 'caTools', 'chron', 'dashboardthemes', 
    'data.table', 'dygraphs', 'extrafont', 'fmsb', 'ggiraph', 'ggplot2', 'gridExtra', 'lubridate', 'odbc', 
    'plotly', 'png', 'pool', 'rowr', 'shinyFiles', 'shinyWidgets', 'shinycssloaders', 'shinyjs', 'tidyr', 
    'xts', 'zoo', 'formattable', 'signal'),
   type = "binary"
)
install.packages("gdtools")
devtools::install_github("cvarrichio/rowr") 


# install OpenTrack
#devtools::install_github("joseph-shaw/OpenTrack")
install.packages(paste0("C:/Users/", user, "/Documents/R/OpenTrack"), 
                 repos = NULL, 
                 type = "source", dependencies = T)

OpenTrack::run_app()














































