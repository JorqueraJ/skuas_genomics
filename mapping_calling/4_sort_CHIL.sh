#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SKMAG_10r SKMAG_10re SKMAG_11r SKMAG_13r SKMAG_15r SKMAG_3r SKMAG_5r SKMAG_6r SKMAG_9r SKMAG_9re HORN1 HORN2 SKBEC2 SKBEC3 SKBEC4 SKBEC5 MSK1 MSK2"
for sample in $files
do
samtools sort -@ 16 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done
