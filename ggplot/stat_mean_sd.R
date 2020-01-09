StatMeanSd <- ggproto("StatMeanSd", Stat,
  compute_group = function(data, scales, scale = 1, trim = 0) {
    if (trim == 0) {
      data %>%
        group_by(x) %>%
        summarise(size = scale * log(sd(y, na.rm = T)),
                  y = mean(y, na.rm = T))
      } else {
        data %>%
          group_by(x) %>%
          summarise(size = scale * log(sd(DescTools::Trim(y, trim = trim, na.rm = T))),
                    y = mean(DescTools::Trim(y, trim = trim, na.rm = T)))
        }
    })

stat_mean_sd <- function(mapping = NULL, data = NULL, geom = "point",
                         position = "identity", na.rm = FALSE, show.legend = NA,
                         inherit.aes = TRUE, color = '#A73030', ...) {
  layer(
    stat = StatMeanSd, data = data, mapping = mapping, geom = geom,
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, color = color, ...)
  )
}
