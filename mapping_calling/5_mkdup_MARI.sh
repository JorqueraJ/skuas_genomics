#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam

files="SKA02 SKA03 SKA05 SKA07 SKA10 SKA12"

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
