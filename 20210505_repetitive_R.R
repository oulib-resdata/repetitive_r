#Welcome to Repetitive Tasks for R

## For loops

# basic structure of a for loop
# for (iterator in set_of_values){
# do a thing
# }

for (i in 1:5){
  print(i)
  for (j in c("a", "b", "c", "d", "e")){
    print(paste(i, j))
  }
}

output_vector <- c()
for (i in 1:5){
  print(i)
  for (j in c("a", "b", "c", "d", "e")){
    print(paste(i, j))
    temp_output <- paste(i,j)
    output_vector <- c(output_vector, temp_output)
  }
}



output_matrix <- matrix(nrow=5, ncol=5)
j_vector <- c("a", "b", "c", "d", "e")
for (i in 1:5){
  print(i)
  for (j in 1:5){
    temp_j_value <- j_vector[j]
    print(paste(i, temp_j_value))
    temp_output <- paste(i, temp_j_value)
    output_matrix[i,j] <- temp_output
  }
}
output_vector2 <- as.vector(output_matrix)

# While loop

#while (this condition is true){
# do a thing
# }

z <- 1
while (z > 0.1) {
  z <- runif(1)
  cat(z, "\n")
}

mtcars

#Suggestions
unique(mtcars$cyl)
mean(mtcars$mpg, na.rm = TRUE)
#mean mpg for all cars in dataset

mtcars[mtcars$cyl == iterator,]  
#select rows where cylinders== value of iterator, all columns

cat(z, "\n") #displaying values
# basic structure of a for loop
for (iterator in unique(mtcars$cyl)){
  temp_cyl_mpg <- mtcars[mtcars$cyl == iterator,]  
  cat(iterator, mean(temp_cyl_mpg$mpg, na.rm = TRUE), "\n")
 }

for (i in unique(mtcars$cyl)){
  mean.mpg <- mean(mtcars[mtcars$cyl == i,]$mpg)
  cat(i, mean.mpg, "\n")
}

for (i in unique(mtcars$cyl)){
mean.mpg <- mean(mtcars$mpg[mtcars$cyl == i])
}

#####
## Vectorization

x <- 1:4

x*2

y <- 6:10
x+y

# 0.43 converstion from mpg to kpl
# * multiplication

mtcars$kpl <- mtcars$mpg*0.43


x == 2

log10(x)

test_list <- list("c", j_vector, mtcars)
class(x)
class(j_vector)
class(mtcars)
class(test_list)
lapply(X = test_list, class)
lapply(X = mtcars, function(x) x/mean(x))


setwd("~/Desktop")
source("20210505_temperature_functions.R")

fahr_to_kelvin(70)

fahr_to_kelvin(c("freezing", 70, 212))

kelvin_to_celsius(c(0, 100, 200))

C <- fahrenheit_to_celsius(c(-40, 0, 32, 212))

round(x = 3.14159)
fahr_to_kelvin()

#wrap function or loop around this
#load data

#subset data

#calculate means

#plot means