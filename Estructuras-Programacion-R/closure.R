# Closure en R

w <- 12
f <- function(y){
  d <- 8
  h <- function(){
    return(d * (w + y))
  }
  return (h())
}
environment(f)

ls()
ls.str()