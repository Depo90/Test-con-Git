library(tidyverse)

mtcars

df = mtcars %>% 
  filter(mpg > 20)
