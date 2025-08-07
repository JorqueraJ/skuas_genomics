#!/bin/bash
source activate gatk3
ref=/data2/lab2/skuas/mappeo_alca/ref
bam=/data2/lab2/skuas/mappeo_alca/bam
files="CC02 CC03 CC04 CC05 CC07 CC08 CC09m CC10m ESPSK02 ESPSK03 FTAPEN02 PENSK02 TURSK01 TURSK04"

for sample in $files
do

gatk -Xmx20G -T IndelRealigner \
-R $ref/GCA_008658365.1_bAlcTor1_primary_genomic.fna \
-I $bam/${sample}_dedup.bam \
-targetIntervals $bam/${sample}.realn.intervals \
-o $bam/${sample}.realign.bam \
-allowPotentiallyMisencodedQuals -S LENIENT
done
