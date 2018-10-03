---
  title: "Ufo"
output: html_document
---

  library(tidyverse)
  
  ufo <- read_csv("Desktop/R/ufo.csv")
  ufo %>% head()
  
  ufo.count <- ufo %>% count()
  
  paste("There were", ufo.count, "UFO sightings")
  
  ufo$state %>% unique() %>% length()
  
  ufo$state %>% unique()
  
  ufo %>% 
    group_by(state) %>% 
    summarise(avg.duration = mean(`duration (seconds)`)) %>% 
    arrange(desc(avg.duration)) 
  
  ufo %>% 
    group_by(state) %>% 
    summarise(number.sightings = n()) %>% 
    arrange(desc(number.sightings))
  
  ufo %>% 
    group_by(shape) %>% 
    summarise(shape.count = n()) %>% 
    arrange(desc(shape.count))
  