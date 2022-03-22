
test_that("pluralization works without any base", {
  expect_equal(s(1), "")
  expect_equal(s(1:2), "s")
})

test_that("pluralization appends \"s\" to a base base", {
  expect_equal(s(1, "input"), "input")
  expect_equal(s(1:2, "input"), "inputs")
})
