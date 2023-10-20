#* plotRandomHistogram.R
#*
#* Author: Josh Barker
#* 
#* Purpose:
#*    A function that will generate
#*    a sample of Normal "observations"
#*    and plot the histogram of that data.
#*    
#*  Inputs:
#*    num_pts = the number of observations
#*              to randomly generate
#*    mu = the theoretical mean of the Normal
#*         distribution that generates my data
#*    sigma = the theoretical standard deviation
#*    seed = an optional random number generator
#*           seed value, defaults to NULL
#*    meanColor = the color of line corresponding
#*                to the sample mean of the data
#*    Output:
#*       A histogram of the generated data
#*          is drawn.
#*       A list with the following elements:
#*         Random_obs = a vector with the randomly 
#*                      generated data
#*         Mean_Random_obs = sample mean corresponding to 
#*                           the randomly generated data
#*         SD_Random_obs = corresponding standard deviation

plotRandomHistogram <- function(num_pts = 30, mu=0, sigma=1, seed=NULL, meanColor="cyan") {
  set.seed(seed)
  x <- rnorm(num_pts, mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, lwd=5, col= meanColor)
  
  ## In R, in a function, the output from
  ## the last line is automatically returned
  #x   i did this because i did not want to keep seeing every data point
  list(Random_obs = x,
       Mean_Random_obs = mean_x,
       SD_Random_obs = sd(x))
}

plotRandomHistogram()
plotRandom(seed=5)
plotRandom(seed=6)
plotRandomHistogram(seed=19, num_pts = 1000000, meanColor = "cyan")
plotRandomHistogram(num_pts = 1000, meanColor = "cyan")
my_output <- plotRandomHistogram(seed=5, num_pts = 200, mu=70, sigma=2.5, meanColor = "goldenrod")
my_output$Mean_Random_obs
