
library(MASS)
library(matlib)
# Define the coefficient matrix A and the constant matrix b
A <- matrix(c(4, -2, 3,
              7, -5, 3,
              -2, 1, 2), nrow = 3, ncol = 3, byrow = TRUE)
b <- matrix(c(5, -5, 8), ncol = 1)


# Solve the system of linear equations
solution <- solve(A, b)

# Print the solution
print(solution)
print("\nFractions:\n")
print(fractions(solution))


