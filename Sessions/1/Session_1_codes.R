# first line of code ----
print("Hello, World!")


# comments ----
# This is a comment!
# outputs "Hello, World!"
print("Hello, World!")


# variables ----
## numeric ----
num_var <- 1234
print(num_var)
typeof(num_var)
class(num_var)
## integer ----
int_var <- 11L
print(int_var)
typeof(int_var)
class(int_var)

## complex ----
comp_var <- 2-6i
print(comp_var)
typeof(comp_var)
class(comp_var)

## character ----
char_var <- "Hello, World!"
print(char_var)
typeof(char_var)
class(char_var)

## logical ----
log_var <- TRUE
print(log_var)
typeof(log_var)
class(log_var)
log_var <- FALSE
log_var <- T
log_var <- F

## converting between variables ----
var <- 22.84
as.integer(var)
as.complex(var)
as.character(var)


# operators ----
a <- -3; b <- 10
## arithmatic
a + b
b %% 3
## comparison
a > b
a == b
a != b
## logical
(a == b) & (a == -3)
(a == b) | (a == -3) 


# conditional statements ----
var <- 11
if (var %% 2 != 0) {
  print("the number is odd.")
}

if (var %% 2 == 0) {
  print("the number is even.")
} else {
  print("the number is not even")
}

if (var %% 2 == 0) {
  print("the number is even.")
} else if (var %% 11 == 0) {
  print("the number is the multiple of 11")} else {
    print("the number is odd.")
  }


# loop ----
n <- c(1:5) #n = (1, 2, 3, 4, 5) - n is a sequence
for (i in n) {
  print(rep("*", i)) #The `rep(value, x)` function replicates the values in x.
}

i <- 1
while (i <= 5) {
  print(rep("*", i))
  i <- i + 1
}


# data structures ----
## vectors ----
### create a vector ----
# join elements to a vector
names_vec <- c("Sarah", "Maria", "Alex")
names_vec

# create an integer sequence
int_vec <- c(1:10)
int_vec

# create a sequence of decimal numbers
dec_vec <- seq(from = 0, to = 2, by = 0.5)
dec_vec

# create a vector with repeating elements
## repeats the whole x, n times
rep_t_vec <- rep(x = c(1:2), times = 3)
rep_t_vec

## repeats each element in x, n times
rep_e_vec <- rep(x = c(1:2), each = 3)
rep_e_vec

#### Q ----
# you can see the elements' types are changed to the character and when we want to show them, you can the quotation in their representation.
names_vec_2 <- c("Sarah", 2, TRUE)
class(names_vec_2[2])
names_vec_2[2]
class(names_vec_2[3])
names_vec_2[3]

# you can see the elements' types are changed to the numeric.
## logical values as numeric values: TRUE -> 1, FALSE -> 0
names_vec_3 <- c(TRUE, 2)
class(names_vec_3[1])
names_vec_3[1]
class(names_vec_3[2])
names_vec_3[2]

### naming a vector ----
vec <- c(first = 10, second = 20, third = 30)
vec

new_vec <- c(10, 20, 30)
new_vec <- setNames(vec, c("I", "am", "happy"))
new_vec
names(new_vec) <- c("sarah", "maria", "alex")
new_vec

### selecting elements ----
subset_vec <- c("joker", "ironman")
hero <- "batman"
heroes_vec <- c("spiderman", "batman", "joker", "thor", "ironman")
heroes_vec

# by position
heroes_vec[2]
heroes_vec[-2]
heroes_vec[2:5]
heroes_vec[-(2:5)]
heroes_vec[c(1, 5)]

# by value
heroes_vec[heroes_vec == hero] # you can put any other conditions here
heroes_vec[heroes_vec %in% subset_vec]

# named vector
names(heroes_vec) <- c("Marvel1", "Marvel2", "Marvel3", "Marvel4", "Marvel5")
heroes_vec['Marvel3']

### order a vector ----
#sort()
n <- c(12, 1, 133, -2)
n_sorted <- sort(n, decreasing = TRUE) #by setting the decreasing argument to TRUE, we can order the vector descending
n_sorted
#order()
n_ordered <- n[order(-n)] #by putting a minus before the argument, we can order the vector descending
n_ordered

