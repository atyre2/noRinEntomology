## Calculate a cubic spline fit with Poisson error distribution using mgcv
## assert that dataframe exists
stopifnot(exists("spRichData"))

suppressMessages(require(mgcv))

richness.gam = gam(InsectRich~s(NumSp,k=6),data=spRichData,family=poisson)
gam.check(richness.gam)
summary(richness.gam)
