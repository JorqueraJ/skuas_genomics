#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SRR25384217 SRR25384218" 
for sample in $files
do
samtools sort -@ 30 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done
