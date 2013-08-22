\name{cytosub}
\alias{cytosub}
\title{Dataset Subsetter
}
\description{Subsets a dataset based on text common to the traits that should be removed. Built with Cytoscape datasets in mind, to reduce the complexity of Cytoscape networks. 
}
\usage{
cytosub(dat, col1, col2, text)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{Dataset containing the traits
}
  \item{col1}{Column 1 of the dataset, containing trait names, such as a source interaction in Cytoscape.
}
  \item{col2}{Column 2 of the dataset, containing trait names, such as a target interaction in Cytoscape. 
}
  \item{text}{Text common to the traits that need to be edited out of the dataset. Regular expressions can also be entered.
}
}
\details{This function is built to help interpret GWAS result data by considering relationships between associated genes or traits. It requires the basic input of a network of binary relationships between traits, with two columns of trait names and a third column of the trait interaction. This interaction could be multiple things, such as trait-trait relationships in a pathway, or trait correlation data. This data can be inputted directly into Cytoscape for the visualization of these interaction networks, however for a large network it is useful to pare down the number of interactions. This function subsets the user-inputted data. 
	
	Function will preserve columns (such as trait values), but delete rows corresponding to unwanted traits. Regular expressions can also be entered in addition to regular text. 
	
	Function uses grepl to text-match to find traits that the user would like to subset out, so regular expressions can also be entered. 
}
\value{Returns a subset of the original dataset, with the unwanted traits edited out, as a dataframe. The returned dataframe will have the same number of columns as the originally inputted dataframe, but with unwanted trait rows removed. The returned dataframe will keep the same header column names as the original dataframe. 
}
\references{http://www.cytoscape.org/
	
	Krouk G, Mirowski P, LeCun Y, Shasha DE, Coruzzi GM (2010) Predictive network modeling of the high-resolution dynamic plant transcriptome in response to nitrate. Genome Biol 11(12):R123.
}
\author{Angela Fan
}
\examples{
# Create sample dataset
source.interaction <- c("R1", "R2", "R3", "E1", "E2")
target.interaction <- c("L1", "L2", "L4", "E6", "E7")
values.interaction <- c(1.42, 14.34, 6.43, 32.1, 15.8)
dataset <- cbind(source.interaction, target.interaction, values.interaction)

cytosub(dataset, source.interaction, target.interaction, E)
# dataset indicates the data we are working with
# source.interaction and target.interaction denote the columns of the dataset
# E indicates the text that we want to search for and edit out of the dataset
# function will return the dataset without "E1", "E2", "E6", "E7"
}

