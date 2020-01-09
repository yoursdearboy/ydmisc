TwoSampleMean.Equality <- function (alpha, beta, sigma, k, margin)
{
  #' Fixed version of `TrialSize::TwoSampleMean.Equality`
  n2 <- (qnorm(1 - alpha/2) + qnorm(1 - beta))^2 * sigma^2 *
    (1 + 1/k)/margin^2
  n1 <- k * n2
  list(n1, n2)
}
