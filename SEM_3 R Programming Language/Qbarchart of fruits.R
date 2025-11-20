install.packages("ggplot2")
library("ggplot2")
# Create a data frame
data <- data.frame(
  fruits = c("Apples", "Bananas", "Watermelon", "Dragon Fruit", "Blueberries"),
  count = c(25, 40, 15, 30, 20)
)
ggplot(data, aes(x=fruits, y=count, fill=fruits))+
  geom_bar(stat="identity")+
  labs(title = "Number of People Eating Different Fruits",
       x = "Fruits",
       y = "Count")+
  #theme_minimal()
  theme_dark()
ggplot(data, aes(x = fruits, y = count, fill = fruits))+
  geom_bar(stat = "identity")+
  labs(title = "Number of People Eating Different Fruits",
       x = "Fruits",
       y = "Count")+
  scale_fill_manual(values = c("Apples" = "red", 
                               "Bananas" = "yellow", 
                               "Watermelon" = "lightgreen", 
                               "Dragon Fruit" = "pink", 
                               "Blueberries" = "purple"))+
  theme_dark()