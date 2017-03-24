#Multiple Regression in R
#We'll be working with the standard dataset mtcars
print(mtcars)
#Try to derive a relationship between mpg how it varies with the parameters disp,hp,wt
#Store the required columns in a list called input
input <- mtcars[,c("mpg","disp","hp","wt")]
# Create the relationship model using lm function and store in model
model <- lm(mpg~disp+hp+wt, data = input)
# Print the coefficient of each hvariable and the constant(intercept)
#our model is like y=ax1+bx2+cx3+const
print(model)
# Get the Intercept and coefficients as vector elements.
a <- coef(model)[1]
Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]
#Take a new set of values to predict mg
newdata = data.frame(disp=150,  hp=100, wt=3.05)
#Apply predict function for given values of parameters and predict mg
predict(model, newdata) 
