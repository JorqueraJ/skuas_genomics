#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:AMS_16_035\tLB:AMS_16_035\tPL:ILLUMINA\tPU:skua_sur\tSM:AMS_16_035' $ref/alca_index $trm/AMS_16_035_1.fq.gz $trm/AMS_16_035_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/AMS_16_035.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:AMS_17_002\tLB:AMS_17_002\tPL:ILLUMINA\tPU:skua_sur\tSM:AMS_17_002' $ref/alca_index $trm/AMS_17_002_1.fq.gz $trm/AMS_17_002_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/AMS_17_002.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:AMS_17_004\tLB:AMS_17_004\tPL:ILLUMINA\tPU:skua_sur\tSM:AMS_17_004' $ref/alca_index $trm/AMS_17_004_1.fq.gz $trm/AMS_17_004_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/AMS_17_004.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:AMS_17_011\tLB:AMS_17_011\tPL:ILLUMINA\tPU:skua_sur\tSM:AMS_17_011' $ref/alca_index $trm/AMS_17_011_1.fq.gz $trm/AMS_17_011_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/AMS_17_011.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:AMS_17_014\tLB:AMS_17_014\tPL:ILLUMINA\tPU:skua_sur\tSM:AMS_17_014' $ref/alca_index $trm/AMS_17_014_1.fq.gz $trm/AMS_17_014_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/AMS_17_014.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:AMS_17_019\tLB:AMS_17_019\tPL:ILLUMINA\tPU:skua_sur\tSM:AMS_17_019' $ref/alca_index $trm/AMS_17_019_1.fq.gz $trm/AMS_17_019_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/AMS_17_019.bam






