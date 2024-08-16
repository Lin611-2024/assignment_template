source(here::here("tests", "R", "assignment.R"))

testthat::test_that("assignment", {
  expect_equal(four, 4)
})

