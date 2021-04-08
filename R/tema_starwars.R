

tema_starwars <- function() {
  theme(
    text = element_text(
      colour = "#dc9999",
      family = "Calibri",
      size = 8
    ),
    plot.title = element_text(
      family = "Calibri",
      hjust = 0.5,
      size = 14
    ),
    axis.text = element_text(color = "white"),
    axis.ticks.x = element_line(color = "white"),
    panel.background = element_rect(fill = "grey"),
    legend.position = "bottom",
    legend.background = element_rect(fill = "black", color = "black"),
    plot.background = element_rect(fill = "black", color = "black")
  )
}
