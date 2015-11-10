## summarize data to species richness by plot and year
e418 <- read.csv("data/e418.csv")

suppressMessages(library(dplyr))

spRichData <- group_by(e418,Year,Plot,Specific.epithet) %>%
  summarize(NumSp=first(NumSp)) %>%
  summarize(InsectRich = n(), NumSp=first(NumSp))
