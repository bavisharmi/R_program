hours <- c(1,2,3,4,5,6,7,8,9,10)
pass <- c(0,0,0,0,0,1,1,1,1,1)
data <- data.frame(hours, pass)
cat("Hours  Pass\n")
print(data, row.names = FALSE)
intercept <- -6.9068
slope <- 1.3732
pred_prob <- 1 / (1 + exp(-(intercept + slope * hours)))
cat("\nPredicted Probabilities\n")
for(i in 1:length(pred_prob)) {
  cat("[", i, "]", round(pred_prob[i], 3), "\n")
}
pred_class <- ifelse(pred_prob >= 0.5, 1, 0)
cat("\nPredicted Classes\n")
for(i in 1:length(pred_class)) {
  cat("[", i, "]", pred_class[i], "\n")
}
conf_matrix <- table(
  Actual = pass,
  Predicted = pred_class
)
cat("\nConfusion Matrix\n")
print(conf_matrix)
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("\nAccuracy\n")
cat(round(accuracy * 100, 0), "%\n")

