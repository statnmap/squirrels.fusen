my_data_example <- data.frame(
  lat = c(40.77, 40.78),
  long = c(-73.95, -73.96),
  primary_fur_color = c("grey", "black")
)
my_data_example_error <- data.frame(
  lat = c(40.77, 40.78),
  long = c(-73.95, -73.96),
  primary_fur_color = c("grey+blue", "black") # not unique color
)

test_that("check_data_integrity works correctly", {
  expect_message(check_data_integrity(my_data_example), "All tests are good !")
  expect_error(check_data_integrity(my_data_example_error), "multiple colors")
})
