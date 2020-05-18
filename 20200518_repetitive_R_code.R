# for (iterator in setofvalues) {
# do a thing
# }

for (i in 1:10){
  print(i)
}

for (i in 1:5){
  for (j in c('a', 'b', 'c')){
    print(paste("We are on loop", i, j))
  }
}

output_vector <- c()

for (i in 1:5){
  for (j in c('a', 'b', 'c')){
    temp_output <- paste(i, j)
    output_vector <- c(output_vector, temp_output)
  }
}

output_vector

output_matrix <- matrix(nrow = 3, ncol = 3)
j_vector <- c('a', 'b', 'c')

for (i in 1:3){
  for (j in 1:3){
    temp_j_value <- j_vector[j]
    temp_output <- paste(i, temp_j_value)
    output_matrix[i,j] <- temp_output
  }
}

output_vector2 <- as.vector(output_matrix)
View(output_vector2)


# while (this condition is true) {
#do a thing
#}

z <- 1
while(z > 0.1){
  z <-runif(1)
  cat(z, "\n")
}

data(mtcars)

# Write a script that loops through mtcars data by cylinder number
# prints out whether mean mpg is lower or higher than 20 mpg
# for each category of cylinder number
mtcars$cyl
mtcars$mpg

unique(mtcars$cyl)

mean(mtcars[mtcars$cyl == 4, "mpg"])
# functions you may need unique(), mean(), cat()
# remember the subset notation dataframe[rows, columns]

for (i in unique(mtcars$cyl)){
  tmp <- mtcars[mtcars$cyl == i,]
  tmp_mpg <- mean(tmp$mpg)
  print(paste(i,
        "cylinders get an average of ",
        tmp_mpg, "mpg and are",
        ifelse(tmp_mpg > 20,
               "greater than 20",
               "equal to or lower than 20") ))
}


### Vectorization
x <- 1:4
x*2

y <- 6:9
x+y
# convert mpg to kilometers per liter (kpl)
mtcars$kpl <- ((mtcars$mpg)*51)/21.68

x > 2

log(x)
mtcars$lnmpg <- log(mtcars$mpg)

class(mtcars)
class(x)

class_mtcars <- unlist(lapply(X = mtcars,
       FUN = class))

class(mtcars$mpg)
class(mtcars$cyl)
#etc for all columns in mtcars
#much shorter to use lapply!

data(mtcars)
mtcars_lapply3 <- lapply(X = mtcars[,2:3],
                   function(y) y / mean(y))
mtcars_lapply

#duplicate the previous results from
# line 101 in a for loop

#remember a dataframe is a specialized list
mtcars[[2]] #pulling column two (second list item)
#other useful functions are mean(), unlist(), 
# and length()

mtcars_proportions <- list()

for (i in 2:3){
  mtcars_proportions[[i]] <- mtcars[[i]]/mean(unlist(mtcars[[i]]))
}

source("20200518_source_temperature.R")

fahr_to_kelvin(80)
