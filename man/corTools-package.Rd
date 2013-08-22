\name{corTools-package}
\alias{corTools-package}
\alias{corTools}
\docType{package}
\title{Tools for processing data after a Genome Wide Association Study
}
\description{Designed for analysis of the results of a Genome Wide Association Study. Includes tools to pull lists of Chromosome number and SNP position below a certain significance threshold, and refine gene networks (including data I/O for Cytoscape), and check SNP base pair changes. 
}
\details{
\tabular{ll}{
Package: \tab postGWAS\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-08-22\cr
License: \tab Artistic License 2.0 \cr
}
This package contains two functionalities. The first is to process GWAS data: 1) candpull will find the SNP positions (and Chromosome number) of significant hits. 2) syncheck will check to see if these SNPs cause base pair changes. The second is to understand and visualize the relationships between traits analyzed in GWAS, by refining data to be visualized with Cytoscape: 1) cytosub will subset the traits to reduce the number of interaction lines in Cytoscape. 2) edgecount, dist, and edgecutoff will return the names of traits (nodes) with the most interactions (edges) and the number of those edges in order to find key hubs. 

These functions rely on genetic annotation data that is normally downloaded from the web, and read into R as a dataframe. Note that many of the functions require the user to input as an argument the name of the column of the dataframe (such as the column that holds the SNP position information), so the dataframe should have headers. 

This package was originally built for use analyzing GWAS results using the model organism Arabidopsis thaliana, but theoretically the same tools can be applied to other datasets.
}
\author{Angela Fan

Maintainer: Angela Fan <angela.h.fan@gmail.com>
}
\references{www.cytoscape.org
	
	 Krouk G, Lingeman J, Colon AM, Coruzzi G, Shasha D. (2013) Gene regulatory networks in plants: learning causality from time and perturbation. Genome Biol 14(6):123.
	 
	 Katari MS, et al. (2010) VirtualPlant: A software platform to support systems biology research. Plant Physiol 152(2) 500-515.
	 
	 Krouk G, Mirowski P, LeCun Y, Shasha DE, Coruzzi GM (2010) Predictive network modeling of the high-resolution dynamic plant transcriptome in response to nitrate. Genome Biol 11(12):R123.
	 
	 Atwell S, et al. (2010) Genome-wide association study of 107 phenotypes in Arabidopsis thaliana inbred lines. Nature 465(7298):627-631.
	 
	 Manolio TA, et al. (2009) Finding the missing heritability of complex diseases. Nature 461(747).
}
\keyword{ package }
\seealso{GWASTools <http://www.bioconductor.org/packages/2.12/bioc/html/GWASTools.html>
	
	postgwas <http://cran.r-project.org/web/packages/postgwas/vignettes/postgwas.pdf>
}

