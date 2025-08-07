#!/bin/bash
source activate preSNPcalling
genomas=/data2/lab2/skuas/genomas_sur
trimmed=/data2/lab2/skuas/mappeo_alca/trim

files="SRR22267294 SRR22267295 SRR22267296 SRR22267297 SRR22267298 SRR22267304 SRR22267305"

for sample in $files
do
fastp \
-i $genomas/${sample}_1.fastq.gz \
-I $genomas/${sample}_2.fastq.gz \
-o $trimmed/${sample}_1.fq.gz \
-O $trimmed/${sample}_2.fq.gz \
--qualified_quality_phred 30 \
--unqualified_percent_limit 30 \
--length_required 30 \
--trim_poly_g \
--adapter_fasta $trimmed/all_adapters.fa \
--thread 16 \
--json 2_fastp_SRR22.json \
--html 2_fastp_SRR22.html
done
