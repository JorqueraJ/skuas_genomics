#!/bin/bash
source activate gatk3
ref=/data2/lab2/skuas/mappeo_alca/ref
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SKMAG_10m SKMAG_11r SKMAG_13r SKMAG_15r SKMAG_3r SKMAG_5r SKMAG_6r SKMAG_9m MSK1 MSK2 HORN1 HORN2 SKBEC2 SKBEC3 SKBEC4 SKBEC5"

for sample in $files
do

gatk -Xmx20G -T IndelRealigner \
-R $ref/GCA_008658365.1_bAlcTor1_primary_genomic.fna \
-I $bam/${sample}_dedup.bam \
-targetIntervals $bam/${sample}.realn.intervals \
-o $bam/${sample}.realign.bam \
-allowPotentiallyMisencodedQuals -S LENIENT
done
