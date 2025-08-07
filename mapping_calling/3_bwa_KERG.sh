#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 8 -M -R '@RG\tID:KES1\tLB:KES1\tPL:ILLUMINA\tPU:skua_sur\tSM:KES1' $ref/alca_index $trm/KES1_1.fq.gz $trm/KES1_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/KES1.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:KES1\tLB:KES1\tPL:ILLUMINA\tPU:skua_sur\tSM:KES1' $ref/alca_index $trm/KES1re_1.fq.gz $trm/KES1re_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/KES1re.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:KES2\tLB:KES2\tPL:ILLUMINA\tPU:skua_sur\tSM:KES2' $ref/alca_index $trm/KES2_1.fq.gz $trm/KES2_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/KES2.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:KES2\tLB:KES2\tPL:ILLUMINA\tPU:skua_sur\tSM:KES2' $ref/alca_index $trm/KES2re_1.fq.gz $trm/KES2re_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/KES2re.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:KES3\tLB:KES3\tPL:ILLUMINA\tPU:skua_sur\tSM:KES3' $ref/alca_index $trm/KES3_1.fq.gz $trm/KES3_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/KES3.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:KES3\tLB:KES3\tPL:ILLUMINA\tPU:skua_sur\tSM:KES3' $ref/alca_index $trm/KES3re_1.fq.gz $trm/KES3re_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/KES3re.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:KES4\tLB:KES4\tPL:ILLUMINA\tPU:skua_sur\tSM:KES4' $ref/alca_index $trm/KES4_1.fq.gz $trm/KES4_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/KES4.bam

