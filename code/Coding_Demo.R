## Analytical Workflows Coding Demo - 10/12/2021
#coding best practices 


#insert additional information here that may be useful to collabs or future self
#    here, we will generate data, do linear regression, and make some figures
#section headers! Can write with ctr+shift+r 
#clicking source on save RUNS through the entire script so you know what you 
#    save will be what you think and will run without errors 


# Loading data that may not be in wd folder -------------------------------
#NOTE: set working directory to code folder in repo 
getwd()

file<-load(file="./data/example_code.Rdata") #the dot brings R out from the code
                                            #folder, back to the repo, then 
                                            #tells it to go into data folder and
                                            #select the identified file 
              

# Clear workspace and close all graphics devices --------------------------

rm(list=ls())
graphics.off()

# Generate some data ------------------------------------------------------

n<-100 #number of data points 
m<-2.2 #slope
b<-1.1 #intercept 

x<-rnorm(100, mean=0, sd=1) #indep. variable 
noise<-rnorm(100,mean=0,sd=1)  
y<-m*x+b+noise #linear relationship + noise 

par(mar=c(6,7,4,1))
plot(x,y,xlab='Normalized velocity',
         ylab='Normalized\nenergy consumption') #the \n causes 2nd line in label


# Do linear regression ----------------------------------------------------

fit<-glm(y~x) #generalized linear model 
abline(fit,col='red') #add regression line to plot 




