
<!-- README.md is generated from README.Rmd. Please edit that file -->

# squirrels.fusen

<!-- badges: start -->

[![R-CMD-check](https://github.com/statnmap/squirrels.fusen/workflows/R-CMD-check/badge.svg)](https://github.com/statnmap/squirrels.fusen/actions)
[![Codecov test
coverage](https://codecov.io/gh/statnmap/squirrels.fusen/branch/main/graph/badge.svg)](https://codecov.io/gh/statnmap/squirrels.fusen?branch=main)
<!-- badges: end -->

The goal of {squirrels.fusen} is to present an example of package built
with [{fusen}](https://github.com/ThinkR-open/fusen).  
This goes along with my presentations available in
<https:://github.com/statnmap/prez>.

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("statnmap/squirrels.fusen")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(squirrels.fusen)
## basic example code
# A working example
my_data_example <- data.frame(
  lat = c(40.77, 40.78),
  long = c(-73.95, -73.96),
  primary_fur_color = c("grey", "black")
)
check_data_integrity(my_data_example)
#> All tests are good !
```
