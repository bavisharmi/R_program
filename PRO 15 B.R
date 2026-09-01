transactions <- list( 
  c("Milk","Bread","Butter"), 
  c("Bread","Butter"), 
  c("Milk","Bread"), 
  c("Milk","Butter"), 
  c("Bread","Butter","Eggs"), 
  c("Milk","Bread","Butter"), 
  c("Milk","Eggs"), 
  c("Bread","Eggs"), 
  c("Milk","Bread","Eggs"), 
  c("Bread","Butter") 
) 
n <- length(transactions) 
items <- unique(unlist(transactions)) 
freq <- sapply(items, 
               function(item) 
               { 
                 sum(sapply(transactions, 
                            function(x) 
                              item %in% x)) 
               }) 
support <- freq/n 
frequent_itemsets <- data.frame( 
  Item = items, 
  Frequency = freq, 
  Support = round(support,2) 
) 
print(frequent_itemsets) 
cat("\nFrequent Itemsets\n") 
print( 
  frequent_itemsets[ 
    frequent_itemsets$Support >= 0.30,]
)