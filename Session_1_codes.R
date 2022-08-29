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
comp_var <- 2 - 6i
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
a <- -3
b <- 10
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
  print("the number is the multiple of 11")
} else {
  print("the number is odd.")
}


# loop ----
n <- c(1:5) # n = (1, 2, 3, 4, 5) - n is a sequence
for (i in n) {
  print(rep("*", i)) # The `rep(value, x)` function replicates the values in x.
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
heroes_vec["Marvel3"]

### order a vector ----
# sort()
n <- c(12, 1, 133, -2)
n_sorted <- sort(n, decreasing = TRUE) # by setting the decreasing argument to TRUE, we can order the vector descending
n_sorted
# order()
n_ordered <- n[order(-n)] # by putting a minus before the argument, we can order the vector descending
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
heroes_df <- data.frame(
  name = c("ironman", "spiderman", "batman"),
  strength_score = c(10, 8, 8.2)
)
print(heroes_df)

# you can add row names when you are creating the data frame by adding row.names argument
heroes_df <- data.frame(
  name = c("ironman", "spiderman", "batman"),
  strength_score = c(10, 8, 8.2),
  row.names = c("hero_1", "hero_2", "hero_3")
)
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
l["colors"]

## converting ----
df <- data.frame(
  col_1 = c(1:10),
  col_2 = c(20:29)
)
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


# Make Functions ----

# I want to write a function to add two numbers and check if their addition is more than 10. I want to get "Yes!" if it was, otherwise see a "No!" on my screen
check_more_than_10 <- function(num1, num2) {
  if (num1 + num2 > 10) {
    return("Yes!")
  } else {
    return("No!")
  }
}

result <- check_more_than_10(1, 4)
result

# Libraries and Packages ----

# install.packages("tidyverse)
library(tidyverse)

# Data Wrangling ----
## Tidy Data ----

# MAKING THE DATA
data("women")
women$name <- c("Olivia", "Emma", "Charlotte", "Amelia", "Ava", "Sophia", "Isabella", "Mia", "Evelyn", "Harper", "Luna", "Camila", "Gianna", "Elizabeth", "Eleanor")
women$city_province <- c(rep("Vancouver, BC", 5), rep("Edmonton, AB", 3), rep("Toronto, ON", 4), rep("Ottawa, ON", 3))
colnames(women)[c(1, 2)] <- c("weight_kg", "height_cm")
women <- dplyr::select(women, name, city_province, weight_kg, height_cm)
women[c(4, 5, 6, 7), 3] <- women[c(4, 5, 6, 7), 3] - 30
women[c(1, 2, 9), 3] <- women[c(1, 2, 9), 3] - 40
women[c(3, 5, 8), 4] <- NA
write_csv(women, file = "data/women.csv")

## Import Data ----
women <- readr::read_csv("data/women.csv")
women

## Transformation ----
### mutate() ----
women <- mutate(women, height_inch = height_cm / 2.54)
women

# mutate and add the new column as the last column. You can change the place by .before or .after arguments.
women <- mutate(women, weight_lbs = weight_kg / 2.2, .after = weight_kg)
women

### ifelse() ----
num_vec <- c(1:10)
result <- ifelse(num_vec %% 2 == 0, "even", "odd")
names(result) <- c(1:10)
result

women <- mutate(women, is_bmi_normal = ifelse(((18.5 <= weight_lbs / (height_inch^2)) &
                                                 (weight_lbs / (height_inch^2) <= 24.9)), "normal", "not normal"))

### case_when() ----
num_vec <- c(0:10)

result <- case_when(
  num_vec == 0 ~ "zero",
  num_vec %% 2 == 0 ~ "even",
  TRUE ~ "odd"
) # TRUE means if not all above conditions are equal to TRUE, so set "odd" as the value
names(result) <- c(0:10)
result

women <- mutate(women, bmi = case_when(
  weight_kg / height_cm / height_cm * 10000 >= 30 ~ "obesity",
  weight_kg / height_cm / height_cm * 10000 >= 25 &
    weight_kg / height_cm / height_cm * 10000 < 30 ~ "overweight",
  weight_kg / height_cm / height_cm * 10000 < 25 &
    weight_kg / height_cm / height_cm * 10000 >= 18.5 ~ "normal",
  weight_kg / height_cm / height_cm * 10000 < 18.5 ~ "underweight"
))
women

### group_by() ----
women_g <- group_by(women, bmi)
women_g <- mutate(women_g, weight_kg_mean = mean(weight_kg), .after = weight_kg)
women_not_g <- mutate(women, weight_kg_mean = mean(weight_kg), .after = weight_kg)
women_g
women_not_g

### Q1 ----
women <- ungroup(women_g)
### Q2 ----

### subset() ----
women_tall <- subset(women, bmi == "normal")
women_tall

women_na <- subset(women, is.na(height_cm)) # is.na() returns a logical value that determines if the variable in NA
women_na

### distinct() ----
dup_women <- data.frame(
  name = women_tall[, 1],
  city_province = women_tall[, 2],
  weight_kg = c(50, 45, 40),
  weight_kg_mean = c(NA, NA, NA),
  weight_lbs = c(50 / 2.2, 45 / 2.2, 40 / 2.2),
  height_cm = women_tall[, 6],
  height_inch = women_tall[, 7],
  is_bmi_normal = c(NA, NA, NA),
  bmi = c(NA, NA, NA)
)
women <- rbind(women, dup_women)
women

women <- distinct(women, name, .keep_all = TRUE) # we determined that remove rows with duplicated names.
women

### select() ----
women_name <- select(women, name) # separate a column
women_name
women_height <- select(women, starts_with("height")) # select columns that their names start with height
women_height # you can use ends_with() to select your columns
women_weight <- select(women, contains("weight")) # select columns that their names included weight
women_weight

### separate_rows() ----
women$city_province

women_sep_row <- separate_rows(women, city_province, sep = ",", convert = TRUE)

### separate() ----
women_sep_col <- separate(data = women, col = city_province, into = c("city", "province"), sep = ",", convert = TRUE, remove = TRUE)
women_sep_col

### unite() ----
women_united <- unite(data = women_sep_col, col = "city_province", city:province, sep = ",", remove = TRUE)
women_united

### na.omit() ----
women_omit_na <- na.omit(women)
women_omit_na

### drop_na() ----
women_drop_na <- drop_na(women, height_cm)
women_drop_na

### replace_na() ----
replacced_heights <- replace_na(women$height_cm, replace = mean(women$height_cm, na.rm = TRUE))
replacced_heights

# a data frame
women_rep_na <- replace_na(women, replace = list(height_cm = mean(women$height_cm, na.rm = TRUE)))
women_rep_na

### column_to_rownames() ----
women <- tibble::column_to_rownames(women, var = "name")
women

### rownames_to_column() ----
women <- tibble::rownames_to_column(women, var = "name")

## Strings ----
### Functions ----
str_1 <- "Hello_"
str_2 <- "World!"
vec <- c(str_1, str_2)
# paste
paste(str_1, str_2, sep = " ")
paste(vec, collapse = " ")
paste0(str_1, str_2)

# gsub
gsub("_", "!", str_1)
grep("Wo", vec)

# to
toupper(str_2)
tolower(str_1)

# str_to_title
str_to_title("r workshop")

### Special Characters ----
# print("\") ##You will get an error!
slash <- "\\"
slash
quote_str <- "\""
quote_str
