#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_sur
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="SKLGT_10r SKLGT_18r SKLGT_2r SKLGT_3r SKLGT_8r SKLGT_9r SPS_SKL01_S83_L002 SPS_SKL02_S62_L002"

for sample in $files
do
fastp \
-i $genomas/${sample}_R1.fastq.gz \
-I $genomas/${sample}_R2.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--adapter_fasta $trimmed/all_adapters.fa \
--thread 16 \
--json 2_fastp_LGTL.json \
--html 2_fastp_LGTL.html 
done
