\name{traitcombos}
\alias{traitcombos}
\title{Trait combination calculator
}
\description{Calculates all simple combinations of traits (addition, subtraction, multiplication, division) and outputs the values
}
\usage{
traitcombos(dat, ID)
}
\arguments{
  \item{dat}{Dataframe name, containing traits in each column. Trait names must be inputted as a header of the dataframe. 
}
  \item{ID}{Name of the ID column of the dataframe. 
}
}
\details{ID name must be inputted in quotes, as in "id." Trait combinations are found using the expand.grid function.
}
\value{Returns a dataframe that includes the original dataframe, but has the trait combinations entered in columns after the original dataframe ends. The combination is specified as a header of the column, and the values are inputted into the columns corresponding to the rows by ID. 
}
\references{Manolio TA, et al. (2009) Finding the missing heritability of complex diseases. Nature 461(747).
}
\author{Angela Fan
}
\examples{
# Create a sample dataset
ids <- c(1, 2, 3, 4, 5)
Trait1 <- c(23, 43, 46, 74, 42)
Trait2 <- c(32, 56, 72, 56, 97)
Trait3 <- c(42, 54, 77, 92, 40)
dat <- as.data.frame(cbind(ids, Trait1, Trait2, Trait3))

traitcombos(dat, "ids")
# dat denotes the name of the dataframe
# ids is the name of the ID column
# function returns dataset with additional columns added, where the column names
# are the trait combinations and the column values are the appropriate trait calculations
}
