#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SKA04 SKA04re"
for sample in $files
do
samtools sort -@ 16 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done

