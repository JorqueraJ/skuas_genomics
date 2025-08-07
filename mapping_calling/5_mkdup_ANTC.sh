#!/bin/bash
source activate picard
bam=/data2/lab2/skuas/mappeo_alca/bam
files="SPS_C_01_S32_L001 SPS_C_02_S37_L001 SPS_C_03_S45_L001 SPS_C_04_S5_L001 SPS_C_05_S64_L002 SPS_C_06_S80_L002 SPS_D_02_S9_L001 SPS_D_03_S23_L001 SPS_D_04_S68_L002 SPS_D_05_S56_L002 SPS_D_06_S27_L001 SPS_D_08_S55_L002 SPS_M_01_S6_L001 SPS_M_02_S35_L001 SPS_M_03_S47_L001 SPS_M_04_S42_L001 SPS_M_05_S36_L001 SPS_M_07_S58_L002  SPS_SM3_S10_L002 SPS_SM5_S18_L002"

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
