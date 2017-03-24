#Logistic Regression in R
#Of the form y = 1/(1+e^-(a+b1x1+b2x2+b3x3+...))
#Assign 20 different body sizes
bodysize=c(25.6,26.4,27.0,27.8,27.8,28.2,28.2,28.3,28.4,28.7,29.2,29.6,29.7,30.1,30.5,30.9,31.0,31.5,32.1,32.9) # generates 20 values, with mean of 30 & s.d.=2
#Arrive survival to these 20 body sizes such that most mortality occurs at small body size
survive<-c(0,0,0,0,0,1,0,1,0,0,1,1,0,1,1,1,0,1,1,1) 
# Saves dataframe with two columns: body size & survival in dat
dat=as.data.frame(cbind(bodysize,survive)) 
dat 
#A scatter plot of just the points
plot(bodysize,survive,xlab="Body size",ylab="Probability of survival") 
# Model the data logistically using glm dunction and store in k
k=glm(survive~bodysize,family=binomial,dat) 
#Draws a continuous curve based on prediction from logistic regression model
curve(predict(k,data.frame(bodysize=x),type="resp"),add=TRUE) 
