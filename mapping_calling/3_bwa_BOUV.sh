#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:B01\tLB:B01\tPL:ILLUMINA\tPU:skua_sur\tSM:B01' $ref/alca_index $trm/B01_1.fq.gz $trm/B01_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/B01.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:B02\tLB:B02\tPL:ILLUMINA\tPU:skua_sur\tSM:B02' $ref/alca_index $trm/B02_1.fq.gz $trm/B02_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/B02.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:B04\tLB:B04\tPL:ILLUMINA\tPU:skua_sur\tSM:B04' $ref/alca_index $trm/B04_1.fq.gz $trm/B04_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/B04.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:B11\tLB:B11\tPL:ILLUMINA\tPU:skua_sur\tSM:B11' $ref/alca_index $trm/B11_1.fq.gz $trm/B11_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/B11.bam


