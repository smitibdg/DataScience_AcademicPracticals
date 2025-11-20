import pandas as pd
import matplotlib.pyplot as pt
df = pd.read_csv("C:/Users/Pranav Badugu/Desktop/FDS Practical/data.csv")
df.plot(kind = 'scatter',color='magenta', x = 'Duration', y = 'Calories')
pt.show()
