#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

#bwa-mem2 mem -t 16 -M -R '@RG\tID:27\tLB:27\tPL:ILLUMINA\tPU:skua_sur\tSM:27' $ref/alca_index $trm/27_1.fq.gz $trm/27_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/27.bam
#bwa-mem2 mem -t 16 -M -R '@RG\tID:51\tLB:51\tPL:ILLUMINA\tPU:skua_sur\tSM:51' $ref/alca_index $trm/51_1.fq.gz $trm/51_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/51.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:52\tLB:52\tPL:ILLUMINA\tPU:skua_sur\tSM:52' $ref/alca_index $trm/52_1.fq.gz $trm/52_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/52.bam
#bwa-mem2 mem -t 16 -M -R '@RG\tID:53\tLB:53\tPL:ILLUMINA\tPU:skua_sur\tSM:53' $ref/alca_index $trm/53_1.fq.gz $trm/53_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/53.bam
#bwa-mem2 mem -t 16 -M -R '@RG\tID:59\tLB:59\tPL:ILLUMINA\tPU:skua_sur\tSM:59' $ref/alca_index $trm/59_1.fq.gz $trm/59_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/59.bam
#bwa-mem2 mem -t 16 -M -R '@RG\tID:61\tLB:61\tPL:ILLUMINA\tPU:skua_sur\tSM:61' $ref/alca_index $trm/61_1.fq.gz $trm/61_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/61.bam
#bwa-mem2 mem -t 16 -M -R '@RG\tID:T1\tLB:T1\tPL:ILLUMINA\tPU:skua_sur\tSM:T1' $ref/alca_index $trm/T1_1.fq.gz $trm/T1_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/T1.bam


