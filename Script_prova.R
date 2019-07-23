library(tidyverse)
library(readxl)

# caricamenti
df = mtcars %>% 
  filter(mpg > 20)

db_1 = read_excel("db_test_git.xlsx")

# plot
df %>% 
  ggplot(aes(x = mpg, y = hp, color = carb)) +
  geom_point()
