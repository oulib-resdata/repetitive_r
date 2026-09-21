conversion <- function(value, conversion_factor = 2.14) {
  dat <- value   #good practice to create separate object
  converted <- dat*conversion_factor #the calculation
  # you could put more here if you wanted
  return(converted) #return the final value
}

#1000 grams in a kilogram
conversion_grams_to_kg <- function(mass){
  dat <- mass
  kg <- dat/1000
  return(kg)
}