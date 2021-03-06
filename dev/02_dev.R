# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
## Add one line by package you want to add as dependency
usethis::use_package("shinydashboardPlus" )
usethis::use_package("dplyr" )
usethis::use_package("Cairo" )
usethis::use_package("DBI" )
usethis::use_package("DescTools" )
usethis::use_package("DT")
usethis::use_package("caTools")
usethis::use_package("chron")
usethis::use_package("dashboardthemes")
usethis::use_package("data.table")
usethis::use_package("dplyr")
usethis::use_package("dygraphs")
usethis::use_package("extrafont")
usethis::use_package("fmsb")
usethis::use_package("ggiraph")
usethis::use_package("ggiraphExtra")
usethis::use_package("ggplot2")
usethis::use_package("gridExtra")
usethis::use_package("lubridate")
usethis::use_package("odbc")
usethis::use_package("plotly")
usethis::use_package("png")
usethis::use_package("pool")
usethis::use_package("rowr")
usethis::use_package("shiny")
usethis::use_package("shinyDirectoryInput")
usethis::use_package("shinyFiles")
usethis::use_package("shinyWidgets")
usethis::use_package("shinycssloaders")
usethis::use_package("shinydashboard")
usethis::use_package("shinydashboardPlus")
usethis::use_package("shinyjs")
usethis::use_package("signal")
usethis::use_package("stringr")
usethis::use_package("tidyr")
usethis::use_package("tidyverse")
usethis::use_package("xts")
usethis::use_package("zoo")
usethis::use_package("config")
usethis::use_package("golem")
usethis::use_package("htmltools")
usethis::use_package("formattable")
usethis::use_dev_package("rowr")


## Add modules ----
## Create a module infrastructure in R/
golem::add_module( name = "app" ) # Name of the module
golem::add_module( name = "upload_page" ) # Name of the module
golem::add_module( name = "analyse_page" ) # Name of the module
golem::add_module( name = "dashboard_page" ) # Name of the module
golem::add_module( name = "database_page" ) # Name of the module
golem::add_module( name = "sql_buttons" ) # Name of the module
golem::add_module( name = "filepaths" ) # Name of the module
golem::add_module( name = "longitudinal_page" ) # Name of the module
golem::add_module( name = "squad_dashboard" ) # Name of the module
golem::add_module( name = "splash_module" ) # Name of the module
golem::add_module( name = "session_dashboard" ) # Name of the module


## Add helper functions ----
## Creates ftc_* and utils_*
golem::add_fct( "helpers" ) 
golem::add_utils( "helpers" )

## External resources
## Creates .js and .css files at inst/app/www
golem::add_js_file( "script" )
golem::add_js_handler( "handlers" )
golem::add_css_file( "custom" )

## Add internal datasets ----
## If you have data in your package
usethis::use_data_raw( name = "my_dataset", open = FALSE ) 


## Tests ----
## Add one line by test you want to create
usethis::use_test( "app" )

# Documentation

## Vignette ----
usethis::use_vignette("OpenTrack")
devtools::build_vignettes()

## Code coverage ----
## (You'll need GitHub there)
usethis::use_github()
usethis::use_travis()
usethis::use_appveyor()

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")

