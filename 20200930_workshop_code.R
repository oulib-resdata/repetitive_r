#Welcome!  We'll begin a little after 3pm once people arrive.
setwd("~/Desktop/20200930_repetitive_r")

#test for loops
# for (iterator in setofvalues){
# do a thing
# }

output_vector <- c()
for(i in 1:5){
  for(j in 1:5){
    print(paste(i,j))
    output_vector <- c(output_vector, i*j)
  }
}
output_vector


output_matrix <- matrix(nrow = 5, ncol = 5)
j_vector <- c('a', 'b', 'c', 'd', 'e')

for (i in 1:5){
  for(j in 1:5){
    temp_j_value <- j_vector[j]
    temp_output <- paste(i, temp_j_value)
    output_matrix[i, j] <- temp_output
  }
}
output_matrix
output_vector2 <- as.vector(output_matrix)



#while loops
#while (this condition is true){
# do a thing
#}

z <- 1

while(z>0.1){
  z <- runif(1)
  cat(z, "\n")
}

data(mtcars)
str(mtcars)
mtcars$mpg
mtcars$cyl

# write a script that loops through mtcars by cylinder number
# and prints out mean miles per gallon for each category of cyl (cylinders)

#Step 1
unique(mtcars$cyl)
#fill in what unique categories you need here

#Step 2
for (i in unique(mtcars$cyl)) {          #vector of numbers to go through in loop
  temp <- mtcars[mtcars$cyl==i,]  #subset data
  cat(i, 
      mean(temp$mpg, na.rm = TRUE),
      "\n") #report mean for subset
}


#vectorization 
x <- 1:4
for (i in x){
  print(x[i]+y[i])
}

x*2

y <- 6:10
x + y

#challenge
#convert mtcars$mpg to kilograms per liter
mtcars$kpl <- mtcars$mpg*0.425144

#step by step  
mpg <-mtcars$mpg
mpg
klh <- mpg*0.425144
klh
mtcars$kpl <- klh

x[x>2]

lapply(X = mtcars, FUN = mean, na.rm = TRUE)


#functions
source("20200930_functions-lesson.R")
kelvin_to_celsius(1235)
