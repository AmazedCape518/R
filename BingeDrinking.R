x <- read.table (file = "ProjectDat.csv", header = TRUE, sep=",")
x$Sex[x$Sex == 1]<-"Male"
x$Sex[x$Sex == 2]<-"Female"
binge<-x$BINGE1
gender<-x$SEX

summary(binge)
sd(binge)
length(binge)

summary(gender)
sd(gender)
length(gender)

attach(x)
plot (gender, binge, main="Binge drinking by Gender", 
      xlab="Gender ", ylab="Frequency of binge drinking", pch=19)

cor(gender, binge)
fit <- lm(gender~binge)
summary(fit)
plot(gender,binge,
     xlab = "Frequency of Binge Drinking",
     ylab = "Gender")
abline(fit, col="red") # add regression line in scatter plot
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
cbind(gender, binge, fitted(fit),residuals(fit))
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
