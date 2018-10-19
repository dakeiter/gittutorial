
.libPaths("C:/Users/dkeiter2/Desktop/RPackages")

library(tidyverse)

#automatically add themes
source("R/themes.R")

fishdat<-read_csv("C:/Users/dkeiter2/Desktop/Classes/DataMgmtVis/2018-10-05/gittutorial/data/Gaeta_etal_CLC_data.csv")


fishdat %>% 
  mutate(length_cat=(case_when(length>=300 ~ "big",
                              length<300 ~ "small")))->fishdat

ggplot(data = fishdat)+
  geom_histogram(aes(x=scalelength, fill=length_cat))+
  facet_wrap(~length_cat)+
  theme_publication()
  


