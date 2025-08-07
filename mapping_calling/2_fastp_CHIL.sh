#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_sur
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="SKMAG_10r SKMAG_10re SKMAG_11r SKMAG_13r SKMAG_15r SKMAG_3r SKMAG_5r SKMAG_6r SKMAG_9r SKMAG_9re HORN1 HORN2 SKBEC2 SKBEC3 SKBEC4 SKBEC5 MSK1 MSK2"

for sample in $files
do
fastp \
-i $genomas/${sample}_R1.fastq.gz \
-I $genomas/${sample}_R2.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--adapter_fasta $trimmed/all_adapters.fa \
--thread 16 \
--json 2_fastp_CHIL.json \
--html 2_fastp_CHIL.html
done
