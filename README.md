# Genomic Introgression and Adaptation of Southern Skua Species

This repository contains the scripts and analysis pipeline for the paper "Genomic Introgression and Adaptation of Southern Seabird Species Facilitate Recent Polar Colonization" published in *Molecular Biology and Evolution*.

## About the Project

[cite_start]This study investigates the roles of genomic adaptation and introgression in the speciation process of the three southern skua species (*Stercorarius* spp.)[cite: 36, 38]. [cite_start]These seabirds have a widespread distribution across the Southern Hemisphere and a complex history of speciation[cite: 38]. [cite_start]Our genomic data from 111 individuals across 21 locations reveals that these skuas diversified around the Penultimate Glacial Period, followed by demographic expansion[cite: 39, 257]. [cite_start]We identified a directional pattern of introgression from the Antarctic continent and South America converging towards the Antarctic Peninsula[cite: 40]. [cite_start]The three species and admixed individuals show unique patterns of genes under selection, which facilitate adaptation to extreme polar conditions[cite: 41]. [cite_start]The findings suggest that introgression is a key adaptive mechanism that may help buffer species against ongoing climate change[cite: 43].

## Citation

If you use the data or code from this study, please cite the original publication:

> Jorquera J, Morales L, Ng EYX, Noll D, et al. (2025). Genomic Introgression and Adaptation of Southern Seabird Species Facilitate Recent Polar Colonization. [cite_start]*Molecular Biology and Evolution*, 42, msaf053. https://doi.org/10.1093/molbev/msaf053 [cite: 1, 6]

## Data Availability

[cite_start]Raw whole-genome sequencing reads are available in the GenBank database[cite: 912]. [cite_start]Accession numbers can be found under BioSamples[cite: 917]:
* [cite_start]SAMN38698868-SAMN38698944 [cite: 917]
* [cite_start]SAMN43185484-SAMN43185490 [cite: 917]
* [cite_start]SAMN35654692-SAMN35654709 [cite: 917]

[cite_start]All code used for the genomic analyses is available in this GitHub repository[cite: 917].

## Repository Contents

This repository is organized into folders corresponding to the major steps of the analysis pipeline:

* [cite_start]**`mapping_calling/`**: Contains scripts for mapping raw sequencing reads to the reference genomes (razorbill and kittiwake) and performing variant calling with BCFtools[cite: 784, 799].
* [cite_start]**`pca/`**: Scripts for conducting Principal Component Analysis (PCA) using PLINK2 to investigate population genomic structure[cite: 261, 806].
* [cite_start]**`admixture/`**: Scripts and results for the ADMIXTURE analysis used to estimate individual ancestry proportions and identify genetic clusters[cite: 262, 808].
* [cite_start]**`Fst/`**: Scripts for calculating pairwise Fst values between populations and phylogeographic groups using VCFtools to measure genetic differentiation[cite: 398, 823].
* [cite_start]**`het/`**: Scripts for calculating SNP-based heterozygosity using VCFtools[cite: 401, 823].
* [cite_start]**`raxml/`**: Scripts used for inferring genealogical relationships and constructing a maximum-likelihood phylogeny with RAxML-NG[cite: 278, 815].
* [cite_start]**`tajima/`**: Contains scripts for calculating Tajima's D to test for deviations from the neutral theory model of evolution, performed with VCF-kit[cite: 405, 825].

*Additional analyses detailed in the paper include demographic history reconstruction (PSMC), gene flow analysis (TreeMix), introgression detection (Dsuite), and scans for positive selection (RAiSD, XP-nSL).*

## Contact

[cite_start]For any questions regarding the code or the analysis, please contact Josefina Jorquera or the corresponding author, Juliana A. Vianna, at jvianna@uc.cl[cite: 33].
