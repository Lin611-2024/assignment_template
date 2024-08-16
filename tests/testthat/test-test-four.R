library(testthat)
source(here::here("tests", "R", "assignment.R"))

test_that("assignment", {
  expect_equal(four, 4)
})

