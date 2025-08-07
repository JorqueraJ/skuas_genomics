# Genomic Introgression and Adaptation of Southern Skua Species

This repository contains the scripts and analysis pipeline for the paper "Genomic Introgression and Adaptation of Southern Seabird Species Facilitate Recent Polar Colonization" published in *Molecular Biology and Evolution*.

## Citation

If you use the data or code from this study, please cite the original publication:

> Jorquera J, Morales L, Ng EYX, Noll D, et al. (2025). Genomic Introgression and Adaptation of Southern Seabird Species Facilitate Recent Polar Colonization. *Molecular Biology and Evolution*, 42, msaf053. https://doi.org/10.1093/molbev/msaf053

## Data Availability

Raw whole-genome sequencing reads are available in the GenBank database. Accession numbers can be found under BioSamples:
* SAMN38698868-SAMN38698944 
* SAMN43185484-SAMN43185490 
* SAMN35654692-SAMN35654709 

All code used for the genomic analyses is available in this GitHub repository.

## Repository Contents

This repository is organized into folders corresponding to the major steps of the analysis pipeline:

* **`mapping_calling/`**: Contains scripts for mapping raw sequencing reads to the reference genomes (razorbill) and performing variant calling with BCFtools.
* **`pca/`**: Scripts for conducting Principal Component Analysis (PCA) using PLINK2 to investigate population genomic structure.
* **`admixture/`**: Scripts and results for the ADMIXTURE analysis used to estimate individual ancestry proportions and identify genetic clusters.
* **`Fst/`**: Scripts for calculating pairwise Fst values between populations and phylogeographic groups using VCFtools to measure genetic differentiation.
* **`het/`**: Scripts for calculating SNP-based heterozygosity using VCFtools.
* **`raxml/`**: Scripts used for constructing a maximum-likelihood phylogeny with RAxML-NG.
* **`tajima/`**: Contains scripts for calculating Tajima's D to test for deviations from the neutral theory model of evolution, performed with VCF-kit.

## Contact

For any questions regarding the code or the analysis, please contact Josefina Jorquera (josefina.jorqueraf@gmail.com) or the corresponding author, Juliana A. Vianna, at jvianna@uc.cl.
