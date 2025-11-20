import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

ds = pd.read.csv("C:/Users/Pranav Badugu/Desktop/FDS Practical/data.csv")
#print(ds)

#shows the relationship between columns
print(ds.corr())
sns.regplot(x=ds.Duration, y=ds.Calories)
pt.show()
