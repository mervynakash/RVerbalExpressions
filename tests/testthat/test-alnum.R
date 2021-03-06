context("test-rx_alnum")

test_that("alnum works", {

  # expect match
  expect_true(grepl(rx_alnum(), "abc123"))

  # dont expect match
  expect_false(grepl(rx_alnum(), "!"))

  # expect pipe functionality to work
  expect_equal(rx() %>% rx_start_of_line() %>% rx_alnum(), "^[[:alnum:]]")

})
