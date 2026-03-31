library(arules)
library(arulesViz)

# Groceries dataset
data('Groceries')
summary(Groceries)

rule1 <- apriori(Groceries, parameter = list(support=0.002, confidence = 0.5))

inspect(head(rule1,5))

apriori(Groceries, parameter = list(support=0.002, confidence = 0.5, minlen=5)) -> rule2

inspect(head(rule2,4))

rule1 <- apriori(Groceries, parameter = list(support=0.007, confidence = 0.6)) -> rule3

inspect(head(rule3,4))

data(package="arules")



# Adult dataset
data('Adult')
summary(Adult)

rule1 <- apriori(Adult, parameter = list(support=0.5, confidence = 0.9))

inspect(head(rule1,5))

apriori(Adult, parameter = list(support=0.5, confidence = 0.9, minlen=3)) -> rule2

inspect(head(rule2,5))

rule1 <- apriori(Adult, parameter = list(support=0.2, confidence = 0.8)) -> rule3

inspect(head(rule3,5))

data(package="arules")