#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_ref
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="SRR9853752 SRR9853753 SRR9853754 SRR9853825" #RISA

for sample in $files
do
fastp \
-i $genomas/${sample}_1.fastq.gz \
-I $genomas/${sample}_2.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--adapter_fasta $trimmed/adapters_nextera.fa \
--thread 16 \
--json 2_fastp_SRR98.json \
--html 2_fastp_SRR98.html
done
