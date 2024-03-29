fish_data <- read.csv("data/Gaeta_etal_CLC_data1.csv")
library(dplyr)
#Create categorical size column
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

library(tidyverse)
ggplot(fish_data) +
  geom_point(mapping = aes(x = length, y = scalelength, color = lakeid))






#try this 
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat, binwidth = 80)) +
  geom_histogram(bins = 80)
