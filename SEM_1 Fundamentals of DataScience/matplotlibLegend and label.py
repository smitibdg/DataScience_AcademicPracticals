#importing the required module
import matplotlib.pyplot as plt
#x axis values
x = [1,2,3]

#corresponding y axis values
y = [2,4,1]

#plotting the points
plt.plot(x, y)

#naming the x axis
plt.xlable('x-axis')

#naming the y axis
plt.ylable('y-axis')

#giving a title to my graph
plt.title('My First Graph!')

#function to show the plot
plt.show()

# adjust coordinates
x = y = [i for i in range(0, 6)]

# depict illustration
fig = plt.figure()
ax = fig.add_subplot()
plt.plot(x, y)
 
# square plot
ax.set_aspect('equal', adjustable='box')
plt.show()
