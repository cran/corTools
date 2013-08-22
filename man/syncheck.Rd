\name{syncheck}
\alias{syncheck}
\title{Identifies Base Pair Change
}
\description{Checks against user-inputted data to see if the SNP causes a basepair change. 
}
\usage{
syncheck(dat, chrom, pos, col1, col2)
}
\arguments{
  \item{dat}{Dataset name of the data of chromosome number, SNP position, and base information.
}
  \item{chrom}{Chromosome number you would like to check, corresponding to the SNP position.
}
  \item{pos}{SNP position you would like to check, corresponding to the chromosome number. 
}
  \item{col1}{Name of the column of the dataset that holds the chromosome number information.
}
  \item{col2}{Name of the column of the dataset that holds the SNP position information. 
}
}
\details{This function requires SNP basepair change information that is normally retrieved from the web. This data can also be read into R as a dataframe, but must be read in with a header, as the column names are used as arguments for this function. The information returned from this function can be used to check if the basepair change at that SNP position leads to an amino acid change (synonymous or nonsynonymous) using TAIR and Expasy.
}
\value{Returns the row of the user-inputted data containing the SNP basepair information of the SNP position on the specificed chromosome. 
}
\references{
	Atwell S, et al. (2010) Genome-wide association study of 107 phenotypes in Arabidopsis thaliana inbred lines. Nature 465(7298):627-631.
}
\author{Angela Fan
}
\seealso{candpull, to identify SNP positions of interest
}
\examples{
# Create sample dataset 
chromosome <- c(1, 1, 1, 2, 5)
position <- c(1432, 1542, 6834, 4642, 6435)
bp1 <- c("A", "G", "A", "T", "C")
bp2 <- c("A", "G", "T", "T", "G")
bp3 <- c("A", "C", "A", "G", "C")
bp4 <- c("A", "G", "A", "G", "C")
bp5 <- c("C", "G", "T", "G", "G")
snplist <- cbind(chromosome, position, bp1, bp2, bp3, bp4, bp5)

syncheck(snplist, 1, 6834, chromosome, position)
# snplist is the name of the dataset
# 1 and 6834 represent user query for a SNP hit on that chromosome and at that position
# chromosome and position are the names of the dataset columns that hold the information
# of chromosome and position. 
# function returns the information that on chromosome 1, position 6834, the pattern is
# "A" "T" "A" "A" "T"
}

