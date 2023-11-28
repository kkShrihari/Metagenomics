#!/bin/bash
# fastqc
source activate fastqc
mkdir -p fastqc2
fastqc *.fastq.gz -o fastqc2 && cd fastqc2 && conda deactivate

source activate multiqc
mkdir -p multiqc2
multiqc .. -o multiqc2 && conda deactivate && cd ..

source activate trim-galore
mkdir -p trim_result
trim_galore --paired sample2_1.fastq.gz sample2_2.fastq.gz -o trim_result -q 20 && conda deactivate && cd trim_result

source activate fastqc
mkdir -p trim_fastqc
fastqc *.fq.gz -o trim_fastqc
conda deactivate
cd ..

source activate kraken2
cd trim_result
kraken2 -db /mnt/e/Biokart/Metagenomics_fungi/Unite/ --paired sample2_1_val_1.fq.gz sample2_2_val_2.fq.gz --report sample2_report > sample2_output 
conda deactivate
mkdir -p kraken2
mv sample2_report kraken2 | mv sample2_output kraken2

