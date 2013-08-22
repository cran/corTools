\name{dist}
\alias{dist}
\title{Distribution Generator
}
\description{Generates a distribution based on a user-inputted list of values, and returns values above or below user-inputted percentages of the distribution.
}
\usage{
dist(dat, small, large)
}
\arguments{
  \item{dat}{Either a list of numeric values, or a numeric column of a dataframe. 
}
  \item{small}{Smaller percentage, written as a decimal value. 
}
  \item{large}{Larger percentage, written as a decimal value. 
}
}
\details{If dat is entered as a columnname, function will preserve other columns of the dataframe and return those columns in the function output. Function uses quantiles to determine the cutoff values.
}
\value{Returns list of values of the dataset that are greater than the larger user-inputted percentage, or smaller than the smaller user-inputted percentage. 
}
\author{Angela Fan
}
\references{http://www.cytoscape.org/	
	
	Krouk G, Mirowski P, LeCun Y, Shasha DE, Coruzzi GM (2010) Predictive network modeling of the high-resolution dynamic plant transcriptome in response to nitrate. Genome Biol 11(12):R123.
	
	Krouk G, Lingeman J, Colon AM, Coruzzi G, Shasha D. (2013) Gene regulatory networks in plants: learning causality from time and perturbation. Genome Biol 14(6):123.
}
\examples{
# Create some sample data, as a dataframe with a numeric column
col1 <- c("L1", "L2", "L4", "E6", "G1")
col2 <- c(1.42, 14.34, 6.43, 32.1, 15.8)
dat <- as.data.frame(cbind(col1, col2))
dat$col2 <- as.numeric(as.character(dat$col2))

dist(dat$col2, 0.05, 0.95)
# dat$col2 denotes the column of the data that the distribution will be based on
# 0.05 and 0.95 indicate that the function will return values that are smaller
# than 5% of the values, or greater than 95% of the values
# function will return values 1.42 and 32.10

}
