library(ClusterR)
library(cluster)
data(iris)
ir = iris
str(ir)
df = ir[,-5]
head(df)
set.seed(23)
km <- kmeans(df,centers = 3)
km$cluster
km
cm <- table(iris$Species, km$cluster)
cm
plot(df[c("Sepal.Length", "Sepal.Width")],
     col=km$cluster,
     main="K-Means Clustering")
clust <- km$cluster
clusplot(ir[c("Sepal.Length", "Sepal.Width")],
         clust, color=TRUE, shade=TRUE, labels=2, 
         main=paste("Clusters of Iris Dataset using K-Means"),
         xlab = "Sepal Length", ylab="Sepal Width")

