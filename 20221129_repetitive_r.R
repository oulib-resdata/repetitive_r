# Vectorization

x <- 1:4
x * 2

y <- 6:9
x + y

data("airquality")

airquality$Wind10 <- airquality$Wind+10

airquality$Wind > 10

data("mtcars")

unlist(lapply(X = mtcars, FUN = mean))

means_mtcars <- mtcars
mtcars$mpg / mean (mtcars$mpg)
means_mtcars[] <- lapply(X = mtcars[,-1],
                         FUN = function (x) {x / mean(x)})
mtcars_lapply <- lapply(X = mtcars[, -1],
                         FUN = function (x) {x / mean(x)})


# repeating using loops
#structure
#for (iterator in set_of_values) {
# do a thing
#}

for (i in 1:10){
  print(i)
  print(paste("we have printed", i))
}

output_vector <- c()
output_matrix <- matrix(nrow = 3, ncol = 3)
j_vector <- c("a", "b", "c")

for (i in 1:3){
  for (j in 1:3){
    print(paste("We are on loop part", i, j_vector[j]))
    temp_output <- paste(i,j_vector[j])
    output_matrix[i,j] <- temp_output
  }
}

#while loop
#while(condition is true){
 # do a thing
#}

z <- 1
set.seed(1)
while(z > 0.1){
  z <- runif(1)
  cat(z, "\n")
}

#challenge
#mean mpg (miles per gallon) for each category of cyl

#1. mtcars$cyl mtcars$mpg, or columns 2 and 3
#2. What column is the mean for?  mpg What rows to select for group?
#3. what is the mean for one group?  cyl = 4
mean(mtcars[mtcars$cyl ==4, "mpg"])
mean(mtcars$mpg[mtcars$cyl == 4]) #same as previous line
#4. what value needs repeated to get all groups? replace with iCyl.
mean(mtcars[mtcars$cyl == iCyl, "mpg"])
#5. what is the set of values for cyl?
unique(mtcars$cyl)
#6. write the loop
for (iCyl in unique(mtcars$cyl)){
  print(iCyl)
  x <- mean(mtcars[mtcars$cyl==iCyl, "mpg"])
  cat(iCyl,x, "\n")
  }

for (i in unique(mtcars$cyl)) {
  print(mean(mtcars$mpg[mtcars$cyl == i]))
}

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(temp = 32)

kelvin_to_celsius <- function(temp){
  celsius <- temp -273.15 # subtract 273.15 from K to get C
  return(celsius) # return answer to user
}
kelvin_to_celsius(temp = 300)


fahr_to_celsius <- function(temp){
  stopifnot(is.numeric(temp))
  kelvin <- fahr_to_kelvin(temp) #replace with function
  celsius <- kelvin_to_celsius(kelvin) #replace with function
  return(celsius) # return celsius
}
fahr_to_celsius(temp = 0)
