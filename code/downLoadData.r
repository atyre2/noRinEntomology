## Checks if data present. If not, downloads data from Cedar Creek LTER
## cleans up variable names 
library(repmis) # for source_data()

if(!exists("e418")){
  # if the hash doesn't match this will cause an error
  e418 = source_data("https://pasta.lternet.edu/package/data/eml/knb-lter-cdr/418/1/aae64949e1ef41513062633cfb6da7d5",
                     sha1="f134e21918033253d745bb386d9c71821cb78d99",
                     cache = TRUE,verbose=FALSE,
                     na.strings=c("na","na?","unk"))
  
  # SHA-1 hash of the downloaded data file is:
  #   f134e21918033253d745bb386d9c71821cb78d99
  ## there is some issue with the Life.stage column -- blanks for missing I think
  
  # with(test,table(Year,Month))
  # names(test)
  names(e418)[34] <- "Family"

}




