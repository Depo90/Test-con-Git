library(tidyverse)
library(readxl)
mtcars

df = mtcars %>% 
  filter(mpg > 20)

db_1 = read_excel("db_test_git.xlsx")
