import pandas as pd
import matplotlib.pyplot as plt
df = pd.read_csv("C:/Users/Pranav Badugu/Desktop/FDS Practical/data.csv")
df["Duration"].plot(kind = 'hist')
plt.show()
