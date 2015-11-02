## calculate species richness of insects and plot against
## species added

## assert that dataframe exists
stopifnot(exists("e418"))

suppressMessages(library(dplyr))

spRichData <- group_by(e418,Year,Plot,Specific.epithet) %>%
  summarize(NumSp=first(NumSp)) %>%
  summarize(InsectRich = n(), NumSp=first(NumSp))
old.par=par(mar=c(5,4,0,0))
plot(InsectRich~jitter(NumSp),xlab="Number of added species",
     ylab="Number of insect species per year",
     data=spRichData)
par(old.par)
