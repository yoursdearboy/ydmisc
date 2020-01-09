skewkurt <- function(x, na.rm = T, ...) {
  #' Skewness and kurtosis
  #'
  #' Kurtosis calculated w/o -3 ammendment.
  s <- moments::skewness(x, na.rm = na.rm)
  k <- moments::kurtosis(x, na.rm = na.rm)
  as.tbstat(c(s, k), sep = ' / ')
}

countpctNA <- function (x, levels = NULL, na.rm = NULL, weights = rep(1, length(x)), 
                            ...) 
{
  #' Count (% including NA)
  if (is.factor(x)) {
    x <- fct_explicit_na(x, 'Нет данных')
  } else {
    x[is.na(x)] <- 'Нет данных'
  }

  if (is.null(levels)) 
    levels <- sort(unique(x))

  tbl <- table(x)
  if ('Нет данных' %in% names(tbl)) {
    tbl <- tbl[c('Нет данных', names(tbl)[names(tbl) != 'Нет данных'])]
  }

  as.tbstat_multirow(lapply(map(tbl, ~ c(., . / length(x) * 100)), as.countpct, 
    parens = c("(", ")"), pct = "%", which.pct = 2L))
}


arsenal_stats_labels <- list(
  N = "N",
  Nmiss = "Нет данных",
  meansd = "Среднее (СКО)",
  medianq1q3 = "Медиана (Q1, Q3)",
  range = "Минимум - Максимум",
  skewkurt = "Ассиметрия / Эксцесс"
)
