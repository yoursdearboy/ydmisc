ggplot_add.labsler <- function(object, plot, object_name) {
  #' Allow to add labsler functions to ggplot objects.
  #' labsler is a function which receives ggplot object on input
  #' and returns list of axes labels
  update_labels(plot, object(plot))
}

as_labsler <- function(translations = list(), mapping = NULL){
  #' as_labeller for labs
  #' 
  #' @param translations List where names maps to ones used in aes and values are text labels
  #' @param mapping Optionally override aes of plot
  fun <- function(plot) {
    res <- c(mapping, plot$mapping)
    res <- res[unique(names(res))]
    res %<>% map(function(x) {
      if (is.null(x)) return(NULL)
      x <- as_label(x)
      if (x %nin% names(translations)) return(x)
      translations[[x]]
    })
    res
  }
  structure(fun, class = 'labsler')
}

# ggplot(tibble(a = 1, b = 2), aes(a, b)) +
#   geom_blank() +
#   as_labsler(list(a = 'The a', b = 'The b'), aes(x = WHOA))
