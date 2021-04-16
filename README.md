
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

OpenTrack is tricky to install, probably because I haven’t built the
package properly. If you know how to make it so all the dependencies
install automatically, feel free to contact me and tell me how…

To run OpenTrack, you will need to: 1) make a copy of this repository in
your system’s ‘R’ folder, 2) install the dependencies, 3) download and
install the package.

1.  Make a copy of this repository in your system’s ‘R’ folder Click the
    green button at the top of this page, download a zip. Once it’s
    downloaded, right click and extract all to your system’s R folder,
    normally in C:/Users/yourname\_/Documents/R

Open the OpenTrack project from this folder

2.  Install the dependencies Click ctrl + shift + B. This won’t work,
    but it seems the easiest way to install RTools.

Once it’s done, run this code:

``` r
#install.packages("devtools")
devtools::install_version("shinydashboardPlus", version = "0.7.5", repos = "http://cran.us.r-project.org")
devtools::install_github("cvarrichio/rowr")
devtools::install_github("wleepang/shiny-directory-input")
install.packages("tidyverse")
```

3.  Download and install the package Once they’ve installed, run this
    code:

``` r
#install.packages("devtools")
devtools::install_github("joseph-shaw/OpenTrack")
```

If it asks you to update packages just skip it. If you update
shinydashboardPlus to 2.0.0 it won’t work.

Alternatively, at this point you can just build the package yourself.

If you encounter an error regarding functions exported from
shinydashboardPlus, just remove the current installation of
shinydashboardPlus and reinstall as above (you may have to delete the
folder from your package library).

If you want to use SQL, there’s (going to be) a template of the database
required in this repo.

You will also need to alter several of the files within the settings
folder (“\~ R/OpenTrack/settings”) before you get started.

-   athletes.csv: This file houses data about each athlete. You can edit
    to this directly, or do so through the ‘Add athlete’ tab in the
    “Analyse Data” page in the app.

-   sql.csv: This file is used to create a SQL connection, or tell the
    app to use csv files instead (set the ‘csv’ cell to 0). To set up a
    SQL connection, add in the database information in each cell. You’ll
    be prompted to enter the password each time you open the app (entry
    box in the r studio window; nothing will work until this is entered
    correctly). You can add a password permanently in the
    ‘app\_server.R’ file instead.

-   lists.csv: You can use this file to change the session type options
    in the drop down on the ‘Analyse Data’ page.

-   filepaths.csv: You will need to change these if you want to edit
    where the app can look for files. Simply enter the filepaths and a
    name for the location you want to use.

-   export.csv: This file can be used to change the data that is
    exported. Simply delete a column to remove it from the export.

Once installed, you can run the app with:

``` r
#library(OpenTrack)
#run_app()
#or
#OpenTrack::run_app()
```

## Using OpenTrack

OpenTrack currently has four tabs. When you open the app you’ll start at
the data upload page. Here you will need to upload the data from your
IMU(s). There are upload tabs for central/left/right devices. If you
click these and the file browser isn’t populating, you either haven’t
set the filepaths in ‘filepaths.csv’ or you’re using SQL and you haven’t
logged in. Here you will also need to set the date/time the devices were
turned on, the units of time that your device outputs, and if your
vertical axis is flipped.

A couple of things to note here: - There’s not currently a function to
sync the three devices, so if the times are out of sync, the data will
be out of sync - The time unit is currently ‘time since turned on’, and
not a date-time unit. I’ll probably look to add this in if there’s
demand for it

Once you’ve uploaded the data and changed your settings, hit the
‘Process’ button and move to the ‘Analyse Data’ tab. After it loads
you’ll find plots of the central device (plot tab 1) and L/R devices
(plot tab 2). You’ll also find data inputs for details about the
session, or space to add a new athlete to the database.
