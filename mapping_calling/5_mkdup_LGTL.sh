#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam

files="SKLGT_10r SKLGT_18r SKLGT_2r SKLGT_3r SKLGT_8r SKLGT_9r SPS_SKL01_S83_L002 SPS_SKL02_S62_L002"

for sample in $files
do
picard MarkDuplicates -Xmx30G \
--INPUT $bam/${sample}_sorted.bam \
--OUTPUT $bam/${sample}_dedup.bam \
--METRICS_FILE $bam/${sample}_dedup_metrics.txt \
--REMOVE_DUPLICATES false \
--CREATE_INDEX true \
--TMP_DIR /data1/tote
done
