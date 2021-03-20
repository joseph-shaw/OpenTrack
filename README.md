
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

To run OpenTrack, you will need to 1) make a copy of this repository in
your system’s ‘R’ folder, and 2) download and install the package using:

``` r
install_github("joseph-shaw/OpenTrack")
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

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(OpenTrack)
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
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
