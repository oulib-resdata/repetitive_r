# F to K conversion

fahr_to_kelvin <- function(temp = 32){
  stopifnot(is.numeric(temp))
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

# K to C conversion
# Kelvin - 273.15 = Celsius
# Make a function that converts from K to C

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

#Use the previous two functions
# Make a function that converts from fahr to celsius
# F to C
fahrenheit_to_celsius <- function(temp){
  # temperature must be a number and in fahr
  kelvin <- fahr_to_kelvin(temp)
  # takes kelvin calculated value and converts to C
  celsius <- kelvin_to_celsius(kelvin)
  
  # returns vector of numbers
  return(celsius)
}





print("temperature functions loaded")