#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:ALCA\tLB:ALCA\tPL:ILLUMINA\tPU:skua_sur\tSM:ALCA' $ref/alca_index $trm/SRR25384210_1.fq.gz $trm/SRR25384210_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR25384210.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:ALCA\tLB:ALCA\tPL:ILLUMINA\tPU:skua_sur\tSM:ALCA' $ref/alca_index $trm/SRR25384211_1.fq.gz $trm/SRR25384211_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR25384211.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:ALCA\tLB:ALCA\tPL:ILLUMINA\tPU:skua_sur\tSM:ALCA' $ref/alca_index $trm/SRR25384217_1.fq.gz $trm/SRR25384217_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR25384217.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:ALCA\tLB:ALCA\tPL:ILLUMINA\tPU:skua_sur\tSM:ALCA' $ref/alca_index $trm/SRR25384218_1.fq.gz $trm/SRR25384218_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR25384218.bam
