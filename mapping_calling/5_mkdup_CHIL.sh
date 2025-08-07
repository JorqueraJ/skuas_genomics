#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam

files="SKMAG_11r SKMAG_13r SKMAG_15r SKMAG_3r SKMAG_5r SKMAG_6r HORN1 HORN2 SKBEC2 SKBEC3 SKBEC4 SKBEC5 MSK1 MSK2"

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
