mydata <- read.csv('evals.csv')

a <- c(-1, 1)
ifelse(a > 0, 'positive', 'negative')

for (i in 1:100) {
  print(i)
}

for (i in 1:nrow(mydata)) {
  print(mydata$score[i])
}

mydata$quality <- ifelse(mydata$score > 4, 'good', 'bad')

i <- 1
while (i < 51) {
  print(mydata$score[i])
  i <- i + 1
  
}

mtcars$new_var <- ifelse(mtcars$carb >= 4 | mtcars$cyl > 6, 1, 0)


?AirPassengers
str(AirPassengers)

AirPassengers <- as.vector(AirPassengers)
good_months <- vector()
for (i in 2:length(AirPassengers)) {
  if (AirPassengers[i] - AirPassengers[i - 1] > 0) {
     good_months <- c(good_months, AirPassengers[i])
  }
}
good_months

AirPassengers <- as.vector(AirPassengers)
moving_average <- c()
len_of_air <- length(AirPassengers)
size_of_portion <- 10
start_index <- 1

while(start_index + size_of_portion - 1 <= len_of_air) {
   moving_average <- c(moving_average, (sum(AirPassengers[(start_index):(start_index + size_of_portion - 1)]) / size_of_portion))
   start_index <- start_index + 1
}
moving_average
