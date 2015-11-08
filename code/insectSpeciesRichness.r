## calculate species richness of insects and plot against
## species added

## assert that dataframe exists
stopifnot(exists("spRichData"))

## assert that GAM model has been fit
stopifnot(exists("richness.gam"))


myGrey = rgb(0.2,0.2,0.2,0.2)
 
old.par=par(mar=c(5,4,0,0))
plot(InsectRich~jitter(NumSp),xlab="Number of added species",
     ylab="Number of insect species per year",
     data=spRichData,pch=19,col=myGrey)

nd = data.frame(NumSp=0:18)
pred = predict(richness.gam,newdata=nd,type="response")
lines(nd$NumSp,pred,lwd=3,col="red")
par(old.par)
