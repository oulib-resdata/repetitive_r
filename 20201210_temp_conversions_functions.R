#function file
fahr_to_kelvin <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

#kelvin = 273.15
kelvin_to_celsius <- function(temp){
  celsius <- temp - 273.15
  return(celsius)
}

#using the two functions
fahr_to_celsius <- function (temp = 32, label_to_print = "C"){
  #Next line stops function if temperature is not numeric
  stopifnot("must be a number" = is.numeric(temp))
  #label to print must be a character 
  stopifnot("must be a temperature unit" = is.character(label_to_print))
  #use F to K converter function on provided temperature
  temp_k <- fahr_to_kelvin(temp)
  #Convert from K to C using function from above
  result_c <- kelvin_to_celsius(temp_k)
  #Return list with converted temperatures and a single vector character containing unit
  return(list(result_c, label_to_print))
}
