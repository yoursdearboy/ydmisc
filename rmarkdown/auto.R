print.tbl_df <- function(...) {
  #' Automatically prints all tibbles using kable and kableExtra
  htmltools::knit_print.html(print_kable(...))
}
