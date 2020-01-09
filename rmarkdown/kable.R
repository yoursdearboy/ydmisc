print_kable <- function(x,
                        kable.options = list(format = 'html'),
                        kableExtra.options = list(full_width = F, position = 'left'),
                        ...)
{
  #' Prints using kable and kableExtra
  kable.options <- c(list(...), kable.options)
  res <- x
  res <- do.call(knitr::kable, c(list(res), kable.options))
  res <- do.call(kableExtra::kable_styling, c(list(res), kableExtra.options))
  res
}
