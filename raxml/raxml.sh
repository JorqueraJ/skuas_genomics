#Maximum likelihood phylogenetic tree of four skua taxa, using the razorbill  (Alca torda) as outgroup for rooting 

#Phylogeny RAxML Next Generation

#Filter VCF

#!/bin/bash
cd /data2/lab2/skuas/vcf
vcftools --gzvcf 1_concat_chr_nosex_ref_n111_newID_newOR.vcf.gz  \
--remove-indels \
--minQ 30 \
--min-alleles 2 \
--max-alleles 2 \
--minDP 3 \
--maxDP 100 \
--max-missing 0.9 \
--maf 0.01 \
--recode \
--recode-INFO-all \
--stdout | bgzip -@ 16 > allskuas_chr_filtered4_noref.vcf.gz

#The localities BLAN, HORN, and CHAT were excluded from this analysis due to a low number of individuals.
#The ROSS samples where excluded due to low coverage.

bcftools view -s ^CHAT1,CHAT2,CHAT3,ROSS1,ROSS2,ROSS3,ROSS4,ROSS5,ROSS6,HORN1,HORN2,BLAN1,BLAN2,BLAN3 --threads 1 -Oz -o t_n97_filtered4_ref.vcf.gz allskuas_chr_filtered4_noref.vcf.gz

#INDEX VCF
conda activate handsonVCF
tabix -p vcf t_n97_filtered4_ref.vcf.gz

# REMOVE monomorfic sites
bcftools view -c 1 --threads 16 -Oz -o n97_filtered_4_ref_mono.vcf.gz t_n97_filtered4_ref.vcf.gz

# prune

#!/bin/bash
cd /data2/lab2/skuas/raxml

plink --vcf n97_filtered_4_ref_mono.vcf.gz \
--indep-pairwise 50 10 0.1 \
--set-missing-var-ids @:# \
--double-id \
--allow-extra-chr \
--out n97_filtered_4_ref_mono

plink --vcf n97_filtered_4_ref_mono.vcf.gz \
--extract n97_filtered_4_ref_mono.prune.in \
--double-id \
--allow-extra-chr \
--set-missing-var-ids @:# \
--recode --out n97_filtered_4_ref_mono_pruned

plink --file n97_filtered_4_ref_mono_pruned \
--double-id \
--allow-extra-chr \
--set-missing-var-ids @:# \
--recode vcf \
--out n97_filtered_4_ref_mono_pruned


python vcf2phylip.py -i allskuas_chr_filtered4_noref_mono_pruned_newID.vcf -o ALCA -r

python ascbias.py -p allskuas_chr_filtered4_noref_mono_pruned_newID.min4.phy -o allskuas_chr_filtered4_noref_mono_pruned_ascbias.min4.phy 

raxml-ng --threads 60 --all --msa allskuas_chr_filtered4_noref_mono_pruned_ascbias.min4.phy --model GTR+ASC_LEWIS --tree pars{10} --bs-trees 100

