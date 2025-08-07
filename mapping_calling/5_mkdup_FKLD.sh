#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam

files="NWI18_005 NWI18_006 NWI18_013 NWI18_015 NWI18_016 NWI18_019 BLAN1 BLAN4 BLAN5"

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
