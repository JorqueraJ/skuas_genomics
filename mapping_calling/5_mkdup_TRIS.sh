#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam

files="27 51 52 53 59 61 T1"

for sample in $files
do
picard MarkDuplicates -Xmx20G \
--INPUT $bam/${sample}_sorted.bam \
--OUTPUT $bam/${sample}_dedup.bam \
--METRICS_FILE $bam/${sample}_dedup_metrics.txt \
--REMOVE_DUPLICATES false \
--CREATE_INDEX true \
--TMP_DIR /data1/tote
done
