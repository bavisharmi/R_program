data(iris)
iris_data=iris[,1:4]
set.seed(123)
kmeans_model=kmeans(iris_data,center=3,nstart=25)
cat("cluster assignment:\n")
print(kmeans_model $ cluster)
cat("\n cluster centers:\n")
print(kmeans_model $ center)
plot(iris_data $ Petal.Length,iris_data $ Petal.Width,col=kmeans_model $ cluster,pch=19,xlab="Petal Length",ylab="Petal Width",main="kmeans clustering on irirs dataset")
points(kmeans_model$center[,3],kmeans_model$center[,4],col=1:3,pch=8,cex=3)

