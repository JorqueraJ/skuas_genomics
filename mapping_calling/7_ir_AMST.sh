#!/bin/bash
source activate gatk3
ref=/data2/lab2/skuas/mappeo_alca/ref
bam=/data2/lab2/skuas/mappeo_alca/bam
files="AMS_16_035 AMS_17_002 AMS_17_004 AMS_17_011 AMS_17_014 AMS_17_019"

for sample in $files
do

gatk  -Xmx20G -T IndelRealigner \
-R $ref/GCA_008658365.1_bAlcTor1_primary_genomic.fna \
-I $bam/${sample}_dedup.bam \
-targetIntervals $bam/${sample}.realn.intervals \
-o $bam/${sample}.realign.bam \
-allowPotentiallyMisencodedQuals -S LENIENT
done
