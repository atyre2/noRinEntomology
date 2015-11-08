# getting data from dropbox
# simulated data from Reibe et al 2010 Parasitology Research 107:9-16
library(repmis)

blowflies <- source_DropboxData("blowflytest.csv","o0jguchss5vu2ct",
                                sha1="12e7d4c54860cf9631c06923eab5f81d64d179c9",
                                cache=TRUE)

library(lattice)
dotplot(stage~time|temp,data=blowflies)

# if you upload a new version of the file blowflytest.csv, it will get a new key.
# This file will always point to the old version.