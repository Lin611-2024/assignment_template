runtests <- function(){
  if (!fs::dir_exists(here::here("tests", "R"))){
    fs::dir_create(here::here("tests", "R"))
  }
  
  knitr::purl(
    here::here("assignment.qmd"), 
    output = here::here("tests", "R", "assignment.R")
  )
  
  rscript <- readr::read_lines(here::here("tests", "R", "assignment.R"))
  scrubbed_rscript <- lapply(
    rscript,
    \(x) ifelse(
      stringr::str_detect(x, "runtests", negate = T),
      x, 
      ""
    )
  ) |>
    unlist()
  
  readr::write_lines(
    scrubbed_rscript,
    here::here("tests", "R", "assignment.R")
  )
  
  source(here::here("tests", "testthat.R"))
}
