#' Car Parking Data for Bath and North East Somerset
#'
#' Contains all records from 8 car parks located in Bath, United Kingdom, taken
#'  between October 2014 and December 2016. Data is open-source and is provided
#'  by Bath and North East Somerset Council in collaboration with Bath: Hacked,
#'  and has been processed in the way documented in \code{\link{refine}}.
#'
#' @source BANES Council, Bath: Hacked. See \url{http://bit.ly/2i3Y1uF} for the
#'  original dataset and \url{http://bit.ly/2i3Ub4U} for associated
#'  documentation.
#'
#' @format Data frame with 1315713 records of 7 variables:
#' \describe{
#'  \item{Name}{name of car park}
#'  \item{LastUpdate}{time record was taken}
#'  \item{DateUploaded}{time record was uploaded to server}
#'  \item{Occupancy}{number of cars present}
#'  \item{Capacity}{number of available spaces}
#'  \item{Status}{indicates change in occupancy since last record was taken}
#'  \item{Proportion}{calculated as (Occupancy/Capacity)}
#' }
#'

#' @name full_dataset
"full_dataset"


#' Weather for 2014-10 to 2016-12
#'
#' Daily weather records for Bath from
#'  \href{https://www.wunderground.com/history/airport/EGTG/}{wunderground.com}
#'  for 2014-10-17 to 2016-12-27
#'
#' @format Data frame with 803 records of 8 variables:
#' \describe{
#'  \item{Date}{date of record}
#'  \item{MeanTemperatureC}{mean air temperature in degrees Celsius}
#'  \item{MeanHumidity}{mean air humidity, as a percentage}
#'  \item{MeanWindSpeedKmh}{mean wind speed in km/h}
#'  \item{Precipitationmm}{daily rainfall in mm}
#'  \item{Rain}{logical indicating presence of rain}
#'  \item{Fog}{logical indicating presence of fog}
#'  \item{Snow}{logical indicating presence of snow}
#' }
#'
#' @name weather
"weather"


#' Bath Rugby home matches
#'
#' Dates and kick-off times for Bath Rugby's home matches from September 2014 to
#'  December 2016, and the outcome of each match
#'
#' @format Data frame with 43 records of 2 variables:
#' \describe{
#'  \item{GMT}{kick-off time and date}
#'  \item{HomeWin}{logical indicating whether Bath were victorious}
#' }
#'
#' @name rugby
"rugby"


#' Number of advertised events in Bath by date
#'
#' The number of events listed on \url{http://www.bath.co.uk/events/} for each
#'  day in October 2014 through to December 2016.
#'
#' @format Data frame with 823 records of 2 variables:
#' \describe{
#'  \item{Date}{date-time object}
#'  \item{count}{number of listed events}
#' }
#'
#' @name events
"events"


