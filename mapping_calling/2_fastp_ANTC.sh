#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_sur
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="SPS_C_01_S32_L001 SPS_C_02_S37_L001 SPS_C_03_S45_L001 SPS_C_04_S5_L001 SPS_C_05_S64_L002 SPS_C_06_S80_L002 SPS_D_02_S9_L001 SPS_D_03_S23_L001 SPS_D_04_S68_L002 SPS_D_05_S56_L002 SPS_D_06_S27_L001 SPS_D_08_S55_L002 SPS_M_01_S6_L001 SPS_M_02_S35_L001 SPS_M_03_S47_L001 SPS_M_04_S42_L001 SPS_M_05_S36_L001 SPS_M_07_S58_L002 SPS_SM1_S105_L002 SPS_SM1_S105_L003 SPS_SM3_S10_L002 SPS_SM5_S18_L002"

for sample in $files
do
fastp \
-i $genomas/${sample}_R1_001.fastq.gz \
-I $genomas/${sample}_R2_001.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--adapter_fasta $trimmed/all_adapters.fa \
--thread 16 \
--json 2_fastp_ANTC.json \
--html 2_fastp_ANTC.html 
done
