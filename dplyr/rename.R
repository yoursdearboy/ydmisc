as_renamer <- function(translations = list()) {
  #' Renames columns according to list names and their values
  #' 
  #' @param translations List where names are column names and values are translations
  fun <- function(x) {
    map(x, function(y) {
      if (y %in% names(translations)) {
        translations[[y]]
      } else {
        y
      }
    })
  }
  structure(fun, class = 'renamer')
}
