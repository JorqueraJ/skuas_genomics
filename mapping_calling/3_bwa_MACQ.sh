#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua14\tLB:BS_Skua14\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua14' $ref/alca_index $trm/BS_Skua14_S22_L002_1.fq.gz $trm/BS_Skua14_S22_L002_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua14_S22_L002.bam 
bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua14\tLB:BS_Skua14\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua14' $ref/alca_index $trm/BS_Skua14_S22_L003_1.fq.gz $trm/BS_Skua14_S22_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua14_S22_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua14\tLB:BS_Skua14\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua14' $ref/alca_index $trm/BS_Skua14_S3_L003_1.fq.gz $trm/BS_Skua14_S3_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua14_S3_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua21\tLB:BS_Skua21\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua21' $ref/alca_index $trm/BS_Skua21_S13_L003_1.fq.gz $trm/BS_Skua21_S13_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua21_S13_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua21\tLB:BS_Skua21\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua21' $ref/alca_index $trm/BS_Skua21_S23_L002_1.fq.gz $trm/BS_Skua21_S23_L002_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua21_S23_L002.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua21\tLB:BS_Skua21\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua21' $ref/alca_index $trm/BS_Skua21_S23_L003_1.fq.gz $trm/BS_Skua21_S23_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua21_S23_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua32\tLB:BS_Skua32\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua32' $ref/alca_index $trm/BS_Skua32_S24_L002_1.fq.gz $trm/BS_Skua32_S24_L002_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua32_S24_L002.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua32\tLB:BS_Skua32\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua32' $ref/alca_index $trm/BS_Skua32_S24_L003_1.fq.gz $trm/BS_Skua32_S24_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua32_S24_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua32\tLB:BS_Skua32\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua32' $ref/alca_index $trm/BS_Skua32_S31_L003_1.fq.gz $trm/BS_Skua32_S31_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua32_S31_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua5\tLB:BS_Skua5\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua5' $ref/alca_index $trm/BS_Skua5_S12_L003_1.fq.gz $trm/BS_Skua5_S12_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua5_S12_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua5\tLB:BS_Skua5\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua5' $ref/alca_index $trm/BS_Skua5_S25_L002_1.fq.gz $trm/BS_Skua5_S25_L002_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua5_S25_L002.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua5\tLB:BS_Skua5\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua5' $ref/alca_index $trm/BS_Skua5_S25_L003_1.fq.gz $trm/BS_Skua5_S25_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua5_S25_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua9\tLB:BS_Skua9\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua9' $ref/alca_index $trm/BS_Skua9_S26_L002_1.fq.gz $trm/BS_Skua9_S26_L002_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua9_S26_L002.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua9\tLB:BS_Skua9\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua9' $ref/alca_index $trm/BS_Skua9_S26_L003_1.fq.gz $trm/BS_Skua9_S26_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua9_S26_L003.bam 
#bwa-mem2 mem -t 16 -M -R '@RG\tID:BS_Skua9\tLB:BS_Skua9\tPL:ILLUMINA\tPU:skua_sur\tSM:BS_Skua9' $ref/alca_index $trm/BS_Skua9_S33_L003_1.fq.gz $trm/BS_Skua9_S33_L003_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/BS_Skua9_S33_L003.bam 



