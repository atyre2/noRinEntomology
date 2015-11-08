## summarize data to species richness by plot and year

suppressMessages(library(dplyr))

spRichData <- group_by(e418,Year,Plot,Specific.epithet) %>%
  summarize(NumSp=first(NumSp)) %>%
  summarize(InsectRich = n(), NumSp=first(NumSp))
