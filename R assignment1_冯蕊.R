# Task1
## Load your own .csv file into R, report the dimension of your data frame.
driving <- read.csv("C:\\Users\\23367\\Desktop\\R assignment1\\driving.csv")
driving |> dim()

## Generate a scatter plot using the plot() function.
jpeg(filename = "assignment1_Task1.jpg",
     width = 640,
     height = 480)
plot(x=driving[,1], y=driving[,2], 
     col=adjustcolor("darkred", 1/2),
     xlab="time", ylab="Speed/X",
     main = "Speed-time Scatter Plot")
dev.off()

# Task2
## Write a loop to calculate the mean value of a random numeric vector of length 50.
# Generate a random numeric vector
vec <- rnorm(50)

# Calculate the sum
sum_vec <- 0
for (i in 1:length(vec)){
  sum_vec = sum_vec + vec[i]
}

# Calculate the mean value
mean_v <- sum_vec/length(vec)
mean_v

## Verify that it is correct.
mean(vec)
