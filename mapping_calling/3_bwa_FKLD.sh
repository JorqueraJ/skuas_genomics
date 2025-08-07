#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 8 -M -R '@RG\tID:NWI18_005\tLB:NWI18_005\tPL:ILLUMINA\tPU:skua_sur\tSM:NWI18_005' $ref/alca_index $trm/NWI18_005_1.fq.gz $trm/NWI18_005_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/NWI18_005.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:NWI18_006\tLB:NWI18_006\tPL:ILLUMINA\tPU:skua_sur\tSM:NWI18_006' $ref/alca_index $trm/NWI18_006_1.fq.gz $trm/NWI18_006_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/NWI18_006.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:NWI18_013\tLB:NWI18_013\tPL:ILLUMINA\tPU:skua_sur\tSM:NWI18_013' $ref/alca_index $trm/NWI18_013_1.fq.gz $trm/NWI18_013_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/NWI18_013.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:NWI18_015\tLB:NWI18_015\tPL:ILLUMINA\tPU:skua_sur\tSM:NWI18_015' $ref/alca_index $trm/NWI18_015_1.fq.gz $trm/NWI18_015_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/NWI18_015.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:NWI18_016\tLB:NWI18_016\tPL:ILLUMINA\tPU:skua_sur\tSM:NWI18_016' $ref/alca_index $trm/NWI18_016_1.fq.gz $trm/NWI18_016_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/NWI18_016.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:NWI18_019\tLB:NWI18_019\tPL:ILLUMINA\tPU:skua_sur\tSM:NWI18_019' $ref/alca_index $trm/NWI18_019_1.fq.gz $trm/NWI18_019_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/NWI18_019.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:BLAN1\tLB:BLAN1\tPL:ILLUMINA\tPU:skua_sur\tSM:BLAN1' $ref/alca_index $trm/BLAN1_1.fq.gz $trm/BLAN1_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/BLAN1.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:BLAN4\tLB:BLAN4\tPL:ILLUMINA\tPU:skua_sur\tSM:BLAN4' $ref/alca_index $trm/BLAN4_1.fq.gz $trm/BLAN4_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/BLAN4.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:BLAN5\tLB:BLAN5\tPL:ILLUMINA\tPU:skua_sur\tSM:BLAN5' $ref/alca_index $trm/BLAN5_1.fq.gz $trm/BLAN5_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/BLAN5.bam
