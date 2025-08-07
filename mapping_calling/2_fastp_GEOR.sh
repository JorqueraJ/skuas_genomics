#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_sur
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="BS02 BS02re BS06 BS06re BS07 BS07re BS09 BS09re BS14 BS14re"

for sample in $files
do
fastp \
-i $genomas/${sample}_R1.fastq.gz \
-I $genomas/${sample}_R2.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--adapter_fasta $trimmed/all_adapters.fa \
--thread 16 \
--json 2_fastp_GEOR.json \
--html 2_fastp_GEOR.html 
done
