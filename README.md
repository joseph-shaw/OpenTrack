
<!-- README.md is generated from README.Rmd. Please edit that file -->

# OpenTrack

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

Welcome to OpenTrack, an open-source platform for extracting training
load variables from IMU data. The initial OpenTrack release can be used
with triaxial accelerometer or 9-axis IMU data, and is functional with a
single central device, and/or two devices corresponding to left and
right limbs.

The current version of OpenTrack outputs impact counts and magnitudes,
jump counts and heights, PlayerLoad, and other common training load
variables, as well as both raw and processed time-series for each
device. It is also designed to work with both .csv and SQL databases,
which can be edited from within the platform.

## Installation

Right now, OpenTrack isn’t the most simple thing to get up and running
if you’re not already an R user… I’m working on it, and will hopefully
have a standalone platform available for non-R users before too long.

To run OpenTrack, you will need to 1) make a copy of this repository in
your system’s ‘R’ folder, 2) install the dependencies, and 3) download
and install the package using:

``` r
#install.packages("devtools")
devtools::install_github("joseph-shaw/OpenTrack")
```

I’m pretty sure I should be able to just make all of the dependencies
install automatically, but for now you’ll have to install these manually
I think:

``` r
devtools::install_version("shinydashboardPlus", version = "0.7.5", repos = "http://cran.us.r-project.org")
devtools::install_github("cvarrichio/rowr")
devtools::install_github("wleepang/shiny-directory-input")
```

You will also need to alter several of the files within the settings
folder (“\~ R/OpenTrack/settings”) before you get started.

  - athletes.csv: This file houses data about each athlete. You can edit
    to this directly, or do so through the ‘Add athlete’ tab in the
    “Analyse Data” page in the app.

  - sql.csv: This file is used to create a SQL connection, or tell the
    app to use csv files instead (set the ‘csv’ cell to 0). To set up a
    SQL connection, add in the database information in each cell. You’ll
    be prompted to enter the password each time you open the app (entry
    box in the r studio window; nothing will work until this is entered
    correctly). You can add a password permanently in the
    ‘app\_server.R’ file instead.

  - lists.csv: You can use this file to change the session type options
    in the drop down on the ‘Analyse Data’ page.

  - filepaths.csv: You will need to change these if you want to edit
    where the app can look for files. Simply enter the filepaths and a
    name for the location you want to use.

  - export.csv: This file can be used to change the data that is
    exported. Simply delete a column to remove it from the export.

Once installed, you can run the app with:

``` r
#library(OpenTrack)
OpenTrack::run_app()
#> Warning: replacing previous import 'DescTools::%like%' by 'data.table::%like%'
#> when loading 'OpenTrack'
#> Registered S3 methods overwritten by 'tibble':
#>   method     from  
#>   format.tbl pillar
#>   print.tbl  pillar
#> Warning: replacing previous import 'data.table::last' by 'dplyr::last' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::first' by 'dplyr::first' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::between' by 'dplyr::between'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'DescTools::CronbachAlpha' by
#> 'fmsb::CronbachAlpha' when loading 'OpenTrack'
#> Warning: replacing previous import 'DescTools::VIF' by 'fmsb::VIF' when loading
#> 'OpenTrack'
#> Warning: replacing previous import 'dplyr::combine' by 'gridExtra::combine' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::month' by 'lubridate::month'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::hour' by 'lubridate::hour' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'chron::origin' by 'lubridate::origin' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'chron::seconds' by 'lubridate::seconds' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::quarter' by 'lubridate::quarter'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'chron::days' by 'lubridate::days' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::week' by 'lubridate::week' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::year' by 'lubridate::year' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::wday' by 'lubridate::wday' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::second' by 'lubridate::second'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'chron::years' by 'lubridate::years' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'chron::hours' by 'lubridate::hours' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::minute' by 'lubridate::minute'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'chron::minutes' by 'lubridate::minutes' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::mday' by 'lubridate::mday' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::yday' by 'lubridate::yday' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'data.table::isoweek' by 'lubridate::isoweek'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'ggplot2::last_plot' by 'plotly::last_plot'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'dplyr::count' by 'rowr::count' when loading
#> 'OpenTrack'
#> Warning: replacing previous import 'dplyr::coalesce' by 'rowr::coalesce' when
#> loading 'OpenTrack'
#> Warning: replacing previous import 'DT::dataTableOutput' by
#> 'shiny::dataTableOutput' when loading 'OpenTrack'
#> Warning: replacing previous import 'DT::renderDataTable' by
#> 'shiny::renderDataTable' when loading 'OpenTrack'
#> Warning: replacing previous import 'shiny::runExample' by 'shinyjs::runExample'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'shinyWidgets::alert' by 'shinyjs::alert'
#> when loading 'OpenTrack'
#> Warning: replacing previous import 'pool::show' by 'shinyjs::show' when loading
#> 'OpenTrack'
#> Warning: replacing previous import 'dplyr::last' by 'xts::last' when loading
#> 'OpenTrack'
#> Warning: replacing previous import 'dplyr::first' by 'xts::first' when loading
#> 'OpenTrack'
#> PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

<div style="width: 100% ; height: 400px ; text-align: center; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box;" class="muted well">Shiny applications not supported in static R Markdown documents</div>
