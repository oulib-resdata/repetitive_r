# for (iterator in set_of_values){
# do_thing(iterator)
#}

#test loop
for (i in 1:10){
  print(i)
}

#nested loop
for (i in 1:5){
  # i loop
  for (j in c("a", "b", "c")){
    #j loop
    print(paste("We are on loop part", i, j))
    # more code here!
  }
}

#create empty output vector
output_vector <- c()

#nested loop
for (i in 1:5){
  # i loop
  for (j in c("a", "b", "c")){
    #j loop
    print(paste("We are on loop part", i, j))
    # make a temporary vector for each combination
    temp_output <- paste(i,j)
    output_vector <- c(output_vector, temp_output)
  }
}
print(output_vector)

output_matrix <- matrix(nrow = 3, ncol = 3)
j_vector <- c("a", "b", "c")

for (i in 1:3){
  for (j in 1:3){
    temp_j_value <- j_vector[j]
    temp_output <- paste(i, temp_j_value)
    output_matrix[i,j] <- temp_output
  }
}

print(output_matrix)

#while loop
#repeats the operation until a condition is met

# while (a condition is true){
# do a thing
# }

z <- 1

while(z > 0.1){
  z <- runif(1)
  cat(z, "\n")
}

#write a script that loops through mtcars and prints out 
#mean mpg for each category of cyl (end up with three numbers)

#HINTS: remember subset[rows, cols]
#HINTS: unique(), mean(), cat(, sep = "\n"), names()

#1. what are the variables (columns) we need?
mtcars$cyl
mtcars$mpg
#2. what combinations of rows and columns are we getting the mean for?
mtcars[mtcars$cyl == 4, "mpg"] #but also for 6, 8
#3. how to generate a mean for just one of the groups
mean(mtcars[mtcars$cyl == 4, "mpg"])
#   in the column we want (miles per gallon)?
#4. what value needs substituted/repeated to get all the groups?
mean(mtcars[mtcars$cyl == i, "mpg"])
#5. how to get (automatically) the vector of unique() values
#   (group identifiers)?
unique(mtcars$cyl)
#6. put all that together to make the final loop.

for (i in unique(mtcars$cyl)){
  cat(i, "cylinders have",
      mean(x = mtcars[mtcars$cyl == i, "mpg"]),
      "mpg avg",
      "\n"
      )
}

# question: how to assign means to an object?
gas_matrix <- matrix(nrow = 1, ncol =3)
for (i in 1:3){
  temp_i <- unique(mtcars$cyl)
      gas_matrix[i]<- mean(mtcars[mtcars$cyl == temp_i[i], "mpg"])
}

# vectorization

x <- 1:4
x*2

y <- 6:9

x+ y

#convert a column to kpl

0.43
mtcars$kpl <- mtcars$mpg* 0.43
View(mtcars)

x != 2

mean(x)

mtcars[[1]]

#question how to do custom calculation in FUN in lapply
lapply(X=mtcars,
       FUN = function (y) {sd(y, 
                              na.rm= TRUE)/
           sqrt(mean(y,
                     na.rm = TRUE))})
mean(mtcars[,"mpg"])

standard_error <- function (y, na.rm) {
  sd(y,
     na.rm= na.rm)/
    sqrt(mean(y,
              na.rm = na.rm))}

standard_error(y = c(1,2,3, NA),
               na.rm = TRUE)


#there is a 'tidyverse' function called 'map' in the 'purrr' package

# functions
source("scripts/temperature_conversion.R")
fahr_to_kelvin()

#doesn't have to be in source, but can make your code tidier if you do.
fahr_to_kelvin <- function(temp = 60){
  kelvin <- ((temp - 32) * (5/9)) + 273.5
  return(kelvin)
}

