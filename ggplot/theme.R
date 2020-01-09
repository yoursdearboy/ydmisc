theme_yd <- function(...) {
  theme_bw(base_size = 12, ...) %+replace%
    theme(strip.background = element_rect(fill = 'white'),
          panel.grid.major = element_line(size = .2, color = '#ebebebFF'),
          panel.grid.minor = element_line(size = .1, color = '#ebebebFF'))
}

update_geom_defaults(GeomBar, list(fill = 'white', color = '#333333'))
