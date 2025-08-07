#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA02\tLB:SKA02\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA02' $ref/alca_index $trm/SKA02_1.fq.gz $trm/SKA02_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA02.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA03\tLB:SKA03\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA03' $ref/alca_index $trm/SKA03_1.fq.gz $trm/SKA03_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA03.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA04\tLB:SKA04\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA04' $ref/alca_index $trm/SKA04_1.fq.gz $trm/SKA04_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA04.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA04\tLB:SKA04\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA04' $ref/alca_index $trm/SKA04re_1.fq.gz $trm/SKA04re_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA04re.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA05\tLB:SKA05\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA05' $ref/alca_index $trm/SKA05_1.fq.gz $trm/SKA05_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA05.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA07\tLB:SKA07\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA07' $ref/alca_index $trm/SKA07_1.fq.gz $trm/SKA07_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA07.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA10\tLB:SKA10\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA10' $ref/alca_index $trm/SKA10_1.fq.gz $trm/SKA10_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA10.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKA12\tLB:SKA12\tPL:ILLUMINA\tPU:skua_sur\tSM:SKA12' $ref/alca_index $trm/SKA12_1.fq.gz $trm/SKA12_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKA12.bam
