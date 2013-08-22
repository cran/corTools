\name{edgecount}
\alias{edgecount}
\title{Edge counter
}
\description{Counts the number of relationships any given trait makes, to find central hubs of traits with many relationships. Built with Cytoscape in mind, where the function counts edges and returns the names of nodes with the most edges.
}
\usage{
edgecount(dat, col1, col2)
}
\arguments{
  \item{dat}{Dataframe name, containing the traits entered as columns.
}
  \item{col1}{First column of trait names
}
  \item{col2}{Second column of trait names
}
}
\details{This function helps identify key nodes in an interaction network by identifying the nodes with the most interactions through an incremented counter. This function will edit out redundant interactions and return only a unique list of traits- this means that interactions that are repeated will not be redundantly counted, and each trait will only be listed once in the returned frequency table. 
}
\value{Returns a dataframe where column 1 is the name of the trait and column 2 is the number of times the trait appeared in the dataset, non redundantly. 
}
\author{Angela Fan
}
\references{http://www.cytoscape.org/
	
	Krouk G, Mirowski P, LeCun Y, Shasha DE, Coruzzi GM (2010) Predictive network modeling of the high-resolution dynamic plant transcriptome in response to nitrate. Genome Biol 11(12):R123.
}
\examples{
# Create a sample dataset
Interaction1 <- c("L1", "L2", "L3", "L4", "L19", "R7", "L2")
Interaction2 <- c("L1", "L9", "R1", "R2", "R7", "L4", "R10")
dat <- as.data.frame(cbind(Interaction1, Interaction2))

edgecount(dat, Interaction1, Interaction2)
# dat denotes the name of the data frame
# Interaction1 and Interaction2 denote the column names of the dataframe that contain the
# traits whose interactions you want to count
# function returns a list of unique traits and their frequency of appearance
# Example: L1 only appears once, so it is L1   1
# L4 appears twice, so it is L4   2
}

