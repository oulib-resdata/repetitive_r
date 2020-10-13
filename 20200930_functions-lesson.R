fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

#challenge write a function that converts kelvin to celsius
kelvin_to_celsius <- function(){
  stopifnot(is.numeric(temp))
celsius <- temp - 273.15
return(celsius)
}
