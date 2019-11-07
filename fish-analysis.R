fish_data <- read.csv("data/Gaeta_etal_CLC_data1.csv")
library(dplyr)
#Create categorical size column
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

library(tidyverse)
ggplot(fish_data) +
  geom_point(mapping = aes(x = length, y = scalelength, color = lakeid))
