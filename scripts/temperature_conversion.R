fahr_to_kelvin <- function(temp = 60){
  kelvin <- ((temp - 32) * (5/9)) + 273.5
  return(kelvin)
}
