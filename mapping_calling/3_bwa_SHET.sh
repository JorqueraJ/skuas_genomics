#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 16 -M -R '@RG\tID:CC02\tLB:CC02\tPL:ILLUMINA\tPU:skua_sur\tSM:CC02' $ref/alca_index $trm/CC02_1.fq.gz $trm/CC02_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC02.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC03\tLB:CC03\tPL:ILLUMINA\tPU:skua_sur\tSM:CC03' $ref/alca_index $trm/CC03_1.fq.gz $trm/CC03_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC03.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC04\tLB:CC04\tPL:ILLUMINA\tPU:skua_sur\tSM:CC04' $ref/alca_index $trm/CC04_1.fq.gz $trm/CC04_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC04.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC05\tLB:CC05\tPL:ILLUMINA\tPU:skua_sur\tSM:CC05' $ref/alca_index $trm/CC05_1.fq.gz $trm/CC05_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC05.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC07\tLB:CC07\tPL:ILLUMINA\tPU:skua_sur\tSM:CC07' $ref/alca_index $trm/CC07_1.fq.gz $trm/CC07_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC07.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC08\tLB:CC08\tPL:ILLUMINA\tPU:skua_sur\tSM:CC08' $ref/alca_index $trm/CC08_1.fq.gz $trm/CC08_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC08.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC09\tLB:CC09\tPL:ILLUMINA\tPU:skua_sur\tSM:CC09' $ref/alca_index $trm/CC09_1.fq.gz $trm/CC09_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC09.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC09\tLB:CC09\tPL:ILLUMINA\tPU:skua_sur\tSM:CC09' $ref/alca_index $trm/CC09re_1.fq.gz $trm/CC09re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC09re.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC10\tLB:CC10\tPL:ILLUMINA\tPU:skua_sur\tSM:CC10' $ref/alca_index $trm/CC10_1.fq.gz $trm/CC10_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC10.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:CC10\tLB:CC10\tPL:ILLUMINA\tPU:skua_sur\tSM:CC10' $ref/alca_index $trm/CC10re_1.fq.gz $trm/CC10re_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/CC10re.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:ESPSK02\tLB:ESPSK02\tPL:ILLUMINA\tPU:skua_sur\tSM:ESPSK02' $ref/alca_index $trm/ESPSK02_1.fq.gz $trm/ESPSK02_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/ESPSK02.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:ESPSK03\tLB:ESPSK03\tPL:ILLUMINA\tPU:skua_sur\tSM:ESPSK03' $ref/alca_index $trm/ESPSK03_1.fq.gz $trm/ESPSK03_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/ESPSK03.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:FTAPEN02\tLB:FTAPEN02\tPL:ILLUMINA\tPU:skua_sur\tSM:FTAPEN02' $ref/alca_index $trm/FTAPEN02_1.fq.gz $trm/FTAPEN02_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/FTAPEN02.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:PENSK02\tLB:PENSK02\tPL:ILLUMINA\tPU:skua_sur\tSM:PENSK02' $ref/alca_index $trm/PENSK02_1.fq.gz $trm/PENSK02_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/PENSK02.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:TURSK01\tLB:TURSK01\tPL:ILLUMINA\tPU:skua_sur\tSM:TURSK01' $ref/alca_index $trm/TURSK01_1.fq.gz $trm/TURSK01_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/TURSK01.bam
bwa-mem2 mem -t 16 -M -R '@RG\tID:TURSK04\tLB:TURSK04\tPL:ILLUMINA\tPU:skua_sur\tSM:TURSK04' $ref/alca_index $trm/TURSK04_1.fq.gz $trm/TURSK04_2.fq.gz | samtools view -bh -@ 16 -q 30 -f 0x2 > $bam/TURSK04.bam
