#!/bin/bash
source activate preSNPcalling
bam=/data2/lab2/skuas/mappeo_alca/bam
files="PENSK02 ESPSK02 ESPSK03 FTAPEN02 TURSK01 TURSK04 CC02 CC03 CC04 CC05 CC07 CC08 CC09 CC09re CC10 CC10re"
for sample in $files
do
samtools sort -@ 16 \
-o $bam/${sample}_sorted.bam \
$bam/${sample}.bam
done
