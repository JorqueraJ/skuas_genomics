#!/bin/bash
cd /data2/lab2/skuas
cat Z_chromosome_list_selection | xargs -I {} -n 1 -P 40 sh -c 'bcftools mpileup -Ou -f GCA_008658365.1_bAlcTor1_primary_genomic.fna -b Z_bam_list_out -d 5000 -q 30 -Q 30 -a "FORMAT/AD,FORMAT/DP,INFO/AD" --skip-indels -r {} --rf 2 | bcftools call -f GQ -vm -Oz -o {}.vcf.gz'




