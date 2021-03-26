
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

Alternatively, you can just download the repo and build the package
yourself.

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
#run_app()
#or
#OpenTrack::run_app()
```
