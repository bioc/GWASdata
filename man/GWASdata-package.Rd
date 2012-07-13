\name{GWASdata-package}
\alias{GWASdata}
\alias{GWASdata-package}
\alias{affy_scan_annot}
\alias{affy_snp_annot}
\alias{illumina_scan_annot}
\alias{illumina_snp_annot}
\alias{affyScanADF}
\alias{affySnpADF}
\alias{illuminaScanADF}
\alias{illuminaSnpADF}
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

  List of datasets:
  \itemize{
    \item affy_scan_annot: data.frame with Affymetrix scan annotation
    \item affy_snp_annot: data.frame with Affymetrix SNP annotation
    \item affyScanADF: \code{\link{ScanAnnotationDataFrame}} with Affymetrix scan annotation
    \item affySNPADF: \code{\link{SnpAnnotationDataFrame}} with Affymetrix
    SNP annotation
    \item illumina_scan_annot: data.frame with Illumina scan annotation
    \item illumina_snp_annot: data.frame with Illumina SNP annotation
    \item illuminaScanADF: \code{\link{ScanAnnotationDataFrame}} with Illumina scan annotation
    \item illuminaSnpADF: \code{\link{SnpAnnotationDataFrame}} with Illumina
    SNP annotation
  }

  List of files in "extdata":
  \itemize{
    \item affy_geno.nc: NetCDF file with Affymetrix genotypes
    \item affy_qxy.nc: NetCDF file with Affymetrix XY intensity data and
    quality scores
    \item affy_raw_data: Directory with Affymetrix raw data in text
    files
    \item illumina_geno.nc: NetCDF file with Illumina genotypes
    \item illumina_qxy.nc: NetCDF file with Illumina XY intensity data and
    quality scores
    \item illumina_bl.nc: NetCDF file with Illumina BAlleleFreq and
    LogRRatio data
    \item illumina_raw_data: Directory with Illumina raw data in text
    files
    \item illumina_subj.ped: PLINK PED file with Illumina genotypes
    \item illumina_subj.map: PLINK MAP file with Illumina SNP info
    \item illumina_subj.bim: PLINK extended MAP file with Illumina SNP
    info and alleles
  }
}
\seealso{
  \code{\link{ScanAnnotationDataFrame}},
  \code{\link{SnpAnnotationDataFrame}},
  \code{\link{NcdfGenotypeReader}}, \code{\link{NcdfIntensityReader}},
  \code{\link{GenotypeData}, \code{\link{IntensityData}}}
}
\examples{
library(GWASdata)
data(affy_scan_annot)
data(affy_snp_annot)
file <- system.file("extdata", "affy_geno.nc", package="GWASdata")
nc <- NcdfGenotypeReader(file)
geno <- getGenotype(nc, snp=c(1,10), scan=c(1,5))

data(affyScanADF) # ScanAnnotationDataFrame
data(affySnpADF) # SnpAnnotationDataFrame
varMetadata(affySnpADF)

genoData <- GenotypeData(nc, snpAnnot=affySnpADF, scanAnnot=affyScanADF)

# raw data
list.files(system.file("extdata", "affy_raw_data", package="GWASdata"))
}
\keyword{package}
\keyword{datasets}
