\name{GWASdata-package}
\alias{GWASdata-package}
\alias{affy_scan_annot}
\alias{affy_snp_annot}
\alias{illumina_scan_annot}
\alias{illumina_snp_annot}
\alias{affy_scan_ADF}
\alias{affy_snp_ADF}
\alias{illumina_scan_ADF}
\alias{illumina_snp_ADF}
\docType{package}
\title{
  Data used in the examples and vignettes of the GWASTools package.
}
\description{
  Selected Affymetrix and Illlumina SNP data for HapMap subjects.  Data
  provided by the Center for Inherited Disease Research (CIDR) at Johns Hopkins
  University and the Broad Institute of MIT and Harvard University.
}
\details{
  77 HapMap subjects were genotyped by CIDR on the Illumina Human1Mv_C array.
  Selected data includes 1000 SNPs on each of chromosomes 21, 22, and X,
  and 100 SNPs on each of Y, the pseudoautosomal region, and
  mitochondrial DNA.  SNP and scan annotation are provided as R data
  frames.  Genotype data, X and Y intensity data with quality scores,
  and B allele frequency / log R ratio data are stored in NetCDF files.
  Text files with raw data are provided for 3 subjects.

  47 of the HapMap subjects were genotyped by the Broad on the
  Affymetrix GenomeWideSNP_6 array.  Identical SNPs to the Illumina data
  were selected for chromosomes 21, 22, and X.
  SNP and scan annotation are provided as R data
  frames.  Genotype data and X and Y intensity data with quality scores
  are stored in NetCDF files.
  Text files with raw data are provided for 3 subjects.
}
\examples{
library(GWASdata)
library(ncdf)
data(affy_scan_annot)
data(affy_snp_annot)
file <- system.file("extdata", "affy_geno.nc", package="GWASdata")
nc <- open.ncdf(file)
geno <- get.var.ncdf(nc, "genotype", start=c(1,1), count=c(10,5))
close(nc)

data(affy_scan_ADF) # ScanAnnotationDataFrame
data(affy_snp_ADF) # SnpAnnotationDataFrame
varMetadata(affy_snp_ADF)
}
\keyword{package}
\keyword{datasets}
