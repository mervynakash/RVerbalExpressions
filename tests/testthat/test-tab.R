context("test-rx_tab")

test_that("tab special character works", {
  # expect minimal output
  expect_equal(rx_tab(), "\\t")

  # expect match
  expect_true(grepl(rx_tab(), "\t"))

  # expect match
  expect_true(grepl(rx_tab(), "hello\tworld"))

  # expect inverse behavior
  expect_false(grepl(rx_tab(inverse = TRUE), "\\t"))

  # expect matching carriage returns and newlines
  expect_true(grepl(rx_tab(inverse = TRUE), "\\r"))
  expect_true(grepl(rx_tab(inverse = TRUE), "\\n"))

  # expect error if incorrect value to inverse arg
  expect_error(rx_tab(inverse = 1))

})
