#' Car parking data for Bath and North East Somerset
#'
#' Contains datasets of records from 8 car parks located in Bath, United
#'  Kingdom, and some functions for working with these records. Data is
#'  open-source and is provided by Bath and North East Somerset Council in
#'  collaboration with Bath: Hacked. See \href{http://bit.ly/2i3Y1uF}{here}
#'  for the original dataset.
#'
#' @docType package
#' @name BANEScarparking-package
#' @author Owen Jones (\email{olj23@@bath.ac.uk})

NULL

## Quiets concerns of R CMD check re variables that appear in pipelines
if(getRversion() >= "2.15.1")  {
    utils::globalVariables(c(".", "GMT", "month", "year", "day",
                             "max_gust_kmph", "precip_type", "Date",
                             "name", "lastupdate", "dateuploaded", "occupancy",
                             "capacity", "status", "Name", "Status",
                             "Occupancy", "Capacity", "Proportion",
                             "LastUpdate", "DateUploaded"))
}