### combine vectors ----
# add a vector to another
x <- c("x1", "x2")
y <- c("y1", "y2")
combined <- c(x, y) # the order of vectors in c function is important
combined
combined <- c(y, x)
combined
### length of a vector ----
vec <- (1:10)
vec
length(vec)
# add a new element to a vector
x <- c(x, "hi!")
x

## factors----
cities_vec <- c("Vancouver", "Burnaby", "Tehran", "Vancouver", "Tehran")
cities_fac <- factor(x = cities_vec, levels = sort(unique(cities_vec))) 
cities_fac

class(cities_fac)

l_vec <- levels(cities_fac)
l_vec
levels(cities_fac) <- rev(l_vec) # rev() reverses a vector
cities_fac
## data frames ----
### creating a data frame ----
heroes_df <- data.frame(name = c("ironman", "spiderman", "batman"),
                        strength_score = c(10, 8, 8.2))
print(heroes_df)

# you can add row names when you are creating the data frame by adding row.names argument
heroes_df <- data.frame(name = c("ironman", "spiderman", "batman"),
                        strength_score = c(10, 8, 8.2),
                        row.names = c("hero_1", "hero_2", "hero_3"))
print(heroes_df)
# we can add a new column with $ operator.
heroes_df$assigned_color <- c("red", "red&blue", "black")
heroes_df
### subsetting ----
# column
heroes_df[, 1]
heroes_df$strength_out_of_10

# row
heroes_df[2, ]

# a cell
heroes_df[1, 2]
### functions ----
# R has some in-built data sets. You can load them by data("name of data set")
data("mtcars")

# display the internal structure
str(mtcars)
## it shows that there are 11 columns with 32 elements in each column. All of the values in the columns are numeric. the mtcars is a data frame

# column names and row names
col_names <- colnames(mtcars)
col_names
## toupper() is a function to capitalize all of the letters in a string
new_col_names <- toupper(col_names)
colnames(mtcars) <- new_col_names
colnames(mtcars)

rownames(mtcars)

# number od columns and rows
nrow(mtcars)
ncol(mtcars)
dim(mtcars)

# transpose
t(mtcars)

# binding
## cbind
car_1_df <- mtcars[, c(1:5)]
head(car_1_df) # head() shows the first 5 rows
car_2_df <- mtcars[, c(6:ncol(mtcars))]
head(car_2_df)
# the place of arguments is important.
cbind(car_1_df, car_2_df)
cbind(car_2_df, car_3_df)

## rbind
car_1_df <- mtcars[1:10, ]
head(car_1_df)
car_2_df <- mtcars[11:nrow(mtcars), ]
head(car_2_df)
# the place of arguments is important.
rbind(car_1_df, car_2_df)
rbind(car_2_df, car_1_df)
## matrices ----
# create
vec <- c(1:10)
matrix(data = vec, nrow = 5, ncol = 2, byrow = FALSE)
matrix(data = vec, nrow = 5, ncol = 2, byrow = TRUE)

## lists ----
### creating ----
vec <- c(1:10)
mat <- matrix(vec, nrow = 5, ncol = 2)
fac <- factor(c("blue", "red", "blue", "yellow"))
l <- list(numbers_vec = vec, numbers_mat = mat, colors = fac)
l
### subsetting ----
l[[2]]
l[2]
l$colors
l['colors']

## converting ----
df <- data.frame(col_1 = c(1:10),
                 col_2 = c(20:29))
df
mat <- as.matrix(df)
mat
vec_mat <- as.vector(mat)
vec_mat
fac <- as.factor(vec_mat)
fac
l <- as.list(mat)
l
df <- as.data.frame(l)
df
### Q1 ----
#### 1 ----
names(l) <- colnames(mat)
l
#### 2 ----
names(l) <- rep(colnames(mat), each = 3)
l
### Q2 ----
vec_df <- as.vector(df)
vec_df
vec_l <- as.vector(l)
vec_l
