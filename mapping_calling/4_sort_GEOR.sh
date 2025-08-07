#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="BS02 BS02re BS06 BS06re BS07 BS07re BS09 BS09re BS14 BS14re"
for sample in $files
do
samtools sort -@ 16 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done
