num_of_solutions <- function(coefficients, constants) {
  A <- matrix(coefficients, nrow = nrow(coefficients), ncol = ncol(coefficients), byrow = TRUE)
  b <- matrix(constants, ncol = 1)
  
  rank_A <- qr(A)$rank
  augmented_matrix <- cbind(A, b)
  rank_Ab <- qr(augmented_matrix)$rank
  
  num_unknowns <- ncol(A)
  
  if (rank_A == rank_Ab) {
    if (rank_A == num_unknowns) {
      cat("Unique soln. 1 soln. \n")
    } else {
      cat("Infinite soln. \n")
    }
  } else {
    cat("No soln. \n")
  }
}



# for 2x2 Matrix:
#coefficients <- matrix(c(6,-12,-8,16), nrow = 2, ncol = 2, byrow = TRUE)

#constants <- matrix(c(9,-12), ncol = 1)
#num_of_solutions(coefficients, constants)

#######################################################################################

# for 3x3 Matrix:
coefficients <- matrix(c(6,-12,-8,16,1,1), nrow = 3, ncol = 3, byrow = TRUE)

constants <- matrix(c(9,-12,1), ncol = 1)
num_of_solutions(coefficients, constants)

