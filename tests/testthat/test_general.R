context("General tests for smurf")

test_that("Test GAM penalty weights", {
  
  formu2 <- rentm ~ p(area, pen = "gflasso", refcat = 3) + p(size, pen = "flasso") + p(year, pen = "lasso")
  
  expect_error(suppressWarnings(glmsmurf(formu2, family = gaussian(), data = rent,
                                         pen.weights = "gam.stand", lambda = 0.01404071, 
                                         control = list(eps = 1e-5))),
               NA)
})


test_that("Test lambda1 and lambda2 penalty weights", {
  
  expect_error(suppressWarnings(glmsmurf(formu, family = gaussian(), data = rent,
                                         pen.weights = "glm.stand", lambda = 0.01404071,
                                         lambda1 = 0.1, lambda2 = 0.2,
                                         control = list(eps = 1e-5))),
               NA)
})


test_that("Test low step size warning", {
  
  expect_warning(glmsmurf(formu, family = gaussian(), data = rent,
                                         pen.weights = "glm.stand", lambda = 0.01404071,
                                         control = list(step = 1e-15, eps = 1e-5)),
                 paste0("The step size is below ", 1e-14, " and is no longer reduced. ",
                        "It might be better to start the algorithm with a larger step size."))
})


test_that("Test print", {
  
  expect_error(invisible(capture.output(glmsmurf(formu, family = gaussian(), data = rent,
                                                 pen.weights = "glm.stand", lambda = 0.01404071,
                                                 control = list(print = TRUE, eps = 1e-5)))),
                 NA)
})


test_that("Test glmsmurf.fit", {
  
  # Run glmsmurf.fit with ordinary matrix type (for X)
  expect_error(glmsmurf.fit(X = as.matrix(munich.fit$X), y = munich.fit$y, weights = munich.fit$weights, 
                            start = munich.fit$coefficients * runif(length(munich.fit$coefficients)), 
                            offset = munich.fit$offset, 
                            family = munich.fit$family, 
                            pen.cov = munich.fit$pen.cov, n.par.cov = munich.fit$n.par.cov, 
                            group.cov = munich.fit$group.cov, refcat.cov = munich.fit$refcat.cov,
                            lambda = munich.fit$lambda, pen.weights = munich.fit$pen.weights),
               NA)
})

glmsmurf.fit
