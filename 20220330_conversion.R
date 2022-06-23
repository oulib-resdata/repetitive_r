fahr_to_kelvin <- function(temp, degrees = "K"){
  kelvin <- ((temp-32) * (5/9)) + 273.5
  kelvin_written <- paste(kelvin, degrees) #This turns it into character vector
  return(kelvin_written)
}