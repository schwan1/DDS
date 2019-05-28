#R Code for Unit 1 by Mel Schwan 05/12/2019
#Code to loop through a calculation of the medians of random vector being generated.
# n is the number of exponential samples taken and nsim is how many times we loop through our calculations of medians.
n <- 5
nsim <- 1000
#Create lotsa.medians variable
lotsa.medians <- numeric(nsim)

#Loop through nsim times and create exponential random generation of numbers and assign to x and
#then calculate the median of array.

for (i in 1:nsim) {
  x <- rexp(n)
  lotsa.medians[i] <- median(x)
}

#Assign calculations to variables for later calculations.
sum_med = summary(lotsa.medians)
print(sum_med)
len_lotsa = length(lotsa.medians)
print(len_lotsa)
mean_lotsa = mean(lotsa.medians)
print(mean_lotsa)
#Plot histogram of exponential medians calculation
hist(lotsa.medians)
echo = TRUE