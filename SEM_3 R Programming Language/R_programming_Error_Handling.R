#Question 2
#make a function, accept a number as argument, if number is even print even, if number is odd print odd otherwise throw an error 
even_odd <- function(num) {
  tryCatch(
    {
      
      if (num%%2==0) {
        print("Even Number")
      }else{
        print("Odd Number")
      }
    },
    
    error = function(e) {
      
      message('An error occured:', e ,'Value must be a number')
      
    },
    warning = function(w){
      
      message('Warning:', w)
      
    },
    
    finally = {
      
      message('Finally Done!')
      
    }
    
  )
  
}

# Call the function
#valid
even_odd(3)
even_odd(2)
#invalid
even_odd("a")

#Question 2
# make a function, accept a vector of names as argument, if strings are valid then convert to upper case, otherwise throw error





to_upper <- function(vector) {
  tryCatch(
    {
      if (!is.character(vector)) {
        stop("Input must be a character vector.")
      }
      uppercase_names <- toupper(vector)
      return(uppercase_names)
    },error = function(e) {
      return(paste("Error:", e$message))
    }
  )
}


names <- c("jhon", "doe", "adam", "mano", "ajay")
print(to_upper(names))  


numeric_input <- 12345
print(to_upper(numeric_input))  
