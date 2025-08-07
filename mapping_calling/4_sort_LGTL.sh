#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SKLGT_10r SKLGT_18r SKLGT_2r SKLGT_3r SKLGT_8r SKLGT_9r SPS_SKL01_S83_L002 SPS_SKL02_S62_L002"
for sample in $files
do
samtools sort -@ 16 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done
