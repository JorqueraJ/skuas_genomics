#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref


bwa-mem2 mem -t 16 -M -R '@RG\tID:BS02\tLB:BS02\tPL:ILLUMINA\tPU:skua_sur\tSM:BS02' $ref/alca_index $trm/BS02_1.fq.gz $trm/BS02_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS02.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS02\tLB:BS02\tPL:ILLUMINA\tPU:skua_sur\tSM:BS02' $ref/alca_index $trm/BS02re_1.fq.gz $trm/BS02re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS02re.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS06\tLB:BS06\tPL:ILLUMINA\tPU:skua_sur\tSM:BS06' $ref/alca_index $trm/BS06_1.fq.gz $trm/BS06_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS06.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS06\tLB:BS06\tPL:ILLUMINA\tPU:skua_sur\tSM:BS06' $ref/alca_index $trm/BS06re_1.fq.gz $trm/BS06re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS06re.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS07\tLB:BS07\tPL:ILLUMINA\tPU:skua_sur\tSM:BS07' $ref/alca_index $trm/BS07_1.fq.gz $trm/BS07_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS07.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS07\tLB:BS07\tPL:ILLUMINA\tPU:skua_sur\tSM:BS07' $ref/alca_index $trm/BS07re_1.fq.gz $trm/BS07re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS07re.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS09\tLB:BS09\tPL:ILLUMINA\tPU:skua_sur\tSM:BS09' $ref/alca_index $trm/BS09_1.fq.gz $trm/BS09_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS09.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS09\tLB:BS09\tPL:ILLUMINA\tPU:skua_sur\tSM:BS09' $ref/alca_index $trm/BS09re_1.fq.gz $trm/BS09re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS09re.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS14\tLB:BS14\tPL:ILLUMINA\tPU:skua_sur\tSM:BS14' $ref/alca_index $trm/BS14_1.fq.gz $trm/BS14_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS14.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS14\tLB:BS14\tPL:ILLUMINA\tPU:skua_sur\tSM:BS14' $ref/alca_index $trm/BS14re_1.fq.gz $trm/BS14re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS14re.bam


