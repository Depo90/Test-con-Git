library(tidyverse)
library(readxl)

# caricamenti
df = mtcars %>% 
  filter(mpg > 20 & cyl == 6)

db_1 = read_excel("db_test_git.xlsx")

# plot
for (i in unique(mtcars$carb)){
  
  plot = df %>% 
    ggplot(aes(x = mpg, y = hp, color = am)) +
    geom_point() +
    theme_bw()
  
  # export
  ggsave(plot = plot,paste("Carb_",unique(mtcars$carb)[i],"_scatter.png"), width = 7, height = 5)
}
