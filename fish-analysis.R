
.libPaths("C:/Users/dkeiter2/Desktop/RPackages")

library(tidyverse)

#automatically add themes
source("R/themes.R")

fishdat<-read_csv("C:/Users/dkeiter2/Desktop/Classes/DataMgmtVis/2018-10-05/gittutorial/data/Gaeta_etal_CLC_data.csv")

fishdat %>% 
  mutate(length_cat=(ifelse(length>=200, "big", "small")))->fishdat

fishdat %>% 
  mutate(length_cat=(case_when(length>=200 ~ "big",
                              length<200 ~ "small")))->fishdat




