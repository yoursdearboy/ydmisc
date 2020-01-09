axis_x_boxplot <- function(...) {
  #' Make x axis ticks look like text
  theme(axis.text.x = element_text(size = 12, color = 'black'),
        axis.title.x = element_blank())
}

axis_x_blank <- function(...) {
  #' Blank X axis
  theme(axis.text.x = element_text(size = 12, color = 'transparent'),
        axis.title.x = element_blank(),
        axis.ticks.x = element_line(color = 'transparent'))
}
