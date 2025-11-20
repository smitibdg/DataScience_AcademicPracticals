myfunc <- function(expr){
  tryCatch(expr,
           error=function(e){
             message("An Error occured:\n",e)
           },
           warning=function(w){
             message("A Warning occured:\n",w)
           },
           finally={
             message("Finally Done!!")
           })
}
#myfunc({2+2})
#myfunc({"two"+2})
#myfunc({as.numeric(c(1,"two",3))})

#create a function to check even number or not & keep it in tryCatch().
s<-function(num){
  tryCatch(num%%2==0,
           error=function(e){
             message("An Error occured:\n",e)
           },
           warning=function(w){
             message("A Warning occured:\n",w)
           },
           finally={
             message("Even Number")
           })
}
s({2})
s({3})
s({"two"})

#create a function if string turn it into upper case if int show error.
name <- c("Smiti", "Ram", "Kavya", "Rakesh", "Jyoshna")
name
b <-function(name){
  tryCatch(
    {
      if (is.character(vector)){
         stop("Input must be a character vector.")
      }else{
      upper_case<-toupper(name)
      return(upper_case)}
      },
    error=function(e){
      message("An Error occured:\n",e)
      },
    warning=function(w){
      message("A Warning occured:\n",w)
      },
    finally={
      message("Finally Done!!")
      })
}
b("rstudio")
b(23)
b(as.numeric(c("one")))
