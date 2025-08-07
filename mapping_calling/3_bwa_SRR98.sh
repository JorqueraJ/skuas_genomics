#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:RISSA\tLB:RISSA\tPL:ILLUMINA\tPU:skua_sur\tSM:RISSA' $ref/alca_index $trm/SRR9853752_1.fq.gz $trm/SRR9853752_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR9853752.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:RISSA\tLB:RISSA\tPL:ILLUMINA\tPU:skua_sur\tSM:RISSA' $ref/alca_index $trm/SRR9853753_1.fq.gz $trm/SRR9853753_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR9853753.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:RISSA\tLB:RISSA\tPL:ILLUMINA\tPU:skua_sur\tSM:RISSA' $ref/alca_index $trm/SRR9853754_1.fq.gz $trm/SRR9853754_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR9853754.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:RISSA\tLB:RISSA\tPL:ILLUMINA\tPU:skua_sur\tSM:RISSA' $ref/alca_index $trm/SRR9853825_1.fq.gz $trm/SRR9853825_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR9853825.bam
