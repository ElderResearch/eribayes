
test_that("namespace loading succeeds", {
  expect_true(check_for_packages("base"))
  expect_true(check_for_packages(c("base", "stats")))
})

test_that("namespace loading fails", {
  capture_output(expect_error(
    check_for_packages("pkg.3860264"),
    regexp = "^Please install")
  )
  capture_output(expect_error(
    check_for_packages(c("base", "pkg.3860264")),
    regexp = "^Please install")
  )
})

test_that("counting is correct", {
  capture_output(expect_error(
    check_for_packages("pkg.3860264"),
    regexp = "^Please install the 1")
  )
  capture_output(expect_error(
    check_for_packages(c("pkg.3860264", "pkg.4010831")),
    regexp = "^Please install the 2")
  )
})
