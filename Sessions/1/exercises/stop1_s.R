## Write a program to print the numbers from 1 to 20, and print “Fizz” for multiples of 3, print “Buzz” for multiples of 5, and print “FizzBuzz” for multiples of both. 

n <- c(1:20)
for ( i in n){
  if (i %% 3 == 0){
    print("Fizz")
  } else if (i %% 5 == 0){
    print("Buzz")} else if (( i %% 5 == 0) & (i %% 3 == 0)){ 
      # you can write (i %% 15 == 0) instead of this condition, but I wanted to show the & operator application
      print("FizzBuzz")
    } else {
      print(i)
    }
}

# here is my output:
# [1] 1
# [1] 2
# [1] "Fizz"
# [1] 4
# [1] "Buzz"
# [1] "Fizz"
# [1] 7
# [1] 8
# [1] "Fizz"
# [1] "Buzz"
# [1] 11
# [1] "Fizz" # why number 15 is printed Fizz and not FizzBuzz ?
# [1] 13
# [1] 14
# [1] "Fizz"
# [1] 16
# [1] 17
# [1] "Fizz"
# [1] 19
# [1] "Buzz"


# The conditional statements are sequential.
n <- c(1:20)
for ( i in n){
  if (i %% 15 == 0){
    print("FizzBuzz")
  } else if (i %% 5 == 0){
    print("Buzz")} else if (i %% 3 == 0){ 
      print("Fizz")
    } else {
      print(i)
    }
}
