x <- 1:4
x * 2

y <- 6:9
x + y

mtcars$mpg

#Challenge 1 - convert mtcars$mpg to kpl
#conversion factor is 0.43

mtcars$kpl <- mtcars$mpg * 0.43

greater_than_two <- x > 2
sqrt(x)

lapply(X  = mtcars, FUN = mean, na.rm = TRUE)
means_mtcars <- mtcars
means_mtcars[2:3] <- lapply(X = mtcars[2:3],
                  FUN = function(y) y / mean(y))
rm(mtcars)

# Loops

# basic structure
# for (iterator in set_of_values){
# do a thing
# }
for (i in 1:5){
  print(paste("We are on i loop part", i))
  for (j in c('a', 'b', 'c')){
    print(paste("We are on loop part", i, j))
  }
}

output_vector <- c()
for (i in 1:5){
  print(paste("We are on i loop part", i))
  for (j in c('a', 'b', 'c')){
    print(paste("We are on loop part", i, j))
    temp_output <- paste(i, j)
    output_vector <- c(output_vector, temp_output)
  }
}

# What will the value of temp_output be at the last loop run?
# How many items will output_vector contain at the end?

output_matrix <- matrix(nrow = 5, ncol = 3)
j_vector <- c('a', 'b', 'c')
for (i in 1:5){
  print(paste("We are on i loop part", i))
  for (j in 1:3){
    temp_j_value <- j_vector[j]  #1, i, j
    print(paste("We are on loop part", i, temp_j_value))
    temp_output <- paste(i, temp_j_value)
    output_matrix[i,j] <- temp_output
  }
}


sample(1:2, 1)
#1 = challenge
#2 = functions


#Step1
#making an output - optional here, but can do
#names of needed columns
mpg <- mtcars$mpg
cyl <- mtcars$cyl
names(mtcars)

#Step 2: which combinations of rows and columns 
#are we getting mean for?
#columns are mpg and cyl
unique(cyl)
unique(mtcars$cyl)
#means of rows where cyl = 4,6,8

#Step 3: generate a mean for just one of these groups.
mean(mtcars[mtcars$cyl == 4, "mpg"])

#Step 4: what values need to repeat/iterate in the loop?

mean(mtcars[mtcars$cyl == iCyl, "mpg"])

#Step 5: how to get the vector of values? 
unique(mtcars$cyl)

#Step 6: put together the loop

cyl_vector <- unique(mtcars$cyl)

for (iCyl in 1:3) {
iCyl_tmp <- cyl_vector[iCyl]
tmp <- mean(mtcars[mtcars$cyl == iCyl_tmp, "mpg"])
print(paste(iCyl_tmp, "cylinders has", tmp, "mpg"))
}


# Functions

fahr_to_kelvin <- function(temp, degrees = "K"){
  kelvin <- ((temp-32) * (5/9)) + 273.5
  kelvin_written <- paste(kelvin, degrees) #This turns it into character vector
  return(kelvin_written)
}

object <- fahr_to_kelvin(degrees = "K", temp = 50)

source("20220330_conversion.R")
