context("swli")

test_that("swli generates default correctly", {
  expect_equal(length(swli()), 3)
  expect_equal(class(swli()), "character")
  expect_equal(swli() == "", rep(FALSE, 3))
  })

test_that("swli paragraph parameter works", {
  n <- 4
  expect_equal(length(swli(n)), n)
  expect_equal(class(swli(n)), "character")
  expect_equal(swli(n) == "", rep(FALSE, n))

  n <- 1
  expect_equal(length(swli(n)), n)
  expect_equal(class(swli(n)), "character")
  expect_equal(swli(n) == "", rep(FALSE, n))

  n <- 0
  expect_equal(length(swli(n)), 5)
  expect_equal(class(swli(n)), "character")
  expect_equal(swli(n) == "", rep(FALSE, 5))

})

test_that("swli type works correctly", {
  expect_equal(length(swli(type = "people")), 3)
  expect_equal(class(swli(type = "people")), "character")
  expect_equal(swli(type = "people") == "", rep(FALSE, 3))

  options <- c("e4", "e5", "e6", "places", "people")
  expect_equal(
    length(unique(t(mapply(swli, type = options
                           , paragraphs = 1)))), 
    length(options)
  )
})

test_that("swli errors with incorrect values", {
  expect_error(swli("1"))
  expect_error(swli(type="1"))
  expect_error(swli(src=1))
})

test_that("swli errors with current github version of js", {
         expect_error(swli(src="github")
                      , "Error : ReferenceError: window is not defined\n")
})
