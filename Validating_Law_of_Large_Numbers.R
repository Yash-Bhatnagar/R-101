#To test LAW OF LARGE NUMBERS for N random Normally Distributed numbers with mean =0 and std = 1

LLN <- function(n)
  { 
  cnt <-  0
  for (var1 in rnorm(n)){  
    if (var1 >= -1 & var1 <= 1){
      cnt <- cnt+1
    }
  }
  return(cnt*100/n) 
}


#For Normal Dist. we know that E(X) = 68.2%
for (i in 1:6){
  a <- LLN(10^i)
  txt <- paste("For N = ",(10^i),"values :--")
  print(txt)
  txt <- paste("Mean is :",a)
  print(txt)
  Error_percent <- abs((68.2-a)*100/68.2)
  txt <- paste("Error Percent associated = ",Error_percent)
  print(txt)
  cat('\n')
}