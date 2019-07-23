library(tidyverse)
library(readxl)

# caricamenti
df = mtcars %>% 
  filter(mpg > 20 & cyl == 6)

db_1 = read_excel("db_test_git.xlsx")

# plot
plot = df %>% 
  ggplot(aes(x = mpg, y = hp, color = carb)) +
  geom_point() +
  theme_bw()

# export

ggsave(plot = plot,"scatter.png", width = 7, height = 5)
