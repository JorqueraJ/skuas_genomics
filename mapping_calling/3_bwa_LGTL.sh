#!/bin/bash
source activate preSNPcalling

trm=/data2/lab2/skuas/mappeo_alca/trim
bam=/data2/lab2/skuas/mappeo_alca/bam
ref=/data2/lab2/skuas/mappeo_alca/ref

bwa-mem2 mem -t 8 -M -R '@RG\tID:SKLGT_10r\tLB:SKLGT_10r\tPL:ILLUMINA\tPU:skua_sur\tSM:SKLGT_10r' $ref/alca_index $trm/SKLGT_10r_1.fq.gz $trm/SKLGT_10r_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKLGT_10r.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKLGT_18r\tLB:SKLGT_18r\tPL:ILLUMINA\tPU:skua_sur\tSM:SKLGT_18r' $ref/alca_index $trm/SKLGT_18r_1.fq.gz $trm/SKLGT_18r_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKLGT_18r.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKLGT_2r\tLB:SKLGT_2r\tPL:ILLUMINA\tPU:skua_sur\tSM:SKLGT_2r' $ref/alca_index $trm/SKLGT_2r_1.fq.gz $trm/SKLGT_2r_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKLGT_2r.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKLGT_3r\tLB:SKLGT_3r\tPL:ILLUMINA\tPU:skua_sur\tSM:SKLGT_3r' $ref/alca_index $trm/SKLGT_3r_1.fq.gz $trm/SKLGT_3r_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKLGT_3r.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKLGT_8r\tLB:SKLGT_8r\tPL:ILLUMINA\tPU:skua_sur\tSM:SKLGT_8r' $ref/alca_index $trm/SKLGT_8r_1.fq.gz $trm/SKLGT_8r_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKLGT_8r.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SKLGT_9r\tLB:SKLGT_9r\tPL:ILLUMINA\tPU:skua_sur\tSM:SKLGT_9r' $ref/alca_index $trm/SKLGT_9r_1.fq.gz $trm/SKLGT_9r_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SKLGT_9r.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SPS_SKL01_S83_L002\tLB:SPS_SKL01_S83_L002\tPL:ILLUMINA\tPU:skua_sur\tSM:SPS_SKL01_S83_L002' $ref/alca_index $trm/SPS_SKL01_S83_L002_1.fq.gz $trm/SPS_SKL01_S83_L002_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SPS_SKL01_S83_L002.bam
bwa-mem2 mem -t 8 -M -R '@RG\tID:SPS_SKL02_S62_L002\tLB:SPS_SKL02_S62_L002\tPL:ILLUMINA\tPU:skua_sur\tSM:SPS_SKL02_S62_L002' $ref/alca_index $trm/SPS_SKL02_S62_L002_1.fq.gz $trm/SPS_SKL02_S62_L002_2.fq.gz | samtools view -bh -@ 8 -q 30 -f 0x2 > $bam/SPS_SKL02_S62_L002.bam
