
PCA=/data2/lab2/skuas/vcf_noref/z_pca_chr
VCF=/data2/lab2/skuas/vcf_noref
FILE="allskuas_chr_filtered4"

for file_name in ${FILE}
do
plink --vcf $VCF/${file_name}.vcf.gz \
--double-id \
--allow-extra-chr \
--set-missing-var-ids @:# \
--indep-pairwise 50 10 0.1 \
--out $PCA/${file_name}

plink --vcf $VCF/${file_name}.vcf.gz \
--double-id \
--allow-extra-chr \
--set-missing-var-ids @:# \
--extract $PCA/${file_name}.prune.in \
--make-bed --pca --out $PCA/${file_name}_prunned

done



