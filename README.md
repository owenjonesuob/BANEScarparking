# **BANEScarparking**

Status: [![Build Status](https://travis-ci.org/owenjonesuob/BANEScarparking.svg?branch=master)](https://travis-ci.org/owenjonesuob/BANEScarparking)

Dataset of parking records from 8 car parks located in Bath, United Kingdom; datasets of potentially relevant information for predicting car park occupancy; and functions for obtaining and working with these datasets.

Parking data is open-source and is provided by Bath and North East Somerset Council in collaboration with Bath: Hacked.

If you just want the functions without the datasets, you can find a stripped-down version of the package at [BANEScarparkinglite](https://github.com/Bath-ML/parking/tree/master/r/BANEScarparkinglite).

> #### **What's new in v0.1.5:**
>
> Additions:
>
> * Individual by-month/by-carpark datasets removed, because:
>     - Names containing numbers, underscores and plus-signs were difficult to use (often needed to be enclosed in backticks) and were also causing R CMD check (and hence Travis build) to fail.
>     - These datasets were just subsets of `full_dataset` and so were somewhat unnecessarily increasing the size of the package. It's simple enough to filter `full_dataset` to a specific carpark or date range if needed.
> * Travis CI is now being used to check the build.
> * Updated to MIT license.
> * @rkenning has proper credit as an author/contributor.
> * NEWS file added to keep a record of changes.
>
> Bugfixes:
> 
> * `get_events_detail` now correctly references functions from other packages, and it has a shiny new progress bar.
> * `get_events` would fail if you tried to start from the first day of a month. It doesn't do that any more. And it was jealous of `get_events_detail`'s progress bar, so it has one too.
> * `get_rugby` just plain wasn't working. It is now.
> * Examples in documentation have been corrected.

---

### **Package contents**

#### Data:

* Tidied parking records from 2014-10-17 to 2016-12-27
* Daily weather summary from 2014-10-17 to 2016-12-27
* Dates, kick-off times and outcomes for Bath Rugby home matches from 2014-09 to 2016-12
* Daily count of events advertised at www.bath.co.uk/events from 2014-10 to 2016-12

#### Functions:

* `get_all_crude` (and `get_range_crude`) for retrieving the full dataset (or a subset) of records from Bath: Hacked datastore
* `refine` for processing the raw records
* `refuel` and `refuel_crude` for updating existing data frames with recent records
* `get_rugby`, `get_events` (and `get_events_detail`) and `get_daily_weather` for obtaining information through web-scraping

---

### **Installation**

To install the package just run this command in the R console:
```
devtools::install_github("owenjonesuob/BANEScarparking")
```
(You'll need the `devtools` package to do this - you can install it with `install.packages("devtools")`)

Then you can load the package with
```
library(BANEScarparking)
```
and you should be good to go!

---

**Version:** 0.1.5 (released 2017-08-27)

**Contact:** Owen Jones (olj23@bath.ac.uk)
