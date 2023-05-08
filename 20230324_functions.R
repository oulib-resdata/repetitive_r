# temperature conversion functions

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

demonstration <- 10
# convert from Kelvin to celsius
# Hint: K - 273.15 = C

K_to_C <- function(temp){
  # Hint: K - 273.15 = C
    C <- temp - 273.15
  # return statement
  return(C)
}