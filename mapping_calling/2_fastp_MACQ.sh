#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_sur
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="BS_Skua14_S22_L002 BS_Skua14_S22_L003 BS_Skua14_S3_L003 BS_Skua21_S13_L003 BS_Skua21_S23_L002 BS_Skua21_S23_L003 BS_Skua32_S24_L002 BS_Skua32_S24_L003 BS_Skua32_S31_L003 BS_Skua5_S12_L003 BS_Skua5_S25_L002 BS_Skua5_S25_L003 BS_Skua9_S26_L002 BS_Skua9_S26_L003 BS_Skua9_S33_L003"

for sample in $files
do
fastp \
-i $genomas/${sample}_R1_001.fastq.gz \
-I $genomas/${sample}_R2_001.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--adapter_fasta $trimmed/all_adapters.fa \
--thread 16 \
--json 2_fastp_MACQ.json \
--html 2_fastp_MACQ.html
done
