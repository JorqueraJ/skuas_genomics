#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_sur
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="PENSK02 ESPSK02 ESPSK03 FTAPEN02 TURSK01 TURSK04 CC02 CC03 CC04 CC05 CC07 CC08 CC09"

for sample in $files
do
fastp \
-i $genomas/${sample}_R1.fastq.gz \
-I $genomas/${sample}_R2.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--adapter_fasta $trimmed/all_adapters.fa \
--thread 16 \
--json 2_fastp_SHET.json \
--html 2_fastp_SHET.html
done
