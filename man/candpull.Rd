\name{candpull}
\alias{candpull}
\title{Finds Candidate Genes
}
\description{Finds candidate genes with p-values less than a user-inputted threshold. 
}
\usage{
candpull(setnum, setname, traitnum, traitname, threshold)
}
\arguments{
  \item{setnum}{Number of GWAS dataset results. Must already be read into R. 
}
  \item{setname}{Name of GWAS dataset results, as read into R. Datasets must be read in setname#, but only the setname is a required input for this function. 
}
  \item{traitnum}{Number of traits analyzed in each GWAS dataset. Number of traits must be consistent across all datasets. 
}
  \item{traitname}{Name of trait. Traits must be inputted into dataset columns as traitname#, but only the traitname is a required input for this function. 
}
  \item{threshold}{Significance threshold. Function will return list of sets and traits with p-values less than this inputted threshold. 
}
}
\details{This function provides a high-throughput way to scan multiple files of GWAS results to identify potential candidate genes of interest. This function's output can be exported and used to scan gene annotation data to find the genes corresponding to the chromosome number and SNP position, such as BedTools. 
	
	Datasets should be read in as datasetname#, with a number incrementing by 1. Trait columns should be labeled as traitname#, with a number incrementing by 1. Trait names must be consistent across all datasets. Function loops through the datasets and then through each trait column.
}
\value{Returns a list of sets and traits with p-value less than the specified threshold. If no SNPs have a p-value less than the specified threshold, function will return <0 found> to indicate so.  
}
\references{Atwell S, et al. (2010) Genome-wide association study of 107 phenotypes in Arabidopsis thaliana inbred lines. Nature 465(7298):627-631.
}
\author{Angela Fan
}
\examples{
# Create two sample datasets 
set1ID <- c(1, 2, 3, 4, 5)
Trait1 <- c(0.005, 0.09, 0.98, 0.767, 0.004)
Trait2 <- c(0.6, 0.89, 0.92, 0.008, 0.4)
Trait3 <- c(0.98, 0.232, 0.53, 0.321, 0.0012)
set1 <- cbind(set1ID, Trait1, Trait2, Trait3)

set2ID <- c(1, 2, 3, 4, 5)
Trait1 <- c(0.43, 0.934, 0.41, 0.43, 0.009)
Trait2 <- c(0.23, 0.423, 0.543, 0.78, 0.99)
Trait3 <- c(0.3423, 0.53, 0.63, 0.765, 0.0053)
set2 <- cbind(set2ID, Trait1, Trait2, Trait3)

candpull(2, "set", 3, "Trait", 0.05)
# 2 denotes the are 2 sets of GWAS datasets
# "set" denotes the dataset name (i.e. set1, set2)
# 3 denotes the number of traits in each dataset- must be the same number
# "Trait" denotes the labels of the columns with trait p-values 
# 0.05 is the significance threshold chosen
# Function returns set ID and trait number if the trait in that set has a
# value lower than the inputted threshold, 0.05  
}
