#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 8 -M -R '@RG\tID:CRO17_003\tLB:CRO17_003\tPL:ILLUMINA\tPU:skua_sur\tSM:CRO17_003' $ref/alca_index $trm/CRO17_003_1.fq.gz $trm/CRO17_003_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/CRO17_003.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:CRO17_005\tLB:CRO17_005\tPL:ILLUMINA\tPU:skua_sur\tSM:CRO17_005' $ref/alca_index $trm/CRO17_005_1.fq.gz $trm/CRO17_005_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/CRO17_005.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:CRO17_006\tLB:CRO17_006\tPL:ILLUMINA\tPU:skua_sur\tSM:CRO17_006' $ref/alca_index $trm/CRO17_006_1.fq.gz $trm/CRO17_006_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/CRO17_006.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:CRO17_008\tLB:CRO17_008\tPL:ILLUMINA\tPU:skua_sur\tSM:CRO17_008' $ref/alca_index $trm/CRO17_008_1.fq.gz $trm/CRO17_008_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/CRO17_008.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:CRO17_011\tLB:CRO17_011\tPL:ILLUMINA\tPU:skua_sur\tSM:CRO17_011' $ref/alca_index $trm/CRO17_011_1.fq.gz $trm/CRO17_011_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/CRO17_011.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:CRO17_019\tLB:CRO17_019\tPL:ILLUMINA\tPU:skua_sur\tSM:CRO17_019' $ref/alca_index $trm/CRO17_019_1.fq.gz $trm/CRO17_019_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/CRO17_019.bam

