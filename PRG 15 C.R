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
barplot( 
  support, 
  names.arg = items, 
  main = "Support of Items", 
  ylab = "Support" 
) 
pie( 
  support, 
  labels = items, 
  main = "Item Support Distribution" 
)

