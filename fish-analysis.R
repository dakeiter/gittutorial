
.libPaths("C:/Users/dkeiter2/Desktop/RPackages")

library(tidyverse)

#automatically add themes
source("R/themes.R")

fishdat<-read_csv("C:/Users/dkeiter2/Desktop/Classes/DataMgmtVis/2018-10-05/gittutorial/data/Gaeta_etal_CLC_data.csv")

fishdat<-read_csv("data/Gaeta_etal_CLC_data.csv")


fishdat %>% 
  mutate(length_cat=(case_when(length>=300 ~ "big",
                              length<300 ~ "small")))->fishdat

ggplot(data = fishdat)+
  geom_histogram(aes(x=scalelength, fill=length_cat))+
  facet_wrap(~length_cat)+
  theme_publication()
  

## Chris's modifications

ggplot() +
  geom_histogram(data = fishdat, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))

