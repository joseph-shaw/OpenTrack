
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

The current version of OpenTrack calculates impact counts and
magnitudes, jump counts and heights, PlayerLoad, and other common
training load variables. It will also output both raw and processed
time-series for each device uploaded. OpenTrack is designed to work with
either a .csv or SQL databases, both of which can be edited from within
the platform.

## Installation

These instructions assume you have R and Rstudio installed. If you
don’t, install them from here: R - <https://cran.r-project.org/>;
Rstudio - <https://www.rstudio.com/products/rstudio/download/#download>.

OpenTrack is tricky to install at the moment, probably because I haven’t
built the package properly. If you know how to make it so all the
dependencies install automatically, feel free to contact me and tell me
how… Equally, if you’re just struggling to install it, please feel free
to contact me.

To run OpenTrack, you will need to: 1) make a copy of this repository in
your system’s ‘R’ folder, 2) install the dependencies, 3) download and
install the package.

1.  Make a copy of this repository in your system’s ‘R’ folder:  
    Click the green button at the top of this page, download a zip. Once
    it’s downloaded, right click and extract all to your system’s R
    folder, normally in C:/Users/yourname_/Documents/R

At this point you should have this repository in the folder:
C:/Users/yourname\_/Documents/R/OpenTrack (or OpenTrack-main)

Open the OpenTrack project from this folder.

2.  The next step is to install the dependencies:  
    Press ctrl + shift + B. This won’t install OpenTrack fully, but it
    seems the simplest way to install RTools.

Once it’s done, run this code line-by-line in the console:

``` r
install.packages("tidyverse")
#install.packages("devtools")
### devtools::install_github("cvarrichio/rowr") 
### devtools::install_github("wleepang/shiny-directory-input") ### Check if this is needed?
devtools::install_version("shinydashboardPlus", version = "0.7.5", repos = "http://cran.us.r-project.org")
```

3.  Download and install the package:

Once those packages have installed, run this code:

``` r
#install.packages("devtools")
devtools::install_github("joseph-shaw/OpenTrack")
```

If it asks you to update packages just skip it. If you update
shinydashboardPlus to 2.0.0 the app won’t work.

Alternatively, at this point you can just build and install the package
yourself.

If you encounter an error regarding functions exported from
shinydashboardPlus, just remove the current installation of
shinydashboardPlus and reinstall as above (you may have to delete the
folder from your package library).

## Getting Started

Before you begin you’ll need to alter several files within the
‘settings’ folder (“\~R/OpenTrack/settings”) - if you don’t do this then
OpenTrack won’t run properly. You’ll also need to decide whether you
want to database using SQL or csv. If you want to use SQL then there’s a
script to recreate the “Athlete\_Database” SQL database required in this
repo (create\_sql.txt), which you can set up on your own server.

Here are the settings files you’ll need to edit.

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
    where the app can look for files. Simply enter the required file
    paths and a name for the location you want to use. For example, to
    add your documents folder, add ‘Documents’ in the name column, and
    “C:/Users/yourname\_” in the location column.

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

The data you’re uploading has to be in a specific format, 4 or 7 named
columns (names don’t matter) providing:  
1. The time since the device was turned on 2:4. X, Y, and Z acceleration
(i.e., accelerometer data) 5:7 (optional). X, Y, and Z angular
acceleration (i.e., gyroscope data) You can see that in the files called
‘example\_upload.csv’ or ‘example\_upload\_acc\_only.csv’ in this repo.

Once you’ve uploaded the data and changed your settings, hit the
‘Process’ button and move to the ‘Analyse Data’ tab. After it loads
you’ll find plots of the central device (plot tab 1) and L/R devices
(plot tab 2). You’ll also find data inputs for details about the
session, or space to add a new athlete to the database.

Click and drag the central plot to clip a session. This will change the
summary row in the ‘Database’ tab, or the data output in the ‘Dashboard’
tab. Double-click the plot to zoom back out. Add the session to the
database by clicking the ‘Add session to database’ button. This will add
a new row with the selected session to the database and create a copy of
the processed time-series in the ‘Opentrack/clipped-sessions’ folder.
Make sure you don’t have the database open elsewhere (e.g., in Excel)
when you do this.
