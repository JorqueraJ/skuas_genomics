#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="BS_Skua14_S22_L002 BS_Skua14_S22_L003 BS_Skua14_S3_L003 BS_Skua21_S13_L003 BS_Skua21_S23_L002 BS_Skua21_S23_L003 BS_Skua32_S24_L002 BS_Skua32_S24_L003 BS_Skua32_S31_L003 BS_Skua5_S12_L003 BS_Skua5_S25_L002 BS_Skua5_S25_L003 BS_Skua9_S26_L002 BS_Skua9_S26_L003 BS_Skua9_S33_L003"
for sample in $files
do
samtools sort -@ 16 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done
