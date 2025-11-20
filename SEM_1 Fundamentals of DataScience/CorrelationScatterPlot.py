import pandas as p
import numpy as n
import matplotlib. pyplot as pt

#calculating the correlation between 2 variables
var1 = p.Series([1, 3, 4, 6, 7, 9])
var2 = p.Series([2, 4, 7, 8, 9, 11])
#correlation = var2.corr(var1)
#print(correlation)
#correlaton = var1.corr(var2)
#print(correlation)

pt.title('Correlation between variable1 and variable2')
pt.scatter(var1, var2)

pt.plot(n.unique(var1),
        n.poly1d(n.polyfit(var1, var2, 1)) (n.unique(var1)), color = 'Green')
pt.xlabel('var 1')
pt.ylabel('var 2')
pt.show()
