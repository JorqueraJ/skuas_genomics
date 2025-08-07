#!/bin/bash
source activate gatk3
ref=/data2/lab2/skuas/mappeo_alca/ref
bam=/data2/lab2/skuas/mappeo_alca/bam
files="CRO17_003 CRO17_005 CRO17_006 CRO17_008 CRO17_011 CRO17_019"

for sample in $files
do

gatk -Xmx20G -T IndelRealigner \
-R $ref/GCA_008658365.1_bAlcTor1_primary_genomic.fna \
-I $bam/${sample}_dedup.bam \
-targetIntervals $bam/${sample}.realn.intervals \
-o $bam/${sample}.realign.bam \
-allowPotentiallyMisencodedQuals -S LENIENT
done
