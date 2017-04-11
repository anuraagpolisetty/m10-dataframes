# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
data.frame(USPersonalExpenditure)
# Create a new variable by passing the USPersonalExpenditure to the data.frame function
my.data <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(my.data)
# "X1940" "X1945" "X1950" "X1955" "X1960"

# Why are they so strange?
  # They represent the years

# What are the row names of your dataframe?
rownames(my.data)
  # "Food and Tobacco"    "Household Operation" "Medical and Health"  "Personal Care"       "Private Education"  
# Create a column `category` that is equal to your rownames
my.data$category <- rownames(my.data)

# How much money was spent on personal care in 1940?
personal.care <- my.data["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
food.tobacco.1960 <-my.data["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
highest.1960 <- my.data$category[my.data$X1960 == max(my.data$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighestSpending <- function(year) {
  return(my.data$category[my.data[year]== max(my.data[year])])
}
# Using your function, determine the highest spending category of each year
highest.spending.1940 <- HighestSpending("X1940")
highest.spending.1945 <- HighestSpending("X1945")
highest.spending.1950 <- HighestSpending("X1950")
highest.spending.1955 <- HighestSpending("X1955")
  
  

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
