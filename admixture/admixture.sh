#Population structure inferred from ADMIXTURE analysis among all individuals.

VCF=/data2/lab2/skuas/vcf_noref
AMDX=/data2/lab2/skuas/admx
FILE="allskuas_chr_filtered4"
for file_name in ${FILE}
do
plink --vcf $VCF/${file_name}.vcf.gz \
--recode 12 --out $AMDX/${file_name} \
--allow-extra-chr \
--set-missing-var-ids @:# \
--double-id

plink --file $AMDX/${file_name} \
--indep-pairwise 50 10 0.1 \
--allow-extra-chr \
--set-missing-var-ids @:# \
--double-id \
--out $AMDX/${file_name}

plink --file $AMDX/${file_name} \
--extract $AMDX/${file_name}.prune.in \
--recode --out $AMDX/${file_name}_prunned \
--allow-extra-chr \
--set-missing-var-ids @:# \
--double-id

done


allskuas_chr_filtered4.sh

cd /data2/lab2/skuas/admx
mamba activate admixture
for K in 1 2 3 4 5 6 7
do
admixture --cv allskuas_chr_filtered4_prunned.ped $K -j10 | tee log_filtered4${K}.out
done


grep -h CV log_filtered4*.out