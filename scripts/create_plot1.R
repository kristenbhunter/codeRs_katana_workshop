library(ggplot2)
library(palmerpenguins)

filename <- "/home/z0000000/coders/plot.png"
point.colour <- "#FFE600"

out <- ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(colour = point.colour)

ggsave(filename = filename, plot = out)

