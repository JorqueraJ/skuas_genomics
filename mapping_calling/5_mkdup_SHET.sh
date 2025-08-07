#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam

files="PENSK02 ESPSK02 ESPSK03 FTAPEN02 TURSK01 TURSK04 CC02 CC03 CC04 CC05 CC07 CC08"

for sample in $files
do
picard MarkDuplicates \
--INPUT $bam/${sample}_sorted.bam \
--OUTPUT $bam/${sample}_dedup.bam \
--METRICS_FILE $bam/${sample}_dedup_metrics.txt \
--REMOVE_DUPLICATES false \
--CREATE_INDEX true \
--ASSUME_SORT_ORDER coordinate \
--TMP_DIR /data2/lab2/skuas/mappeo_alca/bam
done
