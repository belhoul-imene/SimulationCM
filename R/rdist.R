#' simulation d une loi discrete
#' @export
#' @param x numeric vector representing the values of the random variable
#' @param p numeric vector representing the probabilities
rdist<-function(x,p)
{
  n=length(p)
  r=runif(1)
  b=p[1];
  if((r>0)&(r<=b))
  {
    y=x[1]
    return(y)
  }
  else
  {
    a=p[1]
    b=b+p[2]
    for(i in 2:n-1)
    {
      if((r>=a)&(r<=b))
      {
        y=x[i]
        return(y)
      }
      else
      {
        a=b
        b=b+p[i+1]
        i=i+1
      }
    }
    y=x[n]
    return(y)
  }
}
