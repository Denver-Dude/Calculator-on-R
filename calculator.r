#Calcu
# Function to perform addition
add <- function(a, b) {
  return(a + b)
}

# Function to perform subtraction
subtract <- function(a, b) {
  return(a - b)
}

# Function to perform multiplication
multiply <- function(a, b) {
  return(a * b)
}

# Function to perform division
divide <- function(a, b) {
  if (b == 0) {
    return("Cannot divide by zero")
  } else {
    return(a / b)
  }
}

# Main calculator loop
while (TRUE) {
  cat("Choose an operation:\n")
  cat("1. Addition\n")
  cat("2. Subtraction\n")
  cat("3. Multiplication\n")
  cat("4. Division\n")
  cat("5. Exit\n")

  choice <- as.integer(readline("Enter your choice: "))

  if (choice == 5) {
    cat("Calculator exiting...\n")
    break
  }

  num1 <- as.numeric(readline("Enter the first number: "))
  num2 <- as.numeric(readline("Enter the second number: "))

  if (is.na(num1) || is.na(num2)) {
    cat("Invalid input. Please enter valid numbers.\n")
    next
  }

  result <- switch(
    choice,
    "1" = add(num1, num2),
    "2" = subtract(num1, num2),
    "3" = multiply(num1, num2),
    "4" = divide(num1, num2),
    "5" = break
  )

  cat("Result: ", result, "\n")
}
