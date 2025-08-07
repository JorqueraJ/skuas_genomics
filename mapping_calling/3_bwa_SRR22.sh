#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:SRR22267294\tLB:SRR22267294\tPL:ILLUMINA\tPU:skua_sur\tSM:SRR22267294' $ref/alca_index $trm/SRR22267294_1.fq.gz $trm/SRR22267294_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR22267294.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:SRR22267295\tLB:SRR22267295\tPL:ILLUMINA\tPU:skua_sur\tSM:SRR22267295' $ref/alca_index $trm/SRR22267295_1.fq.gz $trm/SRR22267295_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR22267295.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:SRR22267296\tLB:SRR22267296\tPL:ILLUMINA\tPU:skua_sur\tSM:SRR22267296' $ref/alca_index $trm/SRR22267296_1.fq.gz $trm/SRR22267296_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR22267296.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:SRR22267297\tLB:SRR22267297\tPL:ILLUMINA\tPU:skua_sur\tSM:SRR22267297' $ref/alca_index $trm/SRR22267297_1.fq.gz $trm/SRR22267297_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR22267297.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:SRR22267298\tLB:SRR22267298\tPL:ILLUMINA\tPU:skua_sur\tSM:SRR22267298' $ref/alca_index $trm/SRR22267298_1.fq.gz $trm/SRR22267298_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR22267298.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:SRR22267304\tLB:SRR22267304\tPL:ILLUMINA\tPU:skua_sur\tSM:SRR22267304' $ref/alca_index $trm/SRR22267304_1.fq.gz $trm/SRR22267304_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR22267304.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:SRR22267305\tLB:SRR22267305\tPL:ILLUMINA\tPU:skua_sur\tSM:SRR22267305' $ref/alca_index $trm/SRR22267305_1.fq.gz $trm/SRR22267305_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/SRR22267305.bam
