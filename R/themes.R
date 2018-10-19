
theme_publication <- function(base_size = 12, base_family = "") {
  theme_light(base_size = base_size, base_family = base_family) %+replace%
    theme(
      plot.title = element_text(color = "grey10", 
                                face = "bold", 
                                hjust = 0.5, 
                                vjust = 2),
      axis.title.x = element_text(size = 12, colour = "grey25"),
      axis.title.y = element_text(size = 12, colour = "grey25", angle = 90, vjust = 1),
      axis.text = element_text(color = "grey25", 
                               size = 10),
      panel.background = element_rect(fill = "transparent",
                                      colour = NA),
      plot.background = element_rect(fill = "transparent"),
      legend.position = c(.8,.2),
      legend.background = element_rect(fill = "transparent", colour = NA),
      legend.key = element_rect(fill = "transparent", colour = NA),
      legend.text = element_text(size = 12, colour = "grey35"),
      legend.title = element_text(size = 12, colour = "grey35")
      
    )
}


theme_presentation <- function(base_size = 28, base_family = "") {
  theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    theme(
      plot.title = element_text(color = "grey10", 
                                face = "bold", 
                                hjust = 0.5, 
                                vjust = 4),
      axis.title.x = element_text(size = 20, colour = "grey25"),
      axis.title.y = element_text(size = 20, colour = "grey25", angle = 90, vjust = 3),
      axis.text = element_text(color = "grey25", 
                               size = 14),
      axis.line.x.bottom = element_line(colour = "grey80"),
      panel.background = element_rect(fill = "transparent",
                                      colour = NA),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(size = .5, colour = "grey80"),
      plot.background = element_rect(fill = "transparent"),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.background = element_rect(fill = "transparent", colour = NA),
      legend.key = element_rect(fill = "transparent", colour = NA),
      legend.text = element_text(size = 16, colour = "grey35"),
      legend.title = element_text(size = 16, colour = "grey35"),
    )
}
