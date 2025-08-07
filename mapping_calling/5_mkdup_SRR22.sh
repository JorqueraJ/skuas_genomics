#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SRR22267294 SRR22267295 SRR22267296 SRR22267297 SRR22267298 SRR22267304 SRR22267305"

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
