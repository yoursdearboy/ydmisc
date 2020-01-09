scale_x_before_after <- function(...) {
  scale_x_discrete(limits = c('before', 'after'), labels = c('До', 'После'), name = NULL, ...)
}

scale_y_density <- function(...) {
  scale_y_continuous(expand = c(0,0,.05,0), name = 'Density', ...)
}
