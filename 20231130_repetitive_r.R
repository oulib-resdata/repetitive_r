x <- 1:4
x * 2

y <- 6:9

x + y  # put in chat what you think the answer 
# vector is
# you can take notes 

data(mtcars)
# conversion factor is 0.43
# convert mpg to kpl using conversion factor
mtcars$kpl <- mtcars$mpg * 0.43
mtcars$lowmpg <- mtcars$mpg < 15
mtcars$ln_mpg <- log(mtcars$mpg)
all(x > 3)
log10(x)
mean(mtcars$mpg)

list_means <- unlist(lapply(X = mtcars,
                            FUN = mean))
test <- list(a = 1,
     b = c("b", "b", "a"),
     cars = c("ev", "hybrid", "gas", "diesel"))
class(test)
class(test$a)
class(mtcars)
class(mtcars$mpg)

# for (iterator in set_of_values) {
# do a thing to set_of_values[iterator]
#}

#Created set of values
parade <- c("Circle", "Square", "Triangle", "Hexagon", "Octogon")

for (i in parade){
  print(i)
}

alphabet <- c("a", "b", "c")

(output_vector <- c())

for (monster in 1:length(parade)){
  print(paste("We're focusing on monster",
              parade[monster],
              "now, who is #",
              monster))
  for (letter in 1:length(alphabet)){
    temp_output <- paste("Monster named",
                parade[monster],
                "is learning about the letter",
                alphabet[letter],
                "which is item ",
                letter, "in the alphabet vector")
    output_vector <- c(output_vector, temp_output)
  }
}

length(output_vector)
output_vector
output_matrix <- matrix(nrow = length(parade), 
                        ncol = length(alphabet))

for (monster in 1:length(parade)) {
  print(paste("We're focusing on monster", 
              parade [monster],
              "now, who is #", 
              monster))
  for (letter in 1:length(alphabet)){
    temp_output <-paste("Monster named",
                         parade[monster],
                         "is learning about the letter",
                         alphabet[letter],
                         "which is item",
                         letter, "in the alpha vector")
    output_matrix[monster, letter] <- temp_output
    #output_vector<- c(output_vector, temp_output)
  }
}

source("functions/functions-lesson.R")

conversion(value = 1, conversion_factor = 1000)
conversion_grams_to_kg(mass = 1000)
