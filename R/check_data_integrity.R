#' Check data integrity
#'
#' @param x dataframe with at least colums "lat", "long" and "primary_fur_color"
#'
#' @return Original dataframe if all tests are good. Otherwise stops.
#' @export
#' @examples
#' # A working example
#' my_data_example <- data.frame(
#'   lat = c(40.77, 40.78),
#'   long = c(-73.95, -73.96),
#'   primary_fur_color = c("grey", "black")
#' )
#' check_data_integrity(my_data_example)
check_data_integrity <- function(x) {
  # Verify points are in New York around Central Park
  all_coords_ok <- all(
    c(
      min(x[["lat"]]) > 40.76400,
      max(x[["lat"]]) < 40.80100,
      min(x[["long"]]) > -73.98300,
      max(x[["long"]]) < -73.94735
    )
  )
  if (!all_coords_ok) {stop("Not all data are in Central Park")}
  
  # Verify there is only one color in primary_fur_color.
  # A `+` in the column is a sign of multiple colours
  if (any(grepl("+", x[["primary_fur_color"]], fixed = TRUE))) {
    stop("There are multiple colors in some 'primary_fur_color'")
  }
  
  message("All tests are good !")
}
