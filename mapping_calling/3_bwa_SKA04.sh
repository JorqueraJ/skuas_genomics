#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:SKA04\tLB:SKA04\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA04' $ref/alca_index $trm/SKA04_1.fq.gz $trm/SKA04_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SKA04.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:SKA04\tLB:SKA04\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA04' $ref/alca_index $trm/SKA04re_1.fq.gz $trm/SKA04re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SKA04re.bam
