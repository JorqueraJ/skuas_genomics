#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 8 -M -R '@RG\tID:DEVL1\tLB:DEVL1\tPL:ILLUMINA\tPU:skua_sur\tSM:DEVL1' $ref/alca_index $trm/DEVL1_1.fq.gz $trm/DEVL1_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/DEVL1.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:DEVL2\tLB:DEVL2\tPL:ILLUMINA\tPU:skua_sur\tSM:DEVL2' $ref/alca_index $trm/DEVL2_1.fq.gz $trm/DEVL2_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/DEVL2.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:DEVL3\tLB:DEVL3\tPL:ILLUMINA\tPU:skua_sur\tSM:DEVL3' $ref/alca_index $trm/DEVL3_1.fq.gz $trm/DEVL3_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/DEVL3.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:DEVL3\tLB:DEVL3\tPL:ILLUMINA\tPU:skua_sur\tSM:DEVL3' $ref/alca_index $trm/DEVL3re_1.fq.gz $trm/DEVL3re_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/DEVL3re.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:DEVL4\tLB:DEVL4\tPL:ILLUMINA\tPU:skua_sur\tSM:DEVL4' $ref/alca_index $trm/DEVL4_1.fq.gz $trm/DEVL4_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/DEVL4.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:DEVL5\tLB:DEVL5\tPL:ILLUMINA\tPU:skua_sur\tSM:DEVL5' $ref/alca_index $trm/DEVL5_1.fq.gz $trm/DEVL5_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/DEVL5.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:DEVL5\tLB:DEVL5\tPL:ILLUMINA\tPU:skua_sur\tSM:DEVL5' $ref/alca_index $trm/DEVL5re_1.fq.gz $trm/DEVL5re_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/DEVL5re.bam
