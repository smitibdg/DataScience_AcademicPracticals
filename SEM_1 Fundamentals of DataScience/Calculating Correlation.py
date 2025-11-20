import pandas as p

#calculating the correlation between 2 variables
var1 = p.Series([1, 3, 4, 6, 7, 9])
var2 = p.Series([2, 4, 7, 8, 9, 11])
correlation = var2.corr(var1)
print(correlation)
correlaton = var1.corr(var2)
print(correlation)

#pt.title('Correlation between variable1 and variable2')
#pt.scatter(var1, var2)

#Series (): It represents the array of values of the variables.
#polyfit (): It returns the coefficients of the polynomial
