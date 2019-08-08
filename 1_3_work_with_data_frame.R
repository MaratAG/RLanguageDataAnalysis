# Reading data
mydata <- read.csv('evals.csv')

#Summaries
head(mydata)
tail(mydata)

View(mydata)
str(mydata)
summary(mydata)
names(mydata)

#Variables
mydata$score
mydata$number <- 1:nrow(mydata)

mydata[5,]

head(mydata[, 2:5])

#subsetting with conditions

mydata$gender == 'female'
head(mydata[mydata$gender == 'female', 1:3])

head(subset(mydata, gender == 'female' & score > 3.5))

#rbind, cbind
mydata2 <- subset(mydata, gender == 'female')
mydata3 <- subset(mydata, gender == 'male')
mydata4 <- rbind(mydata2, mydata3)

mydata5 <- mydata[, 1:10]
mydata6 <- mydata[, 11:22]
mydata7 <- cbind(mydata5, mydata6)

data(mtcars)
help(mtcars)
my_data <- mtcars

mtcars$even_gear <- as.integer(mtcars$gear %% 2 != 1)
mpg_4 <- mtcars$mpg[mtcars$cyl == 4]
mini_mtcars <- mtcars[c(3, 7, 10, 12, nrow(mtcars)),]
