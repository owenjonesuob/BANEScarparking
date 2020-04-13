# **BANEScarparking**

![retired](https://img.shields.io/badge/lifecycle-retired-orange)
[![travis-ci.org](https://travis-ci.org/owenjonesuob/BANEScarparking.svg?branch=master)](https://travis-ci.org/owenjonesuob/BANEScarparking)
[![codecov.io](https://codecov.io/github/owenjonesuob/BANEScarparking/coverage.svg?branch=master)](https://codecov.io/github/owenjonesuob/BANEScarparking?branch=master)

---

## BANEScarparking is retiring

We had a blast. This little package, `{BANEScarparking}` did its job splendidly for several years: simplifying access to the BANES historic car park occupancy dataset for our original group at BathML, and for independent researchers at Bath Uni and beyond, and for car park occupancy enthusiasts everywhere.

Over time, bits and pieces have broken and fallen off. The weather API was bought and closed by a private firm; the Bath Rugby website changed structure such that scraping became awkward; and now, at long last, Bath Hacked's marvellous datastore (the source underlying dataset of car parking records) has officially [been retired](https://www.bathhacked.org/news/retiring-the-datastore/).

Though the data will soon once again be accessible through Bath Hacked's [shiny new datastore](https://data.bathhacked.org/), `{BANEScarparking}` has served its purpose for now. As it heads into the sunset we wave fondly, and with an "au revoirparking" we part ways, for now.

---


Dataset of parking records from 8 car parks located in Bath, United Kingdom; datasets of potentially relevant information for predicting car park occupancy; and functions for obtaining and working with these datasets.

Parking data is open-source and is provided by Bath and North East Somerset Council in collaboration with Bath: Hacked.

If you just want the functions without the datasets, you can find a stripped-down version of the package at [BANEScarparkinglite](https://github.com/Bath-ML/parking/tree/master/r/BANEScarparkinglite).

> #### **What's new in v0.2.0:**
>
> Additions:
>
> * All available car parking records up to end of 2017 added to `full_dataset` (the sensors on both SouthGate car parks have been out of action since November 2016 so there's no new data for either of those)
> * `rugby` dataset updated: now contains dates/results of all Bath Rugby home games from September 2014 to end of 2017
> * `events` dataset updated: now contains event counts for each day from 2014-10-17 to 2017-12-31
> * `weather` dataset updated: now contains daily weather report for each day from 2014-10-17 to 2017-12-31, and the format is a bit nicer
> * `get_daily_weather` produces the nicer-format weather table for any given date range (no longer limited to retrieving 398 records in one go...)

---

### **Package contents**

#### Data:

* Tidied parking records from 2014-10-17 to 2017-12-31
* Daily weather summary from 2014-10-17 to 2017-12-31
* Dates, kick-off times and outcomes for Bath Rugby home matches from 2014-09 to 2017-12
* Daily count of events advertised at www.bath.co.uk/events from 2014-10-17 to 2017-12-31

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
You'll need the `devtools` package to do this - you can install it with `install.packages("devtools")`

Then you can load the package with
```
library(BANEScarparking)
```
and you should be good to go!

---

**Version:** 0.2.0 (released 2018-01-20)

**Contact:** Owen Jones (olj23@bath.ac.uk)
