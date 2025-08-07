#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam
files="AMS_16_035 AMS_17_002 AMS_17_004 AMS_17_011 AMS_17_014 AMS_17_019"

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
