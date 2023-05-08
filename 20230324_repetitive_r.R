# repetitive tasks in R
x <- 1:4
x*2

y <- 6:9

x + y
# Challenge 1 using vectorization on a column
mtcars <- mtcars

mtcars$kpl <- mtcars$mpg * 0.43
head(mtcars)

a <- x > 3
any(a) # returns TRUE if any are true
all(a) # returns TRUE if all are true

log(x)

mtcars_mean <- unlist(
  lapply(X = mtcars[1:3], FUN = mean)
)
mtcars_mean

div_means <- mtcars
div_means[2:3] <- lapply(X = mtcars[2:3],
                      FUN = function (y) {y / mean(y)})

mtcars_list <- lapply(X = mtcars[,2:3],
                      FUN = function (y) {y / mean(y)})


# Loops
# for (i in set_of_values){
#  do_a_Thing
# }

for (i in 1:3){
  print(i)
}


output_vector <- c()
for (i in 1:3){
  for (j in c("a", "b", "c")){
    temp_output <- paste(i, j)
    output_vector <- c(output_vector,
                       temp_output)
    print(paste("We have stored loop part", i, j))
  }
  
  }

output_matrix <- matrix(nrow = 3,
                        ncol = 3)
j_vector <- c("a", "b", "c")

for (i in 1:3){
  print(paste("we're on outer (i) loop", i))
  for (j in 1:3) {

    temp_j_value <- j_vector[j]
    print(paste("we're on inner (j) loop", temp_j_value))
    temp_output <- paste(i, temp_j_value)
    output_matrix[i, j] <- temp_output
  }
}
output_vector2 <- as.vector(output_matrix)

# loop illustration
# Image and alt text from @allison_horst - most of her stuff is on https://allisonhorst.com/ with CC-by license https://twitter.com/allison_horst/status/1636395184106917889?s=20


# while loops
# while (condition_is_true) {
#   do_a_thing
# }

z <- 10

while(z > 0.1){
  z <- runif(1)
  print(z)
}
# cat and newline vs print?  WHY

# 12:03 pm break over

# Functions
setwd("~/Desktop")
source("20230324_functions.R")
fahr_to_kelvin(32)
K_to_C(273.15)

# https://ou.libwizard.com/f/datasurvey