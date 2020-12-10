# for (iterator in set_of_values){
# do a thing for iterator items
# }

output_vector <- c()
for (i in 1:5){
  print(i)
  for (j in c("a", "b", "c", "d", "e")){
    temp_output <- paste(i,j)
    output_vector <- c(output_vector, temp_output)
  }
}

output_matrix <- matrix(nrow = 5,
                        ncol = 5)
j_vector <- c("a", "b", "c", "d", "e")

for(i in 1:5){
  print(paste("row", i, "going into matrix"))
  for (j in 1:5){
    temp_j_value <- j_vector[j]
    temp_output <- paste (i, temp_j_value)
    output_matrix[i, j] <- temp_output
  }
}

output_vector2 <- as.vector(output_matrix)

#while (a condition is true) {
# do a thing
#}
z <- 1
while(z > 0.1){
  z <- runif(1)
  cat(z, "\n")
}

mtcars
#Write a script that loops through mtcars by cyl 
#and prints out mean mpg for each category of cyl

#Step 1
unique()

#Step 2
#looping over unique values of cyl
#temporary values
#remember subset notation
mtcars[mtcars$cyl == 4, ]
#mean function
mean()

### vectorization

x <- 1:5
x

x_cm<- x*2.14
y <- 6:10
x + y

mtcars
0.43 conversion
mtcars$kpl <- mtcars$mpg * 0.43

log10(x)

class(mtcars)
mtcars_col_class<- lapply(X=mtcars,
       FUN = mean, na.rm = TRUE)
ul <- unlist(mtcars_col_class)

mean(mtcars, na.rm=TRUE)

mtcars[]<- lapply(X = mtcars,
       FUN = function(x) x/mean(x))

mtcars$mpg/mean(mtcars$mpg)
mtcars$mpg/0.5

for (i in 1:length(mtcars)){
  print(mtcars[[i]]/mean(mtcars[[i]]))
}

source("20201210_temp_conversions_functions.R")

boiling <- fahr_to_kelvin(temp = 212)
freezing <- fahr_to_kelvin(temp = 32)
abs_zero <- kelvin_to_celsius(temp = 0)

freezing_c <- fahr_to_celsius(temp = 32)
fahr_to_celsius(temp = "zero") #testing our stopifnot condition
test_conversion <- fahr_to_celsius(label_to_print = "Degrees in Celsius")
