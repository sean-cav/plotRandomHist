#* plotRandomHistogram.R
#* 
#* Author: Sean Cavanagh
#* 
#* Purpose: a function that will generate a random
#*    sample of normal "observations" and plot a histogram 
#*    of the data. 
#*
#* Inputs: 
#*    num_pts = The number of observations to generate (they are random)
#*    mu = theoretical mean of the normal 
#*    sigma = theoretical standard deviation of normal 
#*    seed = a random number generatoration seed to ensure reproducability
#*
#* Outputs:
#*    A plot of the histogram 
#*    A list with the following elements:
#*      Random_Values= a vector with the generated random values
#*      Mean_Random_Values= correnponding sample mean
#*      SD_Random_Values= corresponding sample standard deviation
#* 

plotRandomHistogram <- function(num_pts=30 , mu=0, sigma=1, seed=NULL, meanColor="royalblue") {
  set.seed(seed)
   x <- rnorm(n=num_pts, mean= mu, sd=sigma)
   mean_x <- mean(x)
   hist(x)
   abline(v=mean_x, col=meanColor, lwd=5)
   
   list(Random_Values = x, Mean_Random_Values = mean_x, SD_Random_Values = sd(x))
   # The last line of the code in the function is output from the function
}
plotRandomHistogram()
plotRandomHistogram(seed=1)
plotRandomHistogram(seed=1, num_pts = 1000000)
