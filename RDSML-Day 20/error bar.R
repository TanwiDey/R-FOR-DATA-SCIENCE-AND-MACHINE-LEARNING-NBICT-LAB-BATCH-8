#styling plots for publications
library (ggplot2)
install.packages("ggthemes")
library(ggthemes)
library(viridis)
#sample data oading
df=mtcars
df$cyl= as.factor(df$cyl)
ggplot(df, aes(x = wt, y = mpg, color = cyl)) +
  geom_point(size = 3) +
  scale_color_viridis_d(name = "cylinders") +
  labs (title = "fuel efficiency by car weight", x = "weight (1000 lbs)", y = "miles per gallon") +
  theme_classic (base_size = 14, base_family = "serif") +
  theme_classic (plot.title = element_text(face = "bold", size = 16))




p= ggplot(df, aes(x = wt, y = mpg, color = cyl)) +
  geom_point(size = 3) +
  scale_color_viridis_d(name = "Cylinders") + 
  labs(
    title = "Fuel Efficiancy by Car Weight",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon"
  ) + 
  theme_classic(base_size = 14, base_family = "serif") +
  theme(plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
        axis.title = element_text(face = "bold", size = 14)
  )

ggsave ("publication_ggplot.png" , p, width = 6, height = 4,  dpi =300)
