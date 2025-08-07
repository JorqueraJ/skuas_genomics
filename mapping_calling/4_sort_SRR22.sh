#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SRR22267294 SRR22267295 SRR22267296 SRR22267297 SRR22267298 SRR22267304 SRR22267305" 
for sample in $files
do
samtools sort -@ 16 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done
