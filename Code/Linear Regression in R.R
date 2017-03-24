#Linear Regression in R
#Two example vectors. Assume y is dependent on and only on x
y <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
x <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
#Store the linear model of relationship between y and x in a variable called relation
relation <- lm(x~y)
#Print the value of a and b in the linear model which goes like y=ax+b
print(relation)
#Print Summary of the relation which tells about the measures of deviation in our model
print(summary(relation))
#Store two values of heights whose weights you want to predict
a <- data.frame(y = c(170,100))
#Use predict function to predict the value of the x based on the linearly modeled relation
result <-  predict(relation,a)
#print the 2 predicted values
print(result)

plot(x,y,col = "red",main = "Weight vs Height Regression",
     abline(lm(y~x)),cex = 1.3,pch = 15,xlab = "Height in cm",ylab = "Weight in Kg")
