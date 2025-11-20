#importing statistics module
from statistics import variance
#importing fractions as parameter values
from fractions import Fraction as fr
#tuple of a set of positive integers
#numbers are spread apart but not very much
sample1 = (1, 2, 5, 4, 8, 9, 12)
#tuple of a set of negative integers
sample2 = (-2, -4, -3, -1, -5, -6)
#tuple of a set of positive and negative integers
#data-points are spread apart considerably
sample3 = (-9, -1, -0, 2, 1, 3, 4, 19)
#tuple of a set of floating point values
sample4 = (1.23, 1.45, 2.1, 2.2, 1.9)

#Print the variance of each samples
print("Varianceof Sample1 is % s " %(variance(sample1)))
print("Varianceof Sample2 is % s " %(variance(sample2)))
print("Varianceof Sample3 is % s " %(variance(sample3)))
print("Varianceof Sample4 is % s " %(variance(sample4)))


