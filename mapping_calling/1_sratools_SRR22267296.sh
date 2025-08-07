source activate sra-tools
cd /data2/lab2/skuas/genomas_sur
/opt/miniconda3/envs/sra-tools/bin/prefetch SRR22267296 && fastq-dump SRR22267296
/opt/miniconda3/envs/sra-tools/bin/fastq-dump-orig.3.0.3 --split-files SRR22267296 --gzip